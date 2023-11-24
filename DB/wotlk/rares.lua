local _, addon = ...
local locale = GetLocale()

if locale == "enUS" or locale == "enGB" then

addon.rares = {
    ["Mulgore"] = {
        "Enforcer Emilgund", "Ghost Howl", "Mazzranache", "Sister Hatelash",
        "Snagglespear", "The Rake"
    },
    ["Durotar"] = {
        "Captain Flat Tusk", "Death Flayer", "Felweaver Scornn",
        "Geolord Mottle", "Warlord Kolkanis", "Watch Commander Zalaphil"
    },
    ["Teldrassil"] = {
        "Blackmoss the Fetid", "Duskstalker", "Fury Shelda", "Grimmaw",
        "Threggil", "Uruson"
    },
    ["Darkshore"] = {
        "Carnivous the Breaker", "Firecaller Radison", "Flagglemurk the Cruel",
        "Lady Moongazer", "Lady Vespira", "Licillin", "Lord Sinslayer",
        "Shadowclaw", "Strider Clutchmother"
    },
    ["Stonetalon Mountains"] = {
        "Brother Ravenoak", "Foreman Rigger", "Nal'taszar",
        "Pridewing Patriarch", "Sentinel Amarassan", "Sister Riven",
        "Sorrow Wing", "Taskmaster Whipfang", "Vengeful Ancient"
    },
    ["Ashenvale"] = {
        "Akkrilus", "Apothecary Falthis", "Branch Snapper", "Eck'alom",
        "Lady Vespia", "Mist Howler", "Mugglefin", "Oakpaw", "Prince Raze",
        "Rorgish Jowl", "Terrowulf Packlord", "Ursol'lok"
    },
    ["The Barrens"] = {
        "Trigore the Lasher", "Aean Swiftriver", "Ambassador Bloodrage",
        "Azzere the Skyblade", "Brokespear", "Brontus",
        "Captain Gerogg Hammertoe", "Digger Flameforge", "Dishu",
        "Elder Mystic Razorsnout", "Engineer Whirleygig", "Foreman Grills",
        "Geopriest Gukk'rok", "Gesharahan", "Hagg Taurenbane",
        "Hannah Bladeleaf", "Heggin Stonewhisker", "Humar the Pridelord",
        "Malgin Barleybrew", "Marcus Bel", "Rathorian", "Rocklance",
        "Silithid Harvester", "Sister Rathtalon", "Sludge Beast",
        "Snort the Heckler", "Stonearm", "Swiftmane", "Swinegart Spearhide",
        "Takk the Leaper", "Thora Feathermoon", "Thunderstomp"
    },
    ["Thousand Needles"] = {
        "Achellios the Banished", "Gibblesnik", "Harb Foulmountain",
        "Heartrazor", "Ironeye the Invincible", "Silithid Ravager", "Vile Sting"
    },
    ["Desolace"] = {
        "Accursed Slitherblade", "Crusty", "Cursed Centaur", "Giggler",
        "Hissperak", "Kaskk", "Prince Kellen"
    },
    ["Tanaris"] = {
        "Bone Witch", "Cyclok the Mad", "Greater Firebird",
        "Haarka the Ravenous", "Jin'Zallah the Sandbringer", "Kregg Keelhaul",
        "Lumbering Horror", "Murderous Blisterpaw", "Omgorn the Lost",
        "Soriid the Devourer", "Spirit of the Damned", "Warleader Krazzilak"
    },
    ["Felwood"] = {
        "Alshirr Banebreath", "Death Howl", "Dessecus", "Immolatus", "Mongress",
        "Olm the Wise", "Ragepaw", "The Ongar"
    },
    ["Azshara"] = {
        "Antilos", "Bone Witch", "Gatekeeper Rageroar", "General Fangferror",
        "Lady Sesspira", "Lumbering Horror", "Magister Hawkhelm",
        "Master Feardred", "Monnos the Elder", "Scalebeard",
        "Spirit of the Damned", "The Evalcharr", "Varo'then's Ghost"
    },
    ["Un'Goro Crater"] = {
        "Clutchmother Zavas", "Gruff", "King Mosh", "Ravasaur Matriarch",
        "Uhk'loc"
    },
    ["Silithus"] = {
        "Gretheer", "Grubthor", "Huricanian", "Krellack", "Lapress",
        "Rex Ashil", "Setis", "Twilight Lord Everun", "Zora"
    },
    ["Feralas"] = {
        "Mushgog", "Skarr the Unbreakable", "The Razza", "Antilus the Soarer",
        "Arash-ethis", "Bloodroar the Stalker", "Diamond Head",
        "Gnarl Leafbrother", "Lady Szallah", "Old Grizzlegut", "Qirot",
        "Snarler"
    },
    ["Winterspring"] = {
        "Azurous", "Bone Witch", "General Colbatann", "Grizzle Snowpaw",
        "Kashoch the Reaver", "Lady Hederine", "Lumbering Horror",
        "Mezzir the Howler", "Rak'shiri", "Spirit of the Damned"
    },
    ["Dustwallow Marsh"] = {
        "Brimgore", "Burgle Eye", "Darkmist Widow", "Dart",
        "Drogoth the Roamer", "Hayoc", "Lord Angler", "Oozeworm", "Ripscale",
        "The Rot"
    },
    ["Elwynn Forest"] = {
        "Fedfennel", "Gruff Swiftbite", "Morgaine the Sly", "Mother Fang",
        "Narg the Taskmaster", "Thuros Lightfingers"
    },
    ["Dun Morogh"] = {
        "Bjarn", "Edan the Howler", "Gibblewilt", "Great Father Arctikus",
        "Hammerspine", "Timber"
    },
    ["Tirisfal Glades"] = {
        "Bayne", "Deeb", "Farmer Solliden", "Fellicent's Shade", "Lost Soul",
        "Muad", "Ressan the Needler", "Sri'skulk", "Tormented Spirit"
    },
    ["Westfall"] = {
        "Brainwashed Noble", "Marisa du'Paige", "Brack", "Foe Reaper 4000",
        "Leprithus", "Master Digger", "Sergeant Brashclaw", "Slark", "Vultros"
    },
    ["Loch Modan"] = {
        "Boss Galgosh", "Emogg the Crusher", "Grizlak", "Large Loch Crocolisk",
        "Lord Condar", "Magosh", "Shanda the Spinner"
    },
    ["Silverpine Forest"] = {
        "Dalaran Spellscribe", "Gorefang", "Krethis Shadowspinner",
        "Old Vicejaw", "Ravenclaw Regent", "Rot Hide Bruiser", "Snarlmane"
    },
    ["Redridge Mountains"] = {
        "Boulderheart", "Chatter", "Kazon", "Ribchaser", "Rohh the Silent",
        "Seeker Aqualon", "Snarlflare", "Squiddic", "Volchan"
    },
    ["Duskwood"] = {
        "Commander Felstrom", "Fenros", "Lord Malathrom", "Lupos",
        "Naraxis", "Nefaru"
    },
    ["Wetlands"] = {
        "Dragonmaw Battlemaster", "Garneg Charskull", "Gnawbone", "Leech Widow",
        "Ma'ruk Wyrmscale", "Mirelow", "Razormaw Matriarch", "Sludginn"
    },
    ["Hillsbrad Foothills"] = {
        "Big Samras", "Creepthess", "Lady Zephris", "Narillasanz", "Ro'Bark",
        "Scargil", "Tamra Stormpike"
    },
    ["Alterac Mountains"] = {
        "Araga", "Cranky Benj", "Gravis Slipknot", "Jimmy the Bleeder",
        "Lo'Grosh", "Narillasanz", "Skhowl", "Stone Fury"
    },
    ["Arathi Highlands"] = {
        "Darbel Montrose", "Foulbelly", "Geomancer Flintdagger", "Kovork",
        "Molok the Crusher", "Nimar the Slayer", "Prince Nazjak",
        "Ruul Onestone", "Singer", "Zalas Witherbark"
    },
    ["Swamp of Sorrows"] = {
        "Fingat", "Gilmorian", "Lord Captain Wyrmak", "Lost One Chieftain",
        "Lost One Cook", "Molt Thorn"
    },
    ["Badlands"] = {
        "Digmaster Shovelphlange", "7:XT", "Anathemus", "Barnabus",
        "Broken Tooth", "Rumbler", "Shadowforge Commander", "Siege Golem",
        "War Golem", "Zaricotl"
    },
    ["The Hinterlands"] = {
        "Grimungous", "Ironback", "Jalinde Summerdrake",
        "Mith'rethis the Enchanter", "Old Cliff Jumper", "Razortalon",
        "Retherokk the Berserker", "The Reak", "Witherheart the Stalker",
        "Zul'arek Hatefowler"
    },
    ["Stranglethorn Vale"] = {
        "Gluggle", "High Priestess Hai'watna", "Kurmokk", "Lord Sakrasis",
        "Rippa", "Roloch", "Scale Belly", "Scarshield Quartermaster",
        "Verifonix"
    },
    ["Searing Gorge"] = {
        "Faulty War Golem", "Highlord Mastrogonde", "Rekk'tilac", "Scald",
        "Shleipnarr", "Slave Master Blackheart", "Smoldar"
    },
    ["Western Plaguelands"] = {
        "Foreman Jerris", "Foreman Marcrid", "Foulmane", "Lord Maldazzar",
        "Putridius", "Scarlet Executioner", "Scarlet High Clerist",
        "Scarlet Interrogator", "Scarlet Judge", "Scarlet Smith", "The Husk"
    },
    ["Burning Steppes"] = {
        "Bone Witch", "Deathmaw", "Gorgon'och", "Gruklash", "Hahk'Zor",
        "Hematos", "Lumbering Horror", "Malfunctioning Reaver",
        "Spirit of the Damned", "Terrorspark", "Thauris Balgarr", "Volchan"
    },
    ["Eastern Plaguelands"] = {
        "Bone Witch", "Deathspeaker Selendre", "Duggan Wildhammer",
        "Gish the Unmoving", "Hed'mush the Rotting", "High General Abbendis",
        "Lord Darkscythe", "Lumbering Horror", "Nerubian Overseer",
        "Ranger Lord Hawkspear", "Spirit of the Damned", "Warlord Thresh'jin",
        "Zul'Brin Warpbranch"
    },
    ["Blasted Lands"] = {
        "Akubar the Seer", "Bone Witch", "Clack the Reaver", "Deatheye",
        "Dreadscorn", "Grunter", "Lumbering Horror", "Magronos the Unyielding",
        "Mojo the Twisted", "Ravage", "Spirit of the Damned", "Spiteflayer"
    },
    ["Eversong Woods"] = {"Eldinarcus", "Tregla"},
    ["Bloodmyst Isle"] = {"Fenissa the Assassin"},
    ["Ghostlands"] = {"Dr. Whitherlimb"},
    ["Zangarmarsh"] = {"Bog Lurker", "Coilfang Emissary", "Marticar"},
    ["Hellfire Peninsula"] = {
        "Fulgorge", "Mekthorg the Wild", "Vorakem Doomspeaker"
    },
    ["Terokkar Forest"] = {"Crippler", "Doomsayer Jurim", "Hawkbane", "Okrek"},
    ["Nagrand"] = {"Bro'Gaz the Clanless", "Goretooth", "Voidhunter Yar"},
    ["Blade's Edge Mountains"] = {"Hemathion", "Morcrush", "Speaker Mar'grom"},
    ["Netherstorm"] = {
        "Chief Engineer Lorthander", "Ever-Core the Punisher", "Nuramoc"
    },
    ["Shadowmoon Valley"] = {
        "Ambassador Jerrikar", "Collidus the Warp-Watcher", "Kraator"
    },
    ["Howling Fjord"] = {
        "King Ping", "Perobas the Bloodthirster", "Vigdis the War Maiden"
    },
    ["Borean Tundra"] = {"Fumblub Gearwind", "Icehorn", "Old Crystalbark"},
    ["Grizzly Hills"] = {
        "Arcturis", "Grocklar", "Seething Hate", "Syreian the Bonecarver"
    },
    ["Zul'Drak"] = {"Gondria", "Griegen", "Terror Spinner", "Zul'drak Sentinel"},
    ["Dragonblight"] = {
        "Crazed Indu'le Survivor", "Scarlet Highlord Daion", "Tukemuth"
    },
    ["Sholazar Basin"] = {"Aotona", "King Krush", "Loque'nahak"},
    ["The Storm Peaks"] = {
        "Dirkee", "Skoll", "Time-Lost Proto Drake", "Vyragosa"
    },
    ["Icecrown"] = {
        "High Thane Jorfus", "Hildana Deathstealer", "Putridus the Ancient"
    },
    ["The Deadmines"] = {
        "Brainwashed Noble", "Marisa du'Paige", "Miner Johnson"
    },
    ["Wailing Caverns"] = {"Deviate Faerie Dragon"},
    ["Shadowfang Keep"] = {"Deathsworn Captain"},
    ["The Stockade"] = {"Bruegal Ironknuckle"},
    ["Gnomeregan"] = {"Dark Iron Ambassador"},
    ["Razorfen Kraul"] = {
        "Blind Hunter", "Earthcaller Halmgar", "Razorfen Spearhide"
    },
    ["Scarlet Monastery"] = {
        "Azshir the Sleepless", "Fallen Champion", "Ironspine"
    },
    ["Maraudon"] = {"Meshlok the Harvester"},
    ["Dire Maul"] = {"Lord Hel'nurath", "Tsu'zee"},
    ["Zul'Farrak"] = {"Dustwraith", "Sandarr Dunereaver", "Zerillis"},
    ["Stratholme"] = {"Hearthsinger Forresten", "Skul", "Stonespine"},
    ["Blackrock Depths"] = {
        "Panzor the Invincible", "Pyromancer Loregrain", "Verek",
        "Warder Stilgiss"
    },
    ["Blackrock Spire"] = {
        "Bannok Grimaxe", "Burning Felguard", "Crystal Fang", "Ghok Bashguud",
        "Spirestone Battle Lord", "Spirestone Butcher", "Spirestone Lord Magus",
        "Goraluk Anvilcrack", "Jed Runewatcher"
    }
}


elseif locale == "deDE" then

addon.rares = {
    ["Mulgore"] = {
        "Vollstrecker Emilgund", "Geistheuler", "Mazzranache", "Schwester Hasspeitsche",
        "Stummelspeer", "Der Kratzer"
    },
    ["Durotar"] = {
        "Hauptmann Stumpfhauer", "Todesschinder", "Höllenwirker Hoohn",
        "Geofürst Sprenkel", "Kriegsherr Kolkanis", "Unteroffizier Curtis"
    },
    ["Teldrassil"] = {
        "Schwarzmoos der Stinker", "Dämmerpirscher", "Furie Shelda", "Grimmtatze",
        "Threggil", "Uruson"
    },
    ["Darkshore"] = {
        "Carnivous der Zerstörer", "Feuerrufer Radison", "Platsch der Grausame",
        "Lady Mondblick", "Lady Vespira", "Licillin", "Lord Sündenbrecher",
        "Schattenklaue", "Schreitergelegemutter"
    },
    ["Stonetalon Mountains"] = {
        "Bruder Rabeneiche", "Großknecht Rigger", "Nal'taszar",
        "Prachtschwingenpatriarch", "Schildwache Amarassan", "Schwester Sichelschwinge",
        "Trauerschwinge", "Zuchtmeister Peitschzahn", "Rachsüchtiges Urtum"
    },
    ["Ashenvale"] = {
        "Akkrilus", "Apotheker Falthis", "Astschnapper", "Eck'alom",
        "Lady Vespia", "Nebelheuler", "Muggelflosse", "Knurrtatze", "Prinz Schleifer",
        "Grummelkehle", "Terrowulfrudelführer", "Ursol'lok"
    },
    ["The Barrens"] = {
        "Trigore der Peitscher", "Aean Flinkbach", "Botschafter Blutzorn",
        "Azzere die Himmelsklinge", "Bruchspeer", "Brontus",
        "Hauptmann Gerogg Hammerzeh", "Buddler Flammenschmied", "Dishu",
        "Alte Mystikerin Grimmschnauze", "Ingenieur Wirbelgig", "Großknecht Grills",
        "Geopriester Gukk'rok", "Gesharahan", "Hagg Taurenfluch",
        "Hannah Messerblatt", "Heggin Steinbart", "Humar der Rudellord",
        "Malgin Gerstenbräu", "Marcus Bel", "Rathorian", "Felslanze",
        "Silithidernter", "Schwester Wildkralle", "Schlickanomalie",
        "Snort der Spucker", "Steinarm", "Flinkmähne", "Speerträger Schweingart",
        "Takk der Springer", "Thora Mondfeder", "Donnerstampfer"
    },
    ["Thousand Needles"] = {
        "Achellios der Verbannte", "Gibblesnik", "Harb Faulberg",
        "Klingenherz", "Eisenauge der Unbesiegbare", "Krkk'kx", "Übelstich"
    },
    ["Desolace"] = {
        "Verfluchter der Zackenkämme", "Krusti", "Verfluchter Zentaur", "Kicherer",
        "Hissperak", "Kaskk", "Prinz Kellen"
    },
    ["Tanaris"] = {
        "Knochenhexe", "Cyclok der Irre", "Glutschwinge",
        "Haarka der Gefräßige", "Jin'Zallah der Sandbringer", "Kregg Kielhol",
        "Schwerfälliger Schrecken", "Mordlustige Eiterpfote", "Omgorn der Verirrte",
        "Soriid der Verschlinger", "Geist der Verdammten", "Kriegsanführer Krazzilak"
    },
    ["Felwood"] = {
        "Alshirr Teufelsodem", "Todesheuler", "Moosmannus", "Korruptus", "Mongress",
        "Olm der Weise", "Wutpranke", "Der Ongar"
    },
    ["Azshara"] = {
        "Antilos", "Knochenhexe", "Torwächter Donnerschrei", "General Fangferror",
        "Lady Sesspira", "Schwerfälliger Schrecken", "Magister Falkhelm",
        "Meister Gräuelbart", "Monnos der Älteste", "Schuppenbart",
        "Geist der Verdammten", "Evalcharr", "Varo'thens Geist"
    },
    ["Un'Goro Crater"] = {
        "Gelegemutter Zavas", "Gruff", "König Mosh", "Ravasaurusmatriarchin",
        "Uhk'loc"
    },
    ["Silithus"] = {
        "Gretheer", "Grubthor", "Hurrikanus", "Krellack", "Lapress",
        "Rex Ashil", "Setis", "Zwielichtfürst Everun", "Zora"
    },
    ["Feralas"] = {
        "Mushgog", "Skarr der Gebrochene", "Der Razza", "Antilus der Aufsteiger",
        "Arash-ethis", "Blutschrei der Pirscher", "Diamantenkopf",
        "Laubbruder Knarz", "Lady Szallah", "Silbergrimm der Weise", "Qirot",
        "Knurrer"
    },
    ["Winterspring"] = {
        "Azurous", "Knochenhexe", "General Colbatann", "Grizzel Schneepfote",
        "Kashoch der Häscher", "Lady Hederine", "Schwerfälliger Schrecken",
        "Mezzir der Heuler", "Rak'shiri", "Geist der Verdammten"
    },
    ["Dustwallow Marsh"] = {
        "Schwefelblut", "Schwarzauge", "Graunebelwitwe", "Pfeil",
        "Drogoth der Wanderer", "Hayoc", "Lord Angler", "Schlammwurm", "Reißerschuppe",
        "Der Faulende"
    },
    ["Elwynn Forest"] = {
        "Fedfennel", "Gruff Schnappflink", "Morgaine die Verschlagene", "Giftzahnbrutmutter",
        "Narg der Zuchtmeister", "Thuros Flinkfinger"
    },
    ["Dun Morogh"] = {
        "Bjarn", "Edan der Heuler", "Frickelwelk", "Altvater Arktikus",
        "Baumfaust", "Holzkopf"
    },
    ["Tirisfal Glades"] = {
        "Bayne", "Deeb", "Bauer Solliden", "Fellicents Schemen", "Verirrte Seele",
        "Muad", "Ressan der Aufstachler", "Sri'skulk", "Gepeinigter Geist"
    },
    ["Westfall"] = {
        "Manipulierter Adliger", "Marisa du'Paige", "Brack", "Feindschnitter 4000",
        "Leprithus", "Meisterbuddler", "Unteroffizier Geiferkralle", "Slark", "Vultros"
    },
    ["Loch Modan"] = {
        "Boss Galgosh", "Emogg der Zermalmer", "Kubb", "Gosh-Haldir",
        "Lord Condar", "Magosh", "Shanda die Weberin"
    },
    ["Silverpine Forest"] = {
        "Zauberschreiber von Mühlenbern", "Blutmaul", "Krethis Schattennetz",
        "Zwingenkiefer", "Regent von Rabenklaue", "Haudrauf der Moderfelle", "Knurrmähne"
    },
    ["Redridge Mountains"] = {
        "Felsenherz", "Chatter", "Kazon", "Rippenbrecher", "Rohh der Schweigsame",
        "Sucher Aqualon", "Fletschzahn", "Kalmarrik", "Volchan"
    },
    ["Duskwood"] = {
        "Kommandant Felstrom", "Fenros", "Lord Malathrom", "Lupos",
        "Naraxis", "Nefaru"
    },
    ["Wetlands"] = {
        "Kampfmeister des Drachenmals", "Garneg Brandschädel", "Knochennager", "Egelwitwe",
        "Ma'ruk Wyrmschuppe", "Brülmor", "Scharfzahnmatriarchin", "Schlicker"
    },
    ["Hillsbrad Foothills"] = {
        "Der Große Samras", "Kriechfänger", "Lady Zephris", "Narillasanz", "Ro'Bell",
        "Narbenflosse", "Tamra Sturmlanze"
    },
    ["Alterac Mountains"] = {
        "Araga", "Benj der Missmutige", "Gravis Galgenknoten", "Jimmy der Bluter",
        "Lo'Grosh", "Narillasanz", "Skhowl", "Maggarrak"
    },
    ["Arathi Highlands"] = {
        "Darbel Montrose", "Faulbauch", "Geomant Flintdolch", "Kovork",
        "Molok der Zermalmer", "Nimar der Töter", "Prinz Nazjak",
        "Ruul Zweistein", "Sängerin", "Zalas Bleichborke"
    },
    ["Swamp of Sorrows"] = {
        "Flossgat", "Kiemorius", "Hauptmann Wyrmak", "Häuptling der Verirrten",
        "Koch der Verirrten", "Moosbart"
    },
    ["Badlands"] = {
        "Grubenmeister Schaufelphlansch", "7:XT", "Anathemus", "Barnabus",
        "Zerbrochener Zahn", "Rumpler", "Kommandant der Schattenschmiede", "Barrikade",
        "Kriegsgolem", "Zaricotl"
    },
    ["The Hinterlands"] = {
        "Grimungous", "Eisenpanzer", "Jalinde Sommerdrache",
        "Mith'rethis der Verzauberer", "Klippenspringer", "Reißerklaue",
        "Retherokk der Berserker", "Der Reak", "Kaltherz der Streicher",
        "Zul'arek Faulhass"
    },
    ["Stranglethorn Vale"] = {
        "Gluckser", "Hohepriesterin Hai'watna", "Kurmokk", "Lord Sakrasis",
        "Rippa", "Roloch", "Schuppenbauch", "Rüstmeister der Schmetterschilde",
        "Verifonix"
    },
    ["Searing Gorge"] = {
        "Faulty Kriegsgolem", "Hochlord Mastrogonde", "Rekk'tilac", "Scald",
        "Shleipnarr", "Sklavenmeister Schwarzherz", "Smoldar"
    },
    ["Western Plaguelands"] = {
        "Großknecht Jerris", "Großknecht Marcrid", "Faulmähne", "Lord Maldazzar",
        "Putridius", "Scharlachroter Henker", "Scharlachroter Hochkleriker",
        "Scharlachroter Befrager", "Scharlachroter Richter", "Scharlachroter Schmied", "Die Hülse"
    },
    ["Burning Steppes"] = {
        "Knochenhexe", "Totenreißer", "Gorgon'och", "Gruklash", "Hahk'Zor",
        "Hematos", "Schwerfälliger Schrecken", "Fehlfunktionierender Häscher",
        "Geist der Verdammten", "Terrorstifter", "Thauris Balgarr", "Volchan"
    },
    ["Eastern Plaguelands"] = {
        "Knochenhexe", "Todessprecher Selendre", "Duggan Wildhammer",
        "Gish der Unbewegliche", "Hed'mush der Faulende", "Hochgeneral Abbendis",
        "Lord Finstersense", "Schwerfälliger Schrecken", "Nerubischer Aufseher",
        "Todesjäger Falkenspeer", "Geist der Verdammten", "Kriegsherr Thresh'jin",
        "Zul'Brin Wirbelstab"
    },
    ["Blasted Lands"] = {
        "Akubar der Seher", "Knochenhexe", "Clack der Häscher", "Todesauge",
        "Mutreich", "Suhlaman", "Schwerfälliger Schrecken", "Magronos der Unerschütterliche",
        "Mojo der Verwachsene", "Verheerer", "Geist der Verdammten", "Fledderschnabel"
    },
    ["Eversong Woods"] = {"Eldinarcus", "Tregla"},
    ["Bloodmyst Isle"] = {"Fenissa die Assassine"},
    ["Ghostlands"] = {"Dr. Krummbein"},
    ["Zangarmarsh"] = {"Sumpflauerer", "Abgesandte des Echsenkessels", "Marticar"},
    ["Hellfire Peninsula"] = {
        "Gierschlund", "Mekthorg der Wilde", "Vorakem Unheilsbote"
    },
    ["Terokkar Forest"] = {"Verkrüppler", "Verdammnisverkünder Jurim", "Falkenschreck", "Okrek"},
    ["Nagrand"] = {"Bro'Gaz der Klanlose", "Bluthauer", "Leerjäger Yar"},
    ["Blade's Edge Mountains"] = {"Hemathion", "Mordruck", "Sprecher Mar'grom"},
    ["Netherstorm"] = {
        "Chefingenieur Lorthander", "Steinherz der Bestrafer", "Nuramoc"
    },
    ["Shadowmoon Valley"] = {
        "Botschafter Jerrikar", "Collidus der Sphärenwächter", "Kraator"
    },
    ["Howling Fjord"] = {
        "King Ping", "Perobas der Blutdürster", "Vigdis die Kriegsmaid"
    },
    ["Borean Tundra"] = {"Flumblub Gangwindung", "Eishorn", "Alte Kristallborke"},
    ["Grizzly Hills"] = {
        "Arcturis", "Grocklar", "Wutentbrannter Hass", "Syreian die Knochenschnitzerin"
    },
    ["Zul'Drak"] = {"Gondria", "Griegen", "Terrorspinner", "Schildwache von Zul'Drak"},
    ["Dragonblight"] = {
        "Wahnsinniger Überlebender von Indu'le", "Scharlachrote Hochfürstin Daion", "Tukemuth"
    },
    ["Sholazar Basin"] = {"Aotona", "König Knirsch", "Loque'nahak"},
    ["The Storm Peaks"] = {
        "Dirkee", "Skoll", "Zeitverlorener Protodrache", "Vyragosa"
    },
    ["Icecrown"] = {
        "Hochthan Jorfus", "Hildana Todesstehler", "Putridus der Uralte"
    },
    ["The Deadmines"] = {
        "Manipulierter Adliger", "Marisa du'Paige", "Minenarbeiter Johnson"
    },
    ["Wailing Caverns"] = {"Deviatfeendrache"},
    ["Shadowfang Keep"] = {"Todeshöriger Hauptmann"},
    ["The Stockade"] = {"Bruegal Eisenfaust"},
    ["Gnomeregan"] = {"Botschafter der Dunkeleisenzwerge"},
    ["Razorfen Kraul"] = {
        "Blinder Jäger", "Erdenrufer Halmgar", "Speerträger der Klingenhauer"
    },
    ["Scarlet Monastery"] = {
        "Azshir der Schlaflose", "Gefallener Champion", "Eisenrücken"
    },
    ["Maraudon"] = {"Meshlok der Ernter"},
    ["Dire Maul"] = {"Lord Hel'nurath", "Tsu'zee"},
    ["Zul'Farrak"] = {"Karaburan", "Sandarr der Wüstenräuber", "Zerillis"},
    ["Stratholme"] = {"Herdsinger Forresten", "Skul", "Steinbuckel"},
    ["Blackrock Depths"] = {
        "Panzor der Unbesiegbare", "Pyromant Weisenkorn", "Verek",
        "Wärter Stilgiss"
    },
    ["Blackrock Spire"] = {
        "Bannok Grimmaxt", "Brennende Teufelswache", "Kristallfangzahn", "Ghok Haudrauf",
        "Kampflord der Felsspitzoger", "Metzger der Felsspitzoger", "Maguslord der Felsspitzoger",
        "Goraluk Hammerbruch", "Jed Runenblick"
    }
}

elseif locale == "esES" or locale == "esMX" then

addon.rares = {
    ["Mulgore"] = {
        "Déspota Emilgund", "Aullido Fantasma", "Mazzranache", "Hermana Azote de Odio",
        "Jalalanza", "El Despedazador"
    },
    ["Durotar"] = {
        "Capitán Colmillo Plano", "Despellejador de la Muerte", "Tejeyel Scronn",
        "Geoseñor Motas", "Señor de la guerra Kolkanis", "Sargento Curtis"
    },
    ["Teldrassil"] = {
        "Musgonegro el Fétido", "Acechador nocturno", "Furia Shelda", "Faucenestra",
        "Threggil", "Uruson"
    },
    ["Darkshore"] = {
        "Carnivous el Rompedor", "Clamafuegos Radison", "Flagglemurk el Cruel",
        "Lady Miraluna", "Lady Vespira", "Licillin", "Lord Sesgapecados",
        "Garrasombría", "Zancador Madrezarpa"
    },
    ["Stonetalon Mountains"] = {
        "Hermano Roblecuervo", "Supervisor Rigger", "Nal'taszar",
        "Patriarca Alaorgullo", "Centinela Amarassan", "Hermana Riven",
        "Alapenas", "Capataz Latimillo", "Anciano vengativo"
    },
    ["Ashenvale"] = {
        "Akkrilus", "Boticario Falthis", "Quebrarramas", "Eck'alom",
        "Lady Vespia", "Aullanieblas", "Aletereje", "Pataroble", "Príncipe Raze",
        "Rorgish Jowl", "Señor de la manada Luporror", "Ursol'lok"
    },
    ["The Barrens"] = {
        "Tritesta el Azotador", "Aean Río Veloz", "Embajador Sanguinarius",
        "Azzere el Filo del Cielo", "Lanzarrota", "Brontus",
        "Capitán Gerogg Piemartillo", "Cavador Flamaforja", "Dishu",
        "Anciana mística Filocico", "Ingeniero Giralesín", "Supervisor Asas",
        "Geosacerdote Gukk'rok", "Gesharahan", "Hagg Taurruina",
        "Hannah Filohoja", "Heggin Pelopiedra", "Humar el Señor Orgulloso",
        "Malgin Cebadiz", "Marcus Bel", "Rathorian", "Lanzapiedras",
        "Cosechador silítido", "Hermana Rathtalon", "Anomalía de lodo",
        "Bufo el Molesto", "Brazorroca", "Velocrín", "Suingart Cuerolanza",
        "Takk el Saltarín", "Thora Plumaluna", "Silenciatruenos"
    },
    ["Thousand Needles"] = {
        "Achellios el Desterrado", "Gibblesnik", "Harb Monte Fétido",
        "Cuorevaja", "Ojohierro el Invencible", "Krkk'kx", "Aguijón vil"
    },
    ["Desolace"] = {
        "Filozante detestable", "Pincitas", "Centauro maldito", "Mueca",
        "Hissperak", "Kaskk", "Príncipe Kellen"
    },
    ["Tanaris"] = {
        "Bruja Osaria", "Cyclok el Loco", "Alascuas",
        "Haarka el Voraz", "Jin'Zallah el Arenero", "Kregg Volcayecto",
        "Horror torpe", "Llagapata mortífera", "Omgorn el Perdido",
        "Soriid el Devorador", "Espíritu de los Malditos", "Líder de guerra Krazzilak"
    },
    ["Felwood"] = {
        "Alshirr Respiramiedo", "Aullador de la Muerte", "Dessecus", "Immolatus", "Mongress",
        "Olm el Sabio", "Patafuria", "El Ongar"
    },
    ["Azshara"] = {
        "Antilos", "Bruja Osaria", "Guardián Gruñefuria", "General Colmiterror",
        "Lady Sesspira", "Horror torpe", "Magistrix Yelmalcón",
        "Maestro Pavoria", "Monnos el Viejo", "Barbascamas",
        "Espíritu de los Malditos", "El Evalcharr", "Fantasma de Varo'then"
    },
    ["Un'Goro Crater"] = {
        "Madrezarpa Zavas", "Gruff", "Rey Mosh", "Matriarca ravasaurio",
        "Uhk'loc"
    },
    ["Silithus"] = {
        "Gretheer", "Grubthor", "Huricanian", "Krellack", "Lapress",
        "Rex Ashil", "Setis", "Señor Crepuscular Everun", "Zora"
    },
    ["Feralas"] = {
        "Mushgog", "Skarr el Roto", "El Razza", "Antilus el Surcador",
        "Arash-ethis", "Rugesangre el Acechador", "Cabeza Diamante",
        "Núdor Fraterfolio", "Lady Szallah", "Viejo Tripasgrises", "Qirot",
        "Gruñidor"
    },
    ["Winterspring"] = {
        "Azurous", "Bruja Osaria", "General Colbatann", "Pardo Patanieve",
        "Kashoch el Atracador", "Lady Hederine", "Horror torpe",
        "Mezzir el Aullador", "Rak'shiri", "Espíritu de los Malditos"
    },
    ["Dustwallow Marsh"] = {
        "Brotasangre", "Ojo Ladrón", "Viuda Niebla Negra", "Dardo",
        "Drogoth el Vagabundo", "Hayoc", "Señor Pescador", "Mocogusano", "Rasgascama",
        "El Podrido"
    },
    ["Elwynn Forest"] = {
        "Fedfennel", "Bronco Mordeveloz", "Morgaine la Astuta", "Madre Colmillo",
        "Narg el Capataz", "Thuros Dedos Ligeros"
    },
    ["Dun Morogh"] = {
        "Bjarn", "Edan el Aullador", "Gibblewilt", "Gran patriarca Arctikus",
        "Martidorsal", "Gris"
    },
    ["Tirisfal Glades"] = {
        "Bayne", "Deeb", "Granjero Solliden", "Sombra de Felicent", "Alma perdida",
        "Muad", "Ressan el Agujas", "Sri'skulk", "Espíritu atormentado"
    },
    ["Westfall"] = {
        "Noble con lavado de cerebro", "Marisa du'Paige", "Brack", "Siegaenemigos 4000",
        "Leprithus", "Maestro excavador", "Sargento Garravil", "Eslarc", "Vultros"
    },
    ["Loch Modan"] = {
        "Jefe Vayachi", "Emogg el Triturador", "Kubb", "Gosh-Haldir",
        "Lord Condar", "Magosh", "Shanda la Giratoria"
    },
    ["Silverpine Forest"] = {
        "Escribachizo de Molino Ámbar", "Mandisangre", "Krethis Tejeumbra",
        "Viejo Malafauce", "Regente Corvozarpa", "Truhán Putrepellejo", "Melegruños"
    },
    ["Redridge Mountains"] = {
        "Corapetra", "Castañeta", "Kazon", "Rompecostillas", "Rohh el Silencioso",
        "Buscador Aqualon", "Llamagruños", "Squiddic", "Volchan"
    },
    ["Duskwood"] = {
        "Comandante Yelestrón", "Fenros", "Lord Malathrom", "Lupos",
        "Naraxis", "Nefaru"
    },
    ["Wetlands"] = {
        "Maestro de batalla Faucedraco", "Garneg Hullacráneo", "Roehuesos", "Viuda sanguijuela",
        "Ma'ruk Vermiscala", "Lodonante", "Matriarca Tajobuche", "Barrosín"
    },
    ["Hillsbrad Foothills"] = {
        "Gran Samras", "Trepazoso", "Lady Zephris", "Narillasanz", "Ro'Bark",
        "Rasgabranquia", "Tamra Pico Tormenta"
    },
    ["Alterac Mountains"] = {
        "Araga", "Cascarrabias Ben", "Gravis Nudocorredizo", "Jimmy el Sangrador",
        "Lo'Grosh", "Narillasanz", "Skhowl", "Maggarrak"
    },
    ["Arathi Highlands"] = {
        "Darbel Montrosa", "Panzatroz", "Geomántico Dagasílex", "Kovork",
        "Molok el Triturador", "Nimar el Destripador", "Príncipe Nazjak",
        "Ruul Onapiedra", "Kantor", "Zalas Secacorteza"
    },
    ["Swamp of Sorrows"] = {
        "Fingat", "Gilmorian", "Capitán Wyrmak", "Cabecilla Perdido",
        "Cocinero Perdido", "Fundespino"
    },
    ["Badlands"] = {
        "Maestro de excavación Palatiro", "7:XT", "Anathemus", "Barnabus",
        "Diente partido", "Estruendor", "Comandante de Forjatiniebla", "Barricada",
        "Gólem de guerra", "Zaricotl"
    },
    ["The Hinterlands"] = {
        "Grimungus", "Espaldacerada", "Jalinde Dracoestío",
        "Mith'rethis el Encantador", "Viejo Saltariscos", "Filogarra",
        "Retherokk el Rabioso", "El Rik", "Blancorazón el Acechador",
        "Matagallinas Zul'arek"
    },
    ["Stranglethorn Vale"] = {
        "Gluggl", "Suma sacerdotisa Hai'watna", "Kurmokk", "Lord Sakrasis",
        "Rippa", "Roloch", "Panzascama", "Intendente del Escudo del Estigma",
        "Verifonix"
    },
    ["Searing Gorge"] = {
        "Faulty Gólem de guerra", "Alto señor Mastrogonde", "Rekk'tilac", "Escaldar",
        "Shleipnarr", "Maestro de esclavos Negrozón", "Smoldar"
    },
    ["Western Plaguelands"] = {
        "Supervisor Jerris", "Supervisor Marcrid", "Crinatroz", "Lord Maldazzar",
        "Putridus", "Verdugo Escarlata", "Alto Clérigo Escarlata",
        "Interrogador Escarlata", "Juez Escarlata", "Herrero Escarlata", "La Cáscara"
    },
    ["Burning Steppes"] = {
        "Bruja Osaria", "Faucemuerte", "Gorgon'och", "Gruklash", "Hahk'Zor",
        "Hematos", "Horror torpe", "Atracador estropeado",
        "Espíritu de los Malditos", "Chispa terrorífica", "Thauris Balgarr", "Volchan"
    },
    ["Eastern Plaguelands"] = {
        "Bruja Osaria", "Portavoz de la muerte Selendre", "Duggan Martillo Salvaje",
        "Gish el Inamovible", "Hed'mush el Podrido", "Alta general Abbendis",
        "Lord Hoz Oscura", "Horror torpe", "Sobrestante nerubiano",
        "Cazador letal Lanzalcón", "Espíritu de los Malditos", "Señor de la guerra Thresh'jin",
        "Ramurdimbre Zul'Brin"
    },
    ["Blasted Lands"] = {
        "Akubar el Vidente", "Bruja Osaria", "Clack el Atracador", "Ojo de la Muerte",
        "Desdeñamiedos", "Gruñón", "Horror torpe", "Magronos el Implacable",
        "Mojo el Retorcido", "Devastatia", "Espíritu de los Malditos", "Escupetripas"
    },
    ["Eversong Woods"] = {"Eldinarcus", "Tregla"},
    ["Bloodmyst Isle"] = {"Fenissa la Asesina"},
    ["Ghostlands"] = {"Dr. Miembro Marchito"},
    ["Zangarmarsh"] = {"Rondador de ciénaga", "Emisaria Colmillo Torcido", "Marticar"},
    ["Hellfire Peninsula"] = {
        "Atiborrador", "Mekthorg el Salvaje", "Vorakem Augurador"
    },
    ["Terokkar Forest"] = {"Lisiador", "Orador del Sino Jurim", "Aterralcón", "Okrek"},
    ["Nagrand"] = {"Bro'Gaz sin Clan", "Dientegore", "Cazador del vacío Yar"},
    ["Blade's Edge Mountains"] = {"Hemathion", "Morchaca", "Portavoz Mar'grom"},
    ["Netherstorm"] = {
        "Ingeniero jefe Lorthander", "Núcleo eterno el Castigador", "Nuramoc"
    },
    ["Shadowmoon Valley"] = {
        "Embajador Jerrikar", "Collidus el Vigía", "Kraator"
    },
    ["Howling Fjord"] = {
        "Rey Ping", "Perobas el Sediento de sangre", "Vigdis la Doncella de la guerra"
    },
    ["Borean Tundra"] = {"Fumblub Vientoencajado", "Hielocuerno", "Viejo Ladracristal"},
    ["Grizzly Hills"] = {
        "Arcturis", "Grocklar", "Odio hirviente", "Syreian la Talahuesos"
    },
    ["Zul'Drak"] = {"Gondria", "Griegen", "Hilador de terror", "Centinela de Zul'drak"},
    ["Dragonblight"] = {
        "Superviviente Indu'le enloquecido", "Alta señora Escarlata Daion", "Tukemuth"
    },
    ["Sholazar Basin"] = {"Aotona", "Rey Krush", "Loque'nahak"},
    ["The Storm Peaks"] = {
        "Dirkee", "Skoll", "Protodraco Tiempo Perdido", "Vyragosa"
    },
    ["Icecrown"] = {
        "Señor feudal Jorfus", "Hildana Quitaalmas", "Putridus el Antiguo"
    },
    ["The Deadmines"] = {
        "Noble con lavado de cerebro", "Marisa du'Paige", "Minero Johnson"
    },
    ["Wailing Caverns"] = {"Dragón feérico descarriado"},
    ["Shadowfang Keep"] = {"Capitán Juramorte"},
    ["The Stockade"] = {"Bruegal Nudoferro"},
    ["Gnomeregan"] = {"Embajador Hierro Negro"},
    ["Razorfen Kraul"] = {
        "Cazador ciego", "Clamatierras Halmgar", "Cuerolanza de Rajacieno"
    },
    ["Scarlet Monastery"] = {
        "Azshir el Insomne", "Campeón caído", "Dorsacerado"
    },
    ["Maraudon"] = {"Meshlok el Cosechador"},
    ["Dire Maul"] = {"Lord Hel'nurath", "Tsu'zee"},
    ["Zul'Farrak"] = {"Ánima de polvo", "Sandarr Asaltadunas", "Zerillis"},
    ["Stratholme"] = {"Cantachimeneas Forresten", "Skul", "Pidrespina"},
    ["Blackrock Depths"] = {
        "Panzor el Invencible", "Piromántico Fruto del Saber", "Verek",
        "Depositario Stilgiss"
    },
    ["Blackrock Spire"] = {
        "Bannok Hacha Macabra", "Guardia vil ardiente", "Colmillo de cristal", "Ghok Bashguud",
        "Señor de batalla Cumbrerroca", "Carnicero Cumbrerroca", "Señor Magus Cumbrerroca",
        "Goraluk Yunquegrieta", "Jed Vigía de las Runas"
    }
}

elseif locale == "frFR" then

addon.rares = {
    ["Mulgore"] = {
        "Massacreur Emilgund", "Hurleur fantomatique", "Mazzranache", "Sœur Cinglehaine",
        "Travépieu", "Le Griffu"
    },
    ["Durotar"] = {
        "Capitaine Plate-Défense", "Ecorcheur mortel", "Gangretisseur Arrogg",
        "Géomaîtresse Mouchette", "Seigneur de guerre Kolkanis", "Sergent Curtis"
    },
    ["Teldrassil"] = {
        "Noiremousse le Fétide", "Traqueur de la pénombre", "Furie Shelda", "Mornegueule",
        "Threggil", "Uruson"
    },
    ["Darkshore"] = {
        "Carnivous le Casseur", "Mandefeu Radison", "Flagglemurk le Cruel",
        "Dame Mirelune", "Dame Vespira", "Licillin", "Seigneur Salvassio",
        "Ombregriffe", "Matriarche trotteuse"
    },
    ["Stonetalon Mountains"] = {
        "Frère Corvichêne", "Contremaître Gréeur", "Nal'taszar",
        "Patriarche aile-fière", "Sentinelle Amarassan", "Sœur Riven",
        "Ailes du désespoir", "Sous-chef Fouettecroc", "Ancien vengeur"
    },
    ["Ashenvale"] = {
        "Akkrilus", "Apothicaire Falthis", "Brise-Branche", "Eck'alom",
        "Dame Vespia", "Hurleur des brumes", "Moldaileron", "Chênepatte", "Prince Raze",
        "Joufflu le croquant", "Chef de meute Frayeloup", "Ursol'lok"
    },
    ["The Barrens"] = {
        "Trigore le Flagelleur", "Aean Ondevive", "Ambassadeur Ragesang",
        "Azzere la lame céleste", "Brise-Epieu", "Brontus",
        "Capitaine Gerogg Martèlorteil", "Terrassier Forgeflamme", "Dishu",
        "Ancienne mystique Tranchegroin", "Ingénieur Tourbicoton", "Contremaître Grills",
        "Géoprêtresse Gukk'rok", "Gesharahan", "Hagg Plaie-des-taurens",
        "Hannah Feuillelame", "Heggin Moustache-de-pierre", "Humar le Fier",
        "Malgin Brasselorge", "Marcus Bel", "Rathorian", "Rochelance",
        "Moissonneur silithide", "Sœur Rathtalon", "Anomalie de vase",
        "Nifle la Moqueuse", "Bras-de-pierre", "Vif-crins", "Peau-piquante Pourcegart",
        "Takk le Bondisseur", "Thora Pennelune", "Grondeterre"
    },
    ["Thousand Needles"] = {
        "Achellios le Banni", "Margouilloche", "Harb Mont-Souillé",
        "Tranchecœur", "Ferregard l’Invincible", "Krkk'kx", "Dardeur"
    },
    ["Desolace"] = {
        "Ondulame maudit", "Croustille", "Centaure maudit", "Glousse",
        "Hissperak", "Kaskk", "Prince Kellen"
    },
    ["Tanaris"] = {
        "Sorcière des ossements", "Cyclok le Fol", "Braisaile",
        "Haarka le Féroce", "Jin'Zallah Porte-sable", "Kregg Soulaquille",
        "Horreur chancelante", "Brûlepatte meurtrier", "Omgorn l'Egaré",
        "Soriid le Dévoreur", "Esprit de damné", "Chef de guerre Krazzilak"
    },
    ["Felwood"] = {
        "Alshirr Souffléau", "Hurlemort", "Dessecus", "Immolatus", "Mongress",
        "Olm la Sage", "Ragepatte", "L'Ongar"
    },
    ["Azshara"] = {
        "Antilos", "Sorcière des ossements", "Portier Hurlerage", "Général Crocdangoiffe",
        "Dame Sesspira", "Horreur chancelante", "Magistère Falcoiffe",
        "Maître Trouilleffroi", "Monnos l’Ancien", "Barbe-d'écailles",
        "Esprit de damné", "L'Evalcharr", "Fantôme de Varo'then"
    },
    ["Un'Goro Crater"] = {
        "Matriarche Zavas", "Gruff", "Roi Mosh", "Matriarche ravasaure",
        "Uhk'loc"
    },
    ["Silithus"] = {
        "Gretheer", "Grubthor", "Ouraganien", "Krellack", "Lapress",
        "Rex Ashil", "Setis", "Seigneur du Crépuscule Everun", "Zora"
    },
    ["Feralas"] = {
        "Mushgog", "Bâlhafr le Brisé", "La Razza", "Antilus le Planeur",
        "Arash-ethis", "Rugissang le Traqueur", "Tête-de-diamant",
        "Noueux Frèrefeuilles", "Dame Szallah", "Vieux Grisebedaine", "Qirot",
        "Grogneur"
    },
    ["Winterspring"] = {
        "Azurous", "Sorcière des ossements", "Général Colbatann", "Grison Neigepatte",
        "Kashoch le saccageur", "Dame Hederine", "Horreur chancelante",
        "Mezzir le hurleur", "Rak'shiri", "Esprit de damné"
    },
    ["Dustwallow Marsh"] = {
        "Soufresang", "Pique-les-Yeux", "Veuve de Sombrebrume", "Flèche",
        "Drogoth le Vagabond", "Hayoc", "Seigneur Baudroie", "Ver de limon", "Arrachécaille",
        "La Pourriture"
    },
    ["Elwynn Forest"] = {
        "Fenouillard", "Gruff Mord-vite", "Morgaine la rusée", "Mère Croc",
        "Narg le Sous-chef", "Thuros Doigts-agiles"
    },
    ["Dun Morogh"] = {
        "Bjarn", "Edan le Hurleur", "Margouilleur", "Grand-père Arctikus",
        "Martelléchine", "Grumeux"
    },
    ["Tirisfal Glades"] = {
        "Bayne", "Deeb", "Fermier de Solliden", "Ombre de Fellicent", "Ame égarée",
        "Muad", "Ressan le Harceleur", "Sri'skulk", "Esprit tourmenté"
    },
    ["Westfall"] = {
        "Noble manipulé", "Marisa du'Paige", "Brack", "Faucheur 4000",
        "Leprithus", "Maître Terrassier", "Sergent Promptegriffe", "Slark", "Vultros"
    },
    ["Loch Modan"] = {
        "Boss Galgosh", "Emogg le Broyeur", "Kubb", "Gosh-Haldir",
        "Seigneur Condar", "Magosh", "Shanda la Tisseuse"
    },
    ["Silverpine Forest"] = {
        "Copiste de Moulin-de-l'Ambre", "Croquetripe", "Krethis Tisse-l'ombre",
        "Vieux Vile mâchoire", "Régent Serres-de-Corbeau", "Cogneur poil-putride", "Grondecrin"
    },
    ["Redridge Mountains"] = {
        "Rochecœur", "Cliqueteuse", "Kazon", "Chassecôtes", "Rohh le silencieux",
        "Aqualon le Chercheur", "Grondefuse", "Squiddic", "Volchan"
    },
    ["Duskwood"] = {
        "Commandant Gangretrombe", "Fenros", "Seigneur Malathrom", "Lupos",
        "Naraxis", "Nefaru"
    },
    ["Wetlands"] = {
        "Maître de guerre gueule-de-dragon", "Garneg Grille-crâne", "Ronge-les-os", "Veuve sanguine",
        "Ma'ruk Wyrmécaille", "Bas-boueux", "Matriarche tranchegueule", "Bouillasseux"
    },
    ["Hillsbrad Foothills"] = {
        "Gros Samras", "Insinueuse", "Dame Zephris", "Narillasanz", "Ro'Bark",
        "Scargil", "Tamra Foudrepique"
    },
    ["Alterac Mountains"] = {
        "Araga", "Benj le teigneux", "Gravis Lecollet", "Jimmy le Saignant",
        "Lo'Grosh", "Narillasanz", "Grybou", "Maggarrak"
    },
    ["Arathi Highlands"] = {
        "Darbel Montrose", "Souillebedon", "Géomancien Dague-de-silex", "Kovork",
        "Molok l’Anéantisseur", "Nimar le Pourfendeur", "Prince Nazjak",
        "Ruul Unepierre", "Singer", "Zalas fanécorce"
    },
    ["Swamp of Sorrows"] = {
        "Fingat", "Gilmorian", "Capitaine Wyrmak", "Chef Perdu",
        "Cuisinier perdu", "Rougeronce"
    },
    ["Badlands"] = {
        "Maître des fouilles Pellaphlange", "7:XT", "Anathemus", "Barnabus",
        "Brèchedent", "Grondeur", "Commandant ombreforge", "Barricade",
        "Golem de guerre", "Zaricotl"
    },
    ["The Hinterlands"] = {
        "Grimungous", "Dos-de-fer", "Jalinde Drake-d'été",
        "Mith'rethis l'Enchanteur", "Vieux Saute-falaise", "Trancheserre",
        "Retherokk le Berserker", "Le Jonc", "Flétricœur le Traqueur",
        "Zul'arek Volaillaîne"
    },
    ["Stranglethorn Vale"] = {
        "Glougloug", "Grande prêtresse Hai'watna", "Kurmokk", "Seigneur Sakrasis",
        "Rippa", "Roloch", "Ventrécaille", "Intendant du Bouclier balafré",
        "Drolatix"
    },
    ["Searing Gorge"] = {
        "Faulty Golem de guerre", "Généralissime Mastrogonde", "Rekk'tilac", "Brûlar",
        "Shleipnarr", "Maître des esclaves Cœur-Noir", "Fumar"
    },
    ["Western Plaguelands"] = {
        "Contremaître Jerris", "Contremaître Marcrid", "Vilcrin", "Seigneur Maldazzar",
        "Putridius", "Bourreau écarlate", "Grand prêtre écarlate",
        "Interrogateur écarlate", "Juge écarlate", "Forgeron écarlate", "La Bogue"
    },
    ["Burning Steppes"] = {
        "Sorcière des ossements", "Gueule-du-trépas", "Gorgon'och", "Gruklash", "Hahk'Zor",
        "Hématos", "Horreur chancelante", "Saccageur défectueux",
        "Esprit de damné", "Lueur terrifiante", "Thauris Balgarr", "Volchan"
    },
    ["Eastern Plaguelands"] = {
        "Sorcière des ossements", "Nécroratrice Selendre", "Duggan Marteau-hardi",
        "Gish l'Immobile", "Hed'mush le Pourrissant", "Grand général Abbendis",
        "Seigneur Sombrefaux", "Horreur chancelante", "Surveillant nérubien",
        "Chasse-mort Eperlance", "Esprit de damné", "Seigneur de guerre Thresh'jin",
        "Zul'Brin Voilebranche"
    },
    ["Blasted Lands"] = {
        "Akubar le Prophète", "Sorcière des ossements", "Clack le Saccageur", "Oeil-de-mort",
        "Dériseffroi", "Grunter", "Horreur chancelante", "Magronos l'Inflexible",
        "Mojo le Tordu", "Ravage", "Esprit de damné", "Ecorchebile"
    },
    ["Eversong Woods"] = {"Eldinarcus", "Tregla"},
    ["Bloodmyst Isle"] = {"Fenissa l'Assassin"},
    ["Ghostlands"] = {"Docteur Gâtemembre"},
    ["Zangarmarsh"] = {"Rôdeur des tourbières", "Emissaire de Glissecroc", "Marticar"},
    ["Hellfire Peninsula"] = {
        "Goinfreplein", "Mekthorg le Sauvage", "Vorakem Parleruine"
    },
    ["Terokkar Forest"] = {"Estropieur", "Auspice funeste Jurim", "Plaie-des-rapaces", "Okrek"},
    ["Nagrand"] = {"Bro'Gaz Sans-Clan", "Sangredent", "Chasseur du Vide Yar"},
    ["Blade's Edge Mountains"] = {"Hemathion", "Morcrase", "Porte-parole Mar'grom"},
    ["Netherstorm"] = {
        "Ingénieur en chef Lorthander", "Permacœur le Punisseur", "Nuramoc"
    },
    ["Shadowmoon Valley"] = {
        "Ambassadeur Jerrikar", "Collidus le Guetteur-Dimensionnel", "Kraator"
    },
    ["Howling Fjord"] = {
        "Roi Ping", "Perobas le Carnassier", "Vigdis la Vierge de guerre"
    },
    ["Borean Tundra"] = {"Larmagauche Venbraye", "Corneglace", "Vieil Ecorce-de-Cristal"},
    ["Grizzly Hills"] = {
        "Arcturis", "Grocklar", "Haine vengeresse", "Syreian la Sculpteuse d'os"
    },
    ["Zul'Drak"] = {"Gondria", "Griegen", "Tisseuse de terreur", "Sentinelle de Zul'Drak"},
    ["Dragonblight"] = {
        "Survivant d'Indu'le affolé", "Généralissime écarlate Daion", "Tukemuth"
    },
    ["Sholazar Basin"] = {"Aotona", "Roi Krush", "Loque'nahak"},
    ["The Storm Peaks"] = {
        "Dirkee", "Skoll", "Proto-drake perdu dans le temps", "Vyragosa"
    },
    ["Icecrown"] = {
        "Grand thane Jorfus", "Hildana Voleuse-de-Mort", "Putridus l'Antique"
    },
    ["The Deadmines"] = {
        "Noble manipulé", "Marisa du'Paige", "Mineur Johnson"
    },
    ["Wailing Caverns"] = {"Dragon féerique déviant"},
    ["Shadowfang Keep"] = {"Capitaine Ligemort"},
    ["The Stockade"] = {"Bruegal Poing-de-Fer"},
    ["Gnomeregan"] = {"Ambassadeur sombrefer"},
    ["Razorfen Kraul"] = {
        "Chasseur aveugle", "Implorateur de la terre Halmgar", "Lanceur de Tranchebauge"
    },
    ["Scarlet Monastery"] = {
        "Azshir le Sans-Sommeil", "Champion déchu", "Echine-de-fer"
    },
    ["Maraudon"] = {"Meshlok le Moissonneur"},
    ["Dire Maul"] = {"Seigneur Hel'nurath", "Tsu'zee"},
    ["Zul'Farrak"] = {"Ame en peine poudreuse", "Sandarr Ravadune", "Zerillis"},
    ["Stratholme"] = {"Chanteloge Forrestin", "Krân", "Echine-de-pierre"},
    ["Blackrock Depths"] = {
        "Panzor l'Invincible", "Pyromancien Blé-du-Savoir", "Verek",
        "Gardien Stilgiss"
    },
    ["Blackrock Spire"] = {
        "Bannok Hache-Sinistre", "Gangregarde ardent", "Croc cristallin", "Ghok Bounnebaffe",
        "Seigneur de bataille pierre-du-pic", "Boucher pierre-du-pic", "Seigneur magus pierre-du-pic",
        "Goraluk Brisenclume", "Jed Guette-runes"
    }
}

elseif locale == "koKR" then

addon.rares = {
    ["Mulgore"] = {
        "감독관 에밀군드", "유령울음늑대", "마즈라나체", "마녀 헤이트래쉬",
        "스나글스피어", "갈퀴"
    },
    ["Durotar"] = {
        "호위대장 납작엄니", "맹독무당전갈", "펠위버 스코른",
        "가시대장 점박이", "대장 콜카니스", "하사관 커티스"
    },
    ["Teldrassil"] = {
        "악취나는 검은이끼괴물", "그늘표범", "복수의 여신 쉘다", "검은아귀",
        "트레길", "우루손"
    },
    ["Darkshore"] = {
        "파괴자 카니버스", "불꽃의 소환사 래디슨", "무자비한 플래글머크",
        "여군주 문게이저", "여군주 베스피라", "리킬린", "군주 신슬레이어",
        "그림자발톱", "우두머리 타조"
    },
    ["Stonetalon Mountains"] = {
        "수사 레이븐오크", "현장감독 리거", "날타스자르",
        "우두머리 사자날개 와이번", "파수꾼 아마랏산", "마녀 리벤",
        "슬픈날개", "행동대장 채찍송곳니", "복수심에 불타는 고대정령"
    },
    ["Ashenvale"] = {
        "아크릴루스", "연금술사 팔디스", "썩은가지", "엑칼롬",
        "여군주 베스피아", "긴울음 안개늑대", "우렁비늘", "떡갈손", "왕자 라제",
        "난폭한 몽구리", "테로울프 우두머리", "우르솔로크"
    },
    ["The Barrens"] = {
        "채찍꼬리 트리고어", "이안 스위프트리버", "사절 블러드레이지",
        "창공의 칼날 아제레", "부러진창", "브론투스",
        "경비대장 지로그 해머토", "채굴꾼 플레임포지", "디슈",
        "장로비술사 레이저스나웃", "기술자 휠리기그", "현장감독 그릴즈",
        "가시사제 구크로크", "게샤라한", "하그 타우렌베인",
        "한나 블레이드리프", "헤긴 스톤위스커", "사자왕 후마르",
        "말긴 발리브루", "마커스 벨", "라소리안", "바위송곳",
        "여왕 실리시드", "마녀 라스탈론", "녹괴물",
        "칼날발톱 킁킁이", "무쇠팔", "번개갈기", "가시근위병 스와인가트",
        "껑충발 타크", "토라 페더문", "천둥발굽"
    },
    ["Thousand Needles"] = {
        "추방자 아킬리오스", "기블스니크", "하브 파울마운틴",
        "칼날심장", "무적의 무쇠눈바실리스크", "크륵큭스", "죽음의 맹독전갈"
    },
    ["Desolace"] = {
        "저주받은 뱀갈퀴 나가", "딱딱이", "저주받은 켄타우로스", "히죽이",
        "히스페락", "카스크", "왕자 켈렌"
    },
    ["Tanaris"] = {
        "해골 마녀", "미치광이 사이클록", "잿불날개",
        "포악한 하르카", "모래술사 진잘라", "크레그 킬홀",
        "성큼걸이 누더기골렘", "피에 굶주린 문둥발하이에나", "실성한 옴고른",
        "파멸의 소리드", "저주받은 자의 영혼", "부대장 크라질락"
    },
    ["Felwood"] = {
        "맹독숨결 알쉬르", "검은울음", "데시쿠스", "이몰라투스", "몽그레스",
        "지혜의 오름", "성난발톱", "온가르"
    },
    ["Azshara"] = {
        "안틸로스", "해골 마녀", "문지기 레이지로어", "장군 팽페러",
        "여군주 세스피라", "성큼걸이 누더기골렘", "마법학자 호크헬름",
        "군주 피어드레드", "고대의 몬노스", "비늘수염",
        "저주받은 자의 영혼", "에발차르", "바로덴의 유령발늑대"
    },
    ["Un'Goro Crater"] = {
        "여왕 자바스", "그러프", "폭군 모쉬", "우두머리 라바사우루스",
        "우크로크"
    },
    ["Silithus"] = {
        "그리시르", "그룹토르", "허리케니안", "크렐락크", "라프리스",
        "렉스 아쉴", "세티스", "황혼의 군주 이브런", "조라"
    },
    ["Feralas"] = {
        "머쉬고그", "패배의 스카르", "라자", "창공의 안틸루스",
        "아라쉬에디스", "추적자 블러드로어", "다이아몬드 마크루라",
        "나알 리프브라더", "여군주 스잘라", "늙은 그리즐거트", "퀴로트",
        "스날러"
    },
    ["Winterspring"] = {
        "아주로우스", "해골 마녀", "장군 콜바탄", "눈발톱 그리즐",
        "약탈자 카쇼크", "여군주 헤더린", "성큼걸이 누더기골렘",
        "포효의 메찌르", "라크쉬리", "저주받은 자의 영혼"
    },
    ["Dustwallow Marsh"] = {
        "피바다", "외눈박이", "과부 암흑안개거미", "바람뿔",
        "방랑자 드로고스", "하요크", "마크루라왕 아귀", "수액벌레", "비늘톱",
        "시궁괴물"
    },
    ["Elwynn Forest"] = {
        "페드페널", "그러프 Swiftbite", "교활한 도적 몰게니", "여왕 굴거미",
        "현장감독 나르그", "투로스 라이트핑거스"
    },
    ["Dun Morogh"] = {
        "비야른", "포효의 에단", "기블윌트", "대부 아크티쿠스",
        "가시망치", "팀버"
    },
    ["Tirisfal Glades"] = {
        "크르르", "디브", "농부 솔리덴", "펠리센트의 유령", "길 잃은 영혼",
        "무아드", "칼날비명 레산", "스리술크", "고통받는 영혼"
    },
    ["Westfall"] = {
        "세뇌당한 귀족", "마리사 두페이지", "브랙", "전투 절단기 4000",
        "레프리투스", "우두머리 채굴꾼", "부대장 가시발톱", "슬라크", "벌트로스"
    },
    ["Loch Modan"] = {
        "우두머리 갈고쉬", "무쇠주먹 에모그", "커브", "고쉬할디르",
        "독수리왕 콘다르", "마고쉬", "검은올가미 샨다"
    },
    ["Silverpine Forest"] = {
        "호박색 농장 역술사", "피송곳니", "그림자거미 크레시스",
        "늙은곰 톱니이빨", "까마귀발톱 섭정", "썩은가죽 투사", "썩은갈기"
    },
    ["Redridge Mountains"] = {
        "바위심장", "우두머리 집게턱타란툴라", "카존", "늑골잡이", "암살자 로",
        "수색자 아쿠알론", "불꽃용", "망둥이", "볼찬"
    },
    ["Duskwood"] = {
        "사령관 펠스트롬", "펜로스", "군주 말라스롬", "루포스",
        "나락시스", "네파루"
    },
    ["Wetlands"] = {
        "용아귀 지휘관", "가르넥 찰스컬", "뼈갈이", "거머리과부거미",
        "마룩 웜스케일", "골구렁", "무쇠턱 우두머리랩터", "곤죽이"
    },
    ["Hillsbrad Foothills"] = {
        "큰곰 삼라스", "땅거미", "여군주 제프리스", "나릴라산즈", "로바크",
        "칼지느러미", "탐라 스톰파이크"
    },
    ["Alterac Mountains"] = {
        "아라가", "심술쟁이 벤지", "그라비스 슬립노트", "날도둑 지미",
        "로그로쉬", "나릴라산즈", "스카울", "마가라크"
    },
    ["Arathi Highlands"] = {
        "다벨 몬트로즈", "뒤뚱발이", "흙점쟁이 플린트대거", "코보르크",
        "무쇠주먹 몰로크", "학살자 니마르", "왕자 나자크",
        "루울 원스톤", "싱어", "마른나무껍질 잘라스"
    },
    ["Swamp of Sorrows"] = {
        "핀개트", "길모리안", "군주 웜막", "잃어버린 드레나이 족장",
        "잃어버린 드레나이 요리사", "허물가시"
    },
    ["Badlands"] = {
        "발굴단장 쇼벨플랜지", "7:XT", "아나테무스", "바르나부스",
        "부러진 송곳니", "우레정령", "어둠괴철로 사령관", "철옹성",
        "전쟁 골렘", "자리코틀"
    },
    ["The Hinterlands"] = {
        "그림운거스", "무쇠껍질", "잘린데 서머드레이크",
        "마법부여사 미스레디스", "늙은 절벽껑충늑대", "서슬갈퀴",
        "광전사 레세로크", "리크", "추적자 메마른심장",
        "줄라렉 헤이트파울러"
    },
    ["Stranglethorn Vale"] = {
        "글루글", "대여사제 하이와트나", "쿠르모크", "군주 사크라시스",
        "리파", "로로취", "무쇠비늘 바실리스크", "방패부대 병참장교",
        "베리포닉스"
    },
    ["Searing Gorge"] = {
        "Faulty 전쟁 골렘", "대영주 마스트로곤드", "레크틸락", "스칼드",
        "셸리나르", "노예상인 블랙하트", "스몰더"
    },
    ["Western Plaguelands"] = {
        "현장감독 제리스", "현장감독 마크리드", "파울메인", "말다자르 경",
        "퓨트리디우스", "붉은십자군 사형집행인", "붉은십자군 고위성직자",
        "붉은십자군 심문관", "붉은십자군 재판관", "붉은십자군 대장장이", "허스크"
    },
    ["Burning Steppes"] = {
        "해골 마녀", "송장아귀", "고르고노취", "그루클라쉬", "하크조르",
        "헤마토스", "성큼걸이 누더기골렘", "상태이상의 전투절단기",
        "저주받은 자의 영혼", "도깨비불꽃", "타우리스 발가르", "볼찬"
    },
    ["Eastern Plaguelands"] = {
        "해골 마녀", "죽음예언자 셀렌드레", "두간 와일드해머",
        "부동의 기쉬", "부패의 헤드무쉬", "고위사령관 아벤디스",
        "군주 다크사이드", "성큼걸이 누더기골렘", "네루비안 우두머리",
        "죽음사냥꾼 호크스피어", "저주받은 자의 영혼", "장군 트레쉬진",
        "줄브린 워프브랜치"
    },
    ["Blasted Lands"] = {
        "현자 아쿠바르", "해골 마녀", "칼날집게발 딸깍이", "죽음의 눈",
        "드레드스콘", "꿀꿀이", "성큼걸이 누더기골렘", "고집불통 마그로노스",
        "험상궂은 모조", "부라퀴", "저주받은 자의 영혼", "재앙의 검은발톱"
    },
    ["Eversong Woods"] = {"엘디나르쿠스", "트레글라"},
    ["Bloodmyst Isle"] = {"암살자 페닛사"},
    ["Ghostlands"] = {"박사 위더림"},
    ["Zangarmarsh"] = {"늪지 잠복꾼", "갈퀴송곳니 사절", "마르티카"},
    ["Hellfire Peninsula"] = {
        "모래아귀", "야수 메크토그", "보라켐 둠스피커"
    },
    ["Terokkar Forest"] = {"절름발이", "파멸의 예언자 유림", "매잡이호랑이", "오크렉"},
    ["Nagrand"] = {"외톨이 브로가즈", "쐐기이빨", "공허의 사냥꾼 야르"},
    ["Blade's Edge Mountains"] = {"헤마시온", "모르크루쉬", "연설가 마르그롬"},
    ["Netherstorm"] = {
        "선임기술자 노산더", "응징자 영원핵", "누라모크"
    },
    ["Shadowmoon Valley"] = {
        "사자 제리카르", "차원의 감시자 콜리더스", "크라토르"
    },
    ["Howling Fjord"] = {
        "왕부리", "피에 굶주린 페로바스", "여전사 비그디스"
    },
    ["Borean Tundra"] = {"펌블럽 기어윈드", "얼음뿔", "노쇠한 수정껍질"},
    ["Grizzly Hills"] = {
        "아크튜리스", "그록클라르", "증오의 살덩이마귀", "뼈분리자 사이레이안"
    },
    ["Zul'Drak"] = {"곤드리아", "그리겐", "공포의 그물거미", "줄드락 파수병"},
    ["Dragonblight"] = {
        "광기 어린 인두르 생존자", "붉은십자군 대영주 다이온", "투크무스"
    },
    ["Sholazar Basin"] = {"아오토나", "왕 크루쉬", "로크나하크"},
    ["The Storm Peaks"] = {
        "더키", "스콜", "잃어버린 시간의 원시비룡", "바이라고사"
    },
    ["Icecrown"] = {
        "고위 영주 조르푸스", "힐다나 데스스틸러", "고대의 퓨트리두스"
    },
    ["The Deadmines"] = {
        "세뇌당한 귀족", "마리사 두페이지", "광부 존슨"
    },
    ["Wailing Caverns"] = {"돌연변이 요정용"},
    ["Shadowfang Keep"] = {"죽음의 경비대장"},
    ["The Stockade"] = {"브루갈 아이언너클"},
    ["Gnomeregan"] = {"검은무쇠 사절"},
    ["Razorfen Kraul"] = {
        "눈먼사냥꾼", "대지의주술사 함가르", "가시덩굴 가시근위병"
    },
    ["Scarlet Monastery"] = {
        "잠들지 않는 아즈쉬르", "타락한 용사", "무쇠해골"
    },
    ["Maraudon"] = {"정원사 메슬로크"},
    ["Dire Maul"] = {"군주 헬누라스", "츄지"},
    ["Zul'Farrak"] = {"더스트레이스", "산다르 듄리버", "제릴리스"},
    ["Stratholme"] = {"하스싱어 포레스턴", "스컬", "뾰족바위"},
    ["Blackrock Depths"] = {
        "무적의 판저", "화염술사 로어그레인", "베레크",
        "문지기 스틸기스"
    },
    ["Blackrock Spire"] = {
        "반노크 그림액스", "불타는 지옥수호병", "수정 맹독거미", "고크 배시구드",
        "뾰족바위 전투대장", "뾰족바위 학살자", "뾰족바위 마법사장",
        "고랄루크 앤빌크랙", "제드 룬워처"
    }
}

elseif locale == "ruRU" then

addon.rares = {
    ["Mulgore"] = {
        "Головорез Эмильгунд", "Призрачный Вой", "Маззранач", "Сестра Плеть Ненависти",
        "Кривое Копье", "Цап-царап"
    },
    ["Durotar"] = {
        "Капитан Тупой Клык", "Смертоносный живодер", "Скорнн Ткач Скверны",
        "Владычица земель Рябка", "Полководец Колканис", "Сержант Кертис"
    },
    ["Teldrassil"] = {
        "Черномшец злосмрадный", "Закатный ловец", "Фурия Шельда", "Зловещая Утроба",
        "Треггил", "Урусон"
    },
    ["Darkshore"] = {
        "Карнивус Разрушитель", "Радисон Призыватель Огня", "Грязнюк Жестокий",
        "Леди Луноокая", "Леди Веспира", "Лисиллин", "Лорд Нечестивец",
        "Тенекоготь", "Долгоног-несушка"
    },
    ["Stonetalon Mountains"] = {
        "Брат Вороний Дуб", "Штейгер Риггер", "Нал'тазар",
        "Величавый патриарх", "Часовой Амарассан", "Сестра Терзающая",
        "Крыло скорби", "Надсмотрщик Хлестоклык", "Мстительное древо"
    },
    ["Ashenvale"] = {
        "Аккрилус", "Аптекарь Фалтис", "Веткохват", "Эк'алом",
        "Леди Веспия", "Ревун из тумана", "Шоколадный Плавник", "Дуболап", "Принц Рейз",
        "Роргиш Мощная Челюсть", "Вожак терроволков", "Урсол'лок"
    },
    ["The Barrens"] = {
        "Тригор Хлестун", "Эан Быстрая Река", "Посол Ярокров",
        "Аззира Клинок Небес", "Копьелом", "Бронтус",
        "Капитан Герогг Тяжелоступ", "Землекоп Огнеплав", "Дишу",
        "Старый мистик Остроморд", "Инженер Безобразец", "Штейгер Грилз",
        "Жрица Земли Гукк'рок", "Гешарахан", "Хагг Тауребой",
        "Ханна Остролист", "Хеггин Камнеус", "Вожак стаи Хумар",
        "Малгин Ячменовар", "Маркус Бел", "Раториан", "Каменное Копье",
        "Силитид-жнец", "Сестра Коготь Кургана", "Слякохлюп",
        "Фырк Дразнила", "Каменная рука", "Быстрогрив", "Свинеар Копьешкур",
        "Такк Прыгун", "Тора Оперенная Луна", "Громоступ"
    },
    ["Thousand Needles"] = {
        "Акеллиос Изгнанник", "Глупошмыг", "Харб Поганая Гора",
        "Сердцерез", "Железноглаз Неуязвимый", "Кркк'кс", "Коварное Жало"
    },
    ["Desolace"] = {
        "Проклятый Скользящий Плавник", "Цапчик", "Проклятый кентавр", "Хохотунья",
        "Шшшперак", "Каскк", "Принц Келлен"
    },
    ["Tanaris"] = {
        "Костяной ведьмак", "Циклок Безумный", "Углекрыл",
        "Хаарка Ненасытный", "Джин'Заллах Хозяин Барханов", "Крегг Кильватель",
        "Неуклюжий ужас", "Безжалостный хромоног", "Омгорн Заблудший",
        "Сориид Пожиратель", "Дух проклятого", "Военный вождь Краззилак"
    },
    ["Felwood"] = {
        "Алшир Гиблодых", "Смертный вой", "Дессекус", "Испепелитель", "Полукров",
        "Олм Мудрый", "Яролап", "Онгар"
    },
    ["Azshara"] = {
        "Антилос", "Костяной ведьмак", "Привратник Грознорев", "Генерал Фангферрор",
        "Леди Сесспира", "Неуклюжий ужас", "Магистр Соколиный Шлем",
        "Мастер Страхожуть", "Моннос Древний", "Чешуебород",
        "Дух проклятого", "Эвалчарр", "Привидение Варо'тена"
    },
    ["Un'Goro Crater"] = {
        "Матка Завас", "Графф", "Король Мош", "Равазавр-матриарх",
        "Ак'лок"
    },
    ["Silithus"] = {
        "Гретир", "Грубтор", "Ураганий", "Креллак", "Лапресс",
        "Рекс Ашил", "Сетис", "Сумеречный владыка Эверан", "Зора"
    },
    ["Feralas"] = {
        "Мушгог", "Скарр Сломленный", "Разза", "Антилус Парящий",
        "Араш-етис", "Рокотун Ловец", "Ромбоголов",
        "Брат листвы", "Леди Сзалла", "Старый Серобрюх", "Квирот",
        "Рыкун"
    },
    ["Winterspring"] = {
        "Лазурис", "Костяной ведьмак", "Генерал Колбатанн", "Гриззл Снежная Лапа",
        "Кашох Разоритель", "Леди Хедерина", "Неуклюжий ужас",
        "Меззир Ревун", "Рак'шири", "Дух проклятого"
    },
    ["Dustwallow Marsh"] = {
        "Краегор", "Воровской Глаз", "Черная вдова Мглистой пещеры", "Дарт",
        "Дрогот Бродяга", "Хайок", "Морской черт", "Слизнечерв", "Чешуекус",
        "Гниль"
    },
    ["Elwynn Forest"] = {
        "Федфенхель", "Графф Swiftbite", "Моргана Лукавая", "Мать Клык",
        "Нарг Надсмотрщик", "Турос Ловкорук"
    },
    ["Dun Morogh"] = {
        "Бьярн", "Идан Ревун", "Гибломор", "Великий Отец Арктикус",
        "Твердоспин", "Серый"
    },
    ["Tirisfal Glades"] = {
        "Зверр", "Диб", "Фермер Соллиден", "Тень Феллисенты", "Заблудшая душа",
        "Муад", "Куссан Жалящий", "Шри'скалк", "Страдающая душа"
    },
    ["Westfall"] = {
        "Зомбированный дворянин", "Мариса дю Пэж", "Бракк", "Врагорез-4000",
        "Лепритус", "Старший землекоп", "Сержант Острый Коготь", "Сларк", "Сарыч"
    },
    ["Loch Modan"] = {
        "Главарь Галгош", "Амогг Сокрушитель", "Кубб", "Гош-Халдир",
        "Лорд Кондар", "Магош", "Шанда Прядильщица"
    },
    ["Silverpine Forest"] = {
        "Чарокнижник Янтарной мельницы", "Жуткоклык", "Кретис Тенеткач",
        "Старый Губач", "Регент Когтя Ворона", "Костолом из стаи Гнилошкуров", "Спутанная Грива"
    },
    ["Redridge Mountains"] = {
        "Камнесерд", "Трещунья", "Казон", "Костелом", "Рохх Молчаливый",
        "Искатель Аквалон", "Огнемордик", "Кальмарник", "Волкан"
    },
    ["Duskwood"] = {
        "Командор Сквернстром", "Фенрос", "Лорд Малатром", "Волкус",
        "Нараксис", "Нефару"
    },
    ["Wetlands"] = {
        "Военачальник клана Драконьей Пасти", "Гарнег Обугленный Череп", "Костоглод", "Кровавая Вдова",
        "Ма'рук Змеиная Чешуя", "Подболотник", "Острозуб-матриарх", "Болотный слякоч"
    },
    ["Hillsbrad Foothills"] = {
        "Большой Самрас", "Ползух", "Леди Зефрис", "Нарилласанз", "Ро'Барк",
        "Шрамник", "Тамран Грозовая Вершина"
    },
    ["Alterac Mountains"] = {
        "Арага", "Злобный Бенджи", "Гравис Слипнот", "Джимми Вымогатель",
        "Ло'Грош", "Нарилласанз", "Сквой", "Маггаррак"
    },
    ["Arathi Highlands"] = {
        "Дарбелла Монтроуз", "Гнилобрюх", "Геомант Кремненож", "Коворк",
        "Молок Сокрушитель", "Нимар Душегуб", "Принц Назжак",
        "Руул Одинокий Камень", "Певица", "Залас Сухокожий"
    },
    ["Swamp of Sorrows"] = {
        "Узкий Плавник", "Гилмориан", "Капитан Змеюк", "Вождь из племени Заблудших",
        "Повар из племени Заблудших", "Облезлый Шип"
    },
    ["Badlands"] = {
        "Мастер Лопаторук", "7:XT", "Анатемус", "Барнабус",
        "Сломанный зуб", "Грохотун", "Тенегорнский командир", "Баррикада",
        "Боевой голем", "Зарикотль"
    },
    ["The Hinterlands"] = {
        "Мрачноус", "Сталеспин", "Джалинда Дракон Лета",
        "Мит'ретис Чаротворец", "Старый утесный прыгун", "Бритвокоготь",
        "Ретерокк Берсерк", "Рик", "Сухосерд Ловчий",
        "Зул'арек Злобный Охотник"
    },
    ["Stranglethorn Vale"] = {
        "Барабуль", "Верховная жрица Хай'ватна", "Курмокк", "Лорд Сакрасис",
        "Потрошила", "Ролох", "Чешуйчатое брюхо", "Интендант из легиона Изрубленного Щита",
        "Мигафоникс"
    },
    ["Searing Gorge"] = {
        "Faulty Боевой голем", "Верховный лорд Мастрогонд", "Рекк'тилак", "Жар",
        "Шлейпнарр", "Повелитель рабов Черносерд", "Смолдар"
    },
    ["Western Plaguelands"] = {
        "Штейгер Джеррис", "Штейгер Маркрид", "Скверногрив", "Лорд Малдаззар",
        "Гнилиус", "Палач из Алого ордена", "Верховный священник Алого ордена",
        "Дознаватель из Алого ордена", "Судья из Алого ордена", "Кузнец Алого ордена", "Кикиморд"
    },
    ["Burning Steppes"] = {
        "Костяной ведьмак", "Гиблопасть", "Горгон'ох", "Груклаш", "Хак'Зор",
        "Гематос", "Неуклюжий ужас", "Сломанный разоритель",
        "Дух проклятого", "Искра Ужаса", "Таурис Бальгарр", "Волкан"
    },
    ["Eastern Plaguelands"] = {
        "Костяной ведьмак", "Вестница смерти Селендра", "Дугган Громовой Молот",
        "Гиш Недвижимый", "Хед'маш Гниющий", "Верховный генерал Аббендис",
        "Лорд Темнокос", "Неуклюжий ужас", "Нерубский надзиратель",
        "Смертолов Ястребиное Копье", "Дух проклятого", "Полководец Молот'джин",
        "Зул'Брин Криводрев"
    },
    ["Blasted Lands"] = {
        "Провидец Акубар", "Костяной ведьмак", "Щелкун Разоритель", "Смертеглаз",
        "Бесстрашный", "Хрюггер", "Неуклюжий ужас", "Магронос Неуступчивый",
        "Моджо Зловредный", "Разор", "Дух проклятого", "Злобоклюй"
    },
    ["Eversong Woods"] = {"Элдинаркус", "Трегла"},
    ["Bloodmyst Isle"] = {"Фенисса Убийца"},
    ["Ghostlands"] = {"Доктор Белоручка"},
    ["Zangarmarsh"] = {"Трясинный скрытень", "Эмиссар резервуара Кривого Клыка", "Мартикар"},
    ["Hellfire Peninsula"] = {
        "Обжорень", "Мекторг Дикий", "Воракем Глашатай Судьбы"
    },
    ["Terokkar Forest"] = {"Расчленитель", "Вестник рока Джурим", "Ловец ястребов", "Окрек"},
    ["Nagrand"] = {"Бро'Газ Без Клана", "Жуткозуб", "Охотник Бездны Яр"},
    ["Blade's Edge Mountains"] = {"Гематион", "Моркруш", "Проповедник Маргром"},
    ["Netherstorm"] = {
        "Главный инженер Лортандер", "Недремлющий Каратель", "Нурамок"
    },
    ["Shadowmoon Valley"] = {
        "Посол Жеррикар", "Страж портала Коллидус", "Краатор"
    },
    ["Howling Fjord"] = {
        "Король Пинг", "Перобас Кровожадный", "Вигдис Воительница"
    },
    ["Borean Tundra"] = {"Фумблуб Ветрозуб", "Ледорог", "Старый кристальный древень"},
    ["Grizzly Hills"] = {
        "Арктур", "Гроклар", "Пылающая ненависть", "Сирейна Костерез"
    },
    ["Zul'Drak"] = {"Гондрия", "Григен", "Ткач ужаса", "Часовой Зул'драка"},
    ["Dragonblight"] = {
        "Обезумевший беглец из деревни Инду'ле", "Верховный лорд Алого Натиска Дайон", "Тюкмут"
    },
    ["Sholazar Basin"] = {"Аотона", "Король Круш", "Локе'нахак"},
    ["The Storm Peaks"] = {
        "Дирки", "Сколл", "Затерянный во времени протодракон", "Вирагоса"
    },
    ["Icecrown"] = {
        "Верховный тан Йорфус", "Хильдана Похитительница Смерти", "Гниллий Древний"
    },
    ["The Deadmines"] = {
        "Зомбированный дворянин", "Мариса дю Пэж", "Шахтер Джонсон"
    },
    ["Wailing Caverns"] = {"Загадочный чудесный дракончик"},
    ["Shadowfang Keep"] = {"Капитан служителей Смерти"},
    ["The Stockade"] = {"Бругал Железный Кулак"},
    ["Gnomeregan"] = {"Посол из клана Черного Железа"},
    ["Razorfen Kraul"] = {
        "Слепой охотник", "Заклинательница земли Халмгар", "Копьешкур из племени Иглошкурых"
    },
    ["Scarlet Monastery"] = {
        "Азшир Неспящий", "Павший воитель", "Железноспин"
    },
    ["Maraudon"] = {"Мешлок Жнец"},
    ["Dire Maul"] = {"Лорд Хел'нурат", "Цу'зи"},
    ["Zul'Farrak"] = {"Пыльный призрак", "Сандарр Разоритель Барханов", "Зериллис"},
    ["Stratholme"] = {"Певчий Форрестен", "Череп", "Каменный Гребень"},
    ["Blackrock Depths"] = {
        "Панцер Непобедимый", "Пиромант Зерно Мудрости", "Верек",
        "Тюремщик Стилгисс"
    },
    ["Blackrock Spire"] = {
        "Баннок Люторез", "Пылающий страж Скверны", "Хрустальный Клык", "Гок Крепкобив",
        "Боевой предводитель клана Черной Вершины", "Мясник из клана Черной Вершины", "Лорд-волхв из клана Черной Вершины",
        "Горалук Треснувшая Наковальня", "Джед Руновед"
    }
}

elseif locale == "zhCN" then

addon.rares = {
    ["Mulgore"] = {
        "执行者埃米尔冈德", "鬼嚎", "马兹拉纳其", "海特拉什",
        "断矛", "扫荡者"
    },
    ["Durotar"] = {
        "獠牙队长", "死亡毒蝎", "斯考恩",
        "吉欧洛德·杂斑", "科卡尼斯", "科提斯中士"
    },
    ["Teldrassil"] = {
        "恶臭的黑苔兽", "暮色巡游者", "愤怒的谢尔达", "格雷莫尔",
        "瑟雷基尔", "乌鲁森"
    },
    ["Darkshore"] = {
        "卡尼沃斯", "召火者拉迪森", "残忍的弗拉格莫克",
        "莫嘉泽尔", "薇丝普拉", "利斯林", "辛斯雷尔",
        "影爪", "雌性森林陆行鸟"
    },
    ["Stonetalon Mountains"] = {
        "拉文诺克修士", "工头里格尔", "纳尔塔萨",
        "巨翼雄兽", "哨兵阿玛拉珊", "瑞雯",
        "悲哀之翼", "工头维普弗恩", "狂怒的树人"
    },
    ["Ashenvale"] = {
        "阿克瑞鲁斯", "药剂师法尔瑟斯", "钳枝沼泽兽", "埃卡洛姆",
        "薇丝比娅", "迷雾嚎叫者", "玛戈芬", "橡爪", "拉兹王子",
        "洛吉什", "恐狼族长", "乌索洛克"
    },
    ["The Barrens"] = {
        "鞭笞者特里高雷", "艾恩·流水", "布拉德雷大使",
        "天空之刃艾泽里", "断矛", "布隆塔斯",
        "基洛戈·锤趾队长", "矿工弗雷姆", "迪舒",
        "秘法师拉佐斯诺特", "技师维尔雷格", "工头葛瑞尔斯",
        "土地祭司古科罗克", "格沙拉罕", "哈格",
        "汉娜·刃叶", "赫金·石须", "狮王休玛",
        "玛尔金·麦酒", "马库斯·拜尔", "拉索利安", "石枪",
        "异种收割者", "莱丝塔伦", "淤泥畸体",
        "土狼斯诺特", "石臂", "迅鬃斑马", "斯文格加特·矛鬃",
        "“跳跃者”塔克", "索拉·羽月", "雷蹄蜥蜴"
    },
    ["Thousand Needles"] = {
        "流放者阿切鲁斯", "吉比斯尼克", "哈尔伯·邪泉",
        "锐爪飞心", "不可战胜的铁眼", "克尔克斯克", "邪刺恐蝎"
    },
    ["Desolace"] = {
        "可憎的滑刃纳迦", "硬壳蟹", "被诅咒的半人马", "基格勒尔",
        "西斯普拉克", "卡斯克", "凯雷恩王子"
    },
    ["Tanaris"] = {
        "骨巫", "疯狂的塞科洛克", "余烬之翼",
        "贪婪的哈尔卡", "唤沙者辛萨拉", "克雷格·尼哈鲁",
        "笨拙的憎恶", "残忍的疱爪土狼", "失落者奥姆高尔",
        "吞噬者索利德", "诅咒者之魂", "克莱吉拉克"
    },
    ["Felwood"] = {
        "奥辛尔·灵息", "死亡之嚎", "迪塞库斯", "伊姆拉图斯", "莫戈雷斯",
        "智者奥尔姆", "拉吉波尔", "欧加尔"
    },
    ["Azshara"] = {
        "安提里奥斯", "骨巫", "护门者拉格罗尔", "方弗罗将军",
        "瑟丝彼拉", "笨拙的憎恶", "玛济斯·鹰盔",
        "菲达雷德", "长者莫诺斯", "鳞须海龟",
        "诅咒者之魂", "伊夫卡尔", "瓦罗森的幽灵"
    },
    ["Un'Goro Crater"] = {
        "萨瓦丝女王", "格鲁夫", "暴龙之王摩什", "暴掠龙女王",
        "乌卡洛克"
    },
    ["Silithus"] = {
        "格雷瑟尔", "格鲁布索尔", "哈瑞坎尼安", "克里拉克", "拉普雷斯",
        "雷克斯·亚希尔", "瑟提斯", "暮光之王艾沃兰", "苏尔拉"
    },
    ["Feralas"] = {
        "姆斯高格", "沮丧的斯卡尔", "拉扎尔", "滑翔者安蒂鲁斯",
        "阿拉瑟希斯", "潜行者布拉多尔", "钻石头",
        "纳尔利夫", "莎尔莱", "灰腹老熊", "基洛特",
        "咆哮者"
    },
    ["Winterspring"] = {
        "埃苏罗斯", "骨巫", "科巴塔恩将军", "雪爪灰熊怪",
        "劫掠者卡苏克", "赫达琳", "笨拙的憎恶",
        "嚎叫者米基尔", "拉克西里", "诅咒者之魂"
    },
    ["Dustwallow Marsh"] = {
        "布雷姆戈", "贼眼", "暗雾寡妇蛛", "达尔特",
        "咆哮者杜格斯", "哈尤克", "安戈雷尔", "泥浆虫", "雷普斯凯尔",
        "腐烂者"
    },
    ["Elwynn Forest"] = {
        "费德菲尼尔", "格鲁夫 Swiftbite", "狡猾的莫加尼", "母蜘蛛",
        "监工纳尔格", "索罗斯·莱特芬格"
    },
    ["Dun Morogh"] = {
        "游荡的冰爪熊", "饥饿的雪怪", "吉波维特", "霜鬃长老",
        "锤脊", "狂暴的冬狼"
    },
    ["Tirisfal Glades"] = {
        "贝恩", "迪布", "农夫索利丹", "菲林森特的阴影", "失落的灵魂",
        "穆亚德", "毒针雷萨恩", "瑟斯库克", "痛苦的灵魂"
    },
    ["Westfall"] = {
        "被洗脑的贵族", "魔理莎·杜派格", "布拉克", "死神4000型",
        "莱布里萨斯", "掘地工头目", "利爪队长", "斯拉克", "乌尔图斯"
    },
    ["Loch Modan"] = {
        "大头目加尔高什", "摧毁者埃摩戈", "卡布", "格什哈尔迪",
        "康达尔", "玛高什", "纺织者杉达"
    },
    ["Silverpine Forest"] = {
        "安伯米尔书记员", "血牙狼人", "暗网编织者克雷希斯",
        "维斯迦尔", "鸦爪摄政者", "腐皮惩戒者", "斯纳麦恩"
    },
    ["Redridge Mountains"] = {
        "波德哈特", "查特", "卡松", "雷布查斯", "沉默的罗恩",
        "搜寻者埃库隆", "斯纳弗莱尔", "斯奎迪克", "沃尔查"
    },
    ["Duskwood"] = {
        "指挥官菲斯托姆", "芬罗斯", "玛拉索姆公爵", "鲁伯斯",
        "纳拉克西斯", "奈法鲁"
    },
    ["Wetlands"] = {
        "龙喉军官", "加内格·焦颅", "纳博恩", "吸血寡妇",
        "马鲁克·龙鳞", "米尔洛", "刺喉雌龙", "斯拉丁"
    },
    ["Hillsbrad Foothills"] = {
        "萨姆拉斯", "克雷普塞斯", "塞菲莉斯", "纳瑞尔拉萨斯", "洛巴尔克",
        "斯卡基尔", "塔尔玛·雷矛"
    },
    ["Alterac Mountains"] = {
        "阿拉加", "暴躁的本希", "格拉维斯·斯里诺特", "流血者吉米",
        "洛格罗什", "纳瑞尔拉萨斯", "斯格霍尔", "玛格拉克"
    },
    ["Arathi Highlands"] = {
        "达贝尔·蒙特罗斯", "弗尔伯利", "地占师弗林塔格", "考沃克",
        "碎骨者穆罗克", "屠戮者尼玛尔", "纳兹加克王子",
        "鲁尔·巨石", "歌唱者", "扎拉斯·枯木"
    },
    ["Swamp of Sorrows"] = {
        "芬加特", "基摩里安", "维尔玛克中尉", "失落者酋长",
        "失落者厨师", "摩塔索恩"
    },
    ["Badlands"] = {
        "挖掘专家舒尔弗拉格", "7:XT", "安纳塞姆斯", "巴纳布斯",
        "断牙", "拉姆布勒", "暗炉指挥官", "路障",
        "作战傀儡", "扎里科特"
    },
    ["The Hinterlands"] = {
        "格瑞姆格斯", "铁背龟", "加林德·夏龙",
        "附魔师米瑟雷希斯", "海崖奔跳者", "锋爪",
        "狂暴者雷瑟罗克", "雷克", "漫步者维瑟哈特",
        "祖拉雷克"
    },
    ["Stranglethorn Vale"] = {
        "戈鲁格尔", "高阶祭司海瓦纳", "库尔莫克", "萨克拉希斯",
        "瑞帕", "罗洛克", "金鳞蜥蜴", "裂盾军需官",
        "维里弗尼克斯"
    },
    ["Searing Gorge"] = {
        "Faulty 作战傀儡", "玛斯托格", "雷克提拉克", "斯卡尔德",
        "夏雷纳尔", "奴隶主托恩·黑心", "斯莫达尔"
    },
    ["Western Plaguelands"] = {
        "工头杰瑞斯", "工头玛希瑞德", "弗曼恩", "玛达萨尔",
        "普特迪乌斯", "血色刽子手", "血色高阶牧师",
        "血色质问者", "血色法官", "血色铁匠", "哈斯克"
    },
    ["Burning Steppes"] = {
        "骨巫", "死亡之喉", "高戈诺奇", "格鲁克拉什", "哈克佐尔",
        "赫玛图斯", "笨拙的憎恶", "失控的掠夺者",
        "诅咒者之魂", "特罗斯巴克", "萨里斯·巴加尔", "沃尔查"
    },
    ["Eastern Plaguelands"] = {
        "骨巫", "亡语者塞伦德", "杜甘·蛮锤",
        "僵硬的吉斯", "腐烂者海德姆什", "阿比迪斯将军",
        "黑暗镰刀", "笨拙的憎恶", "蛛怪监工",
        "死亡猎人霍克斯比尔", "诅咒者之魂", "督军塔雷金",
        "祖布林·扭枝"
    },
    ["Blasted Lands"] = {
        "先知阿库巴尔", "骨巫", "掠夺者科拉克", "死眼",
        "德雷斯克恩", "格朗特", "笨拙的憎恶", "顽强的玛古诺斯",
        "扭曲者莫吉尔", "毁灭", "诅咒者之魂", "斯比弗雷尔"
    },
    ["Eversong Woods"] = {"埃迪纳库斯", "特雷格拉"},
    ["Bloodmyst Isle"] = {"刺客芬妮萨"},
    ["Ghostlands"] = {"维斯利姆博士"},
    ["Zangarmarsh"] = {"泥沼潜伏者", "盘牙大使", "玛尔提卡"},
    ["Hellfire Peninsula"] = {
        "弗尔古格", "野蛮的麦索格", "沃拉克姆"
    },
    ["Terokkar Forest"] = {"残骨骷髅", "灾难预言者尤瑞姆", "捕鹰者", "奥卡雷"},
    ["Nagrand"] = {"独行者布罗加斯", "血齿鳄", "空灵猎手亚尔"},
    ["Blade's Edge Mountains"] = {"赫玛希恩", "莫克拉什", "演讲者玛尔高姆"},
    ["Netherstorm"] = {
        "主工程师洛杉德尔", "惩罚者埃沃考尔", "努拉莫克"
    },
    ["Shadowmoon Valley"] = {
        "耶瑞卡尔大使", "扭曲观察者科里度斯", "克兰托尔"
    },
    ["Howling Fjord"] = {
        "乒乒国王", "嗜血者比洛巴斯", "女战士维格蒂丝"
    },
    ["Borean Tundra"] = {"方卜拉布·飞轮", "冰角", "水晶树皮"},
    ["Grizzly Hills"] = {
        "阿克图瑞斯", "格罗卡拉", "沸腾之怨", "雕骨者希蕾娜"
    },
    ["Zul'Drak"] = {"古德利亚", "戈雷根", "恐惧织网者", "祖达克斥候"},
    ["Dragonblight"] = {
        "疯狂的因度雷幸存者", "血色领主达尔因", "图克姆斯"
    },
    ["Sholazar Basin"] = {"奥图纳", "暴龙王克鲁什", "洛卡纳哈"},
    ["The Storm Peaks"] = {
        "迪尔奇", "逐日", "迷失始祖幼龙", "维拉苟萨"
    },
    ["Icecrown"] = {
        "大领主约夫斯", "海达娜·窃魂者", "古老的普迪图斯"
    },
    ["The Deadmines"] = {
        "被洗脑的贵族", "魔理莎·杜派格", "矿工约翰森"
    },
    ["Wailing Caverns"] = {"变异精灵龙"},
    ["Shadowfang Keep"] = {"死亡之誓"},
    ["The Stockade"] = {"布鲁高·铁拳"},
    ["Gnomeregan"] = {"黑铁大使"},
    ["Razorfen Kraul"] = {
        "盲眼猎手", "唤地者哈穆加", "剃刀沼泽刺鬃守卫"
    },
    ["Scarlet Monastery"] = {
        "永醒的艾希尔", "死灵勇士", "铁脊死灵"
    },
    ["Maraudon"] = {"收割者麦什洛克"},
    ["Dire Maul"] = {"赫尔努拉斯", "苏斯"},
    ["Zul'Farrak"] = {"灰尘怨灵", "杉达尔·沙掠者", "泽雷利斯"},
    ["Stratholme"] = {"弗雷斯特恩", "斯库尔", "石脊"},
    ["Blackrock Depths"] = {
        "无敌的潘佐尔", "控火师罗格雷恩", "维雷克",
        "典狱官斯迪尔基斯"
    },
    ["Blackrock Spire"] = {
        "班诺克·巨斧", "燃烧地狱卫士", "水晶之牙", "霍克·巴什古德",
        "尖石统帅", "尖石屠夫", "尖石首席法师",
        "古拉鲁克", "杰德"
    }
}

elseif locale == "zhTW" then

addon.rares = {
    ["Mulgore"] = {
        "執行者埃米爾岡德", "鬼嚎", "馬茲拉納奇", "鷹女海特拉什",
        "暴矛", "掃蕩者"
    },
    ["Durotar"] = {
        "獠牙隊長", "死亡毒蠍", "惡魔編織者斯考恩",
        "吉歐洛德·雜斑", "督軍科卡尼斯", "指揮官柯堤斯"
    },
    ["Teldrassil"] = {
        "惡臭的黑苔獸", "暮色巡者", "憤怒的謝爾達", "格雷莫爾",
        "瑟雷基爾", "烏魯森"
    },
    ["Darkshore"] = {
        "『擊破者』卡尼沃斯", "召火者拉迪森", "殘忍的弗拉格莫克",
        "莫嘉澤爾女士", "薇絲普拉", "利斯林", "辛斯雷爾領主",
        "影爪", "雌性森林陸行鳥"
    },
    ["Stonetalon Mountains"] = {
        "拉文諾克修士", "工頭里格爾", "納爾塔薩",
        "巨翼族王", "哨兵阿瑪拉珊", "鷹女瑞雯",
        "悲哀之翼", "監工維普弗恩", "狂怒的古樹"
    },
    ["Ashenvale"] = {
        "阿克瑞魯斯", "藥劑師法爾瑟斯", "鉗枝沼澤獸", "埃卡洛姆",
        "薇絲比婭女士", "迷霧嚎叫者", "瑪戈芬", "橡爪", "拉茲王子",
        "洛吉什", "恐狼族長", "厄索洛克"
    },
    ["The Barrens"] = {
        "『鞭笞者』特里高雷", "艾恩·流水", "布拉德雷大使",
        "『天刃』艾澤里", "斷矛", "布隆塔斯",
        "基洛戈·錘趾隊長", "礦工弗雷姆", "迪舒",
        "秘術使拉佐斯諾特", "工程師維爾雷格", "工頭葛瑞爾斯",
        "土地祭司古科羅克", "格沙拉罕", "哈格",
        "漢娜·刃葉", "赫金·石鬚", "『獅王』修瑪",
        "瑪爾金·麥酒", "馬庫斯·拜爾", "拉索利安", "石槍",
        "異種收割者", "鷹女萊絲塔倫", "淤泥異常體",
        "『土狼』斯諾特", "石臂", "迅鬃斑馬", "斯文格加特·矛鬃",
        "『跳躍者』塔克", "索拉·羽月", "雷蹄蜥蜴"
    },
    ["Thousand Needles"] = {
        "『放逐者』阿基里歐斯", "吉比斯尼克", "哈爾伯·邪泉",
        "撕心者", "無敵的鐵眼", "克爾基斯", "邪刺恐蠍"
    },
    ["Desolace"] = {
        "可憎的滑刃納迦", "硬殼", "被詛咒的半人馬", "基格勒爾",
        "西斯普拉克", "卡斯克", "凱雷恩王子"
    },
    ["Tanaris"] = {
        "骸骨女巫", "『瘋子』塞科洛克", "燼翼",
        "貪婪的哈爾卡", "喚沙者辛薩拉", "克雷格·尼哈魯",
        "笨拙的憎惡", "殘忍的皰爪土狼", "『失落者』歐姆高爾",
        "『吞噬者』索利德", "詛咒神教之靈", "克萊吉拉克"
    },
    ["Felwood"] = {
        "奧辛爾·靈息", "死亡之嚎", "迪塞庫斯", "伊姆拉圖斯", "莫戈雷斯",
        "『智者』奧爾姆", "怒掌", "歐加爾"
    },
    ["Azshara"] = {
        "安提里奧斯", "骸骨女巫", "守門者暴吼", "方弗羅將軍",
        "瑟絲彼拉女士", "笨拙的憎惡", "博學者鷹盔",
        "菲達雷德", "長者莫諾斯", "鱗鬚海龜",
        "詛咒神教之靈", "伊夫卡爾", "瓦羅森的鬼魂"
    },
    ["Un'Goro Crater"] = {
        "薩瓦絲女王", "格魯夫", "暴龍之王莫什", "暴掠龍族母",
        "烏卡洛克"
    },
    ["Silithus"] = {
        "格雷瑟爾", "格魯布索爾", "哈瑞坎尼安", "克里拉克", "拉普雷斯",
        "雷克斯·亞希爾", "瑟提斯", "暮光領主艾沃蘭", "蘇爾拉"
    },
    ["Feralas"] = {
        "姆斯高格", "傷殘的斯卡爾", "拉札", "『翱翔者』安蒂魯斯",
        "阿拉瑟希斯", "『潛獵者』血吼", "鑽石頭",
        "樹瘤·葉伴", "莎爾萊女士", "灰腹老熊", "基洛特",
        "咆哮者"
    },
    ["Winterspring"] = {
        "埃蘇羅斯", "骸骨女巫", "科巴塔恩將軍", "雪爪灰熊怪",
        "『劫奪者』卡蘇克", "赫達琳女士", "笨拙的憎惡",
        "『嚎叫者』米基爾", "拉克西里", "詛咒神教之靈"
    },
    ["Dustwallow Marsh"] = {
        "布雷姆戈", "賊眼", "暗霧寡婦蛛", "達爾特",
        "『咆哮者』杜格斯", "哈尤克", "安戈雷爾領主", "軟泥蟲", "雷普斯凱爾",
        "腐爛者"
    },
    ["Elwynn Forest"] = {
        "費德菲尼爾", "格魯夫 Swiftbite", "狡猾的莫加尼", "母蜘蛛",
        "監工納爾格", "索羅斯·萊特芬格"
    },
    ["Dun Morogh"] = {
        "遊蕩的冰爪熊", "飢餓的雪怪", "吉波維特", "霜鬃長老阿克提卡斯",
        "錘脊者", "狂暴的冬狼"
    },
    ["Tirisfal Glades"] = {
        "貝恩", "迪布", "農夫索利丹", "菲林森特的陰影", "失落的靈魂",
        "穆亞德", "『激怒者』雷薩恩", "瑟斯庫克", "痛苦之靈"
    },
    ["Westfall"] = {
        "被洗腦的貴族", "瑪里莎·杜派格", "布拉克", "敵人收割者4000",
        "萊普利瑟斯", "掘地工頭目", "利爪隊長", "斯拉克", "烏爾圖斯"
    },
    ["Loch Modan"] = {
        "大頭目加爾高西", "『碾碎者』埃摩戈", "庫布", "戈許哈爾迪爾",
        "康達爾", "瑪高什", "『編織者』杉達"
    },
    ["Silverpine Forest"] = {
        "安伯米爾法術抄寫員", "血牙狼人", "『旋影者』克雷希斯",
        "維斯迦爾", "鴉爪攝政者", "腐皮懲戒者", "斯納麥恩"
    },
    ["Redridge Mountains"] = {
        "波德哈特", "查特", "卡松", "雷布查斯", "沉默的羅恩",
        "搜尋者埃庫隆", "斯納弗賴爾", "斯奎迪克", "沃爾查"
    },
    ["Duskwood"] = {
        "指揮官菲斯托姆", "芬羅斯", "瑪拉索姆領主", "魯伯斯",
        "納拉克西斯", "奈法魯"
    },
    ["Wetlands"] = {
        "龍喉軍官", "加內格·焦顱", "納博恩", "吸血寡婦",
        "馬魯克·龍鱗", "米爾洛", "刺喉龍族母", "斯拉丁"
    },
    ["Hillsbrad Foothills"] = {
        "薩姆拉斯", "克雷普塞斯", "塞菲莉斯女士", "納瑞爾拉薩斯", "洛巴爾克",
        "斯卡基爾", "塔爾瑪·雷矛"
    },
    ["Alterac Mountains"] = {
        "阿拉加", "暴躁的本希", "格拉夫斯·斯里諾特", "『流血者』吉米",
        "洛格羅什", "納瑞爾拉薩斯", "斯格霍爾", "瑪加拉克"
    },
    ["Arathi Highlands"] = {
        "達貝爾·蒙特羅斯", "弗爾伯利", "地卜師弗林塔格", "考沃克",
        "碎骨者穆羅克", "『屠戮者』尼瑪爾", "納茲加克王子",
        "盧爾·巨石", "詠唱者", "札拉斯·枯木"
    },
    ["Swamp of Sorrows"] = {
        "芬加特", "基摩里安", "維爾瑪克隊長", "失落者酋長",
        "失落者廚師", "摩塔索恩"
    },
    ["Badlands"] = {
        "挖掘專家舒爾弗拉格", "7:XT", "安納塞姆斯", "巴納布斯",
        "斷牙", "拉姆布勒", "影爐指揮官", "攻城魔像",
        "戰爭魔像", "札里科特"
    },
    ["The Hinterlands"] = {
        "格瑞姆格斯", "鐵背龜", "加林德·夏龍",
        "『附魔師』米瑟雷希斯", "海崖奔跳者", "鋒爪",
        "『狂暴者』雷瑟羅克", "雷克", "『漫步者』維瑟哈特",
        "祖拉雷克"
    },
    ["Stranglethorn Vale"] = {
        "戈魯格爾", "高階祭司海瓦納", "庫爾莫克", "薩克拉希斯領主",
        "瑞帕", "羅洛克", "金鱗蜥蜴", "裂盾軍需官",
        "維里弗尼克斯"
    },
    ["Searing Gorge"] = {
        "Faulty 戰爭魔像", "大領主瑪斯托格", "雷克提拉克", "斯卡爾德",
        "夏雷納爾", "奴隸主托恩·黑心", "斯莫達爾"
    },
    ["Western Plaguelands"] = {
        "工頭傑瑞斯", "工頭瑪希瑞德", "弗曼恩", "瑪達薩爾領主",
        "普特迪烏斯", "血色劊子手", "血色高階牧師",
        "血色審問者", "血色法官", "血色鐵匠", "哈斯克"
    },
    ["Burning Steppes"] = {
        "骸骨女巫", "死亡之喉", "高戈諾奇", "格魯克拉什", "哈克佐爾",
        "赫瑪多斯", "笨拙的憎惡", "失控的劫奪者",
        "詛咒神教之靈", "特羅斯巴克", "薩里斯·巴加爾", "沃爾查"
    },
    ["Eastern Plaguelands"] = {
        "骸骨女巫", "亡頌者塞倫德", "杜甘·蠻錘",
        "僵硬的吉斯", "『腐爛者』海德姆什", "大將軍阿比迪斯",
        "暗鐮領主", "笨拙的憎惡", "奈幽監督者",
        "亡靈獵手霍克斯比爾", "詛咒神教之靈", "督軍塔雷什森",
        "祖布林·扭枝"
    },
    ["Blasted Lands"] = {
        "『先知』阿庫巴爾", "骸骨女巫", "『劫奪者』科拉克", "死眼",
        "德雷斯克恩", "格朗特", "笨拙的憎惡", "不屈的瑪古諾斯",
        "『扭曲者』莫吉爾", "劫掠", "詛咒神教之靈", "斯比弗雷爾"
    },
    ["Eversong Woods"] = {"艾丁納克斯", "崔格拉"},
    ["Bloodmyst Isle"] = {"『刺客』凡妮莎"},
    ["Ghostlands"] = {"魏德林博士"},
    ["Zangarmarsh"] = {"泥沼潛伏者", "盤牙特使", "瑪堤卡"},
    ["Hellfire Peninsula"] = {
        "飽食者", "狂野的米克索格", "弗拉肯·厄語者"
    },
    ["Terokkar Forest"] = {"殘廢者", "末日預言者裘瑞姆", "鷹剋", "歐克瑞克"},
    ["Nagrand"] = {"無氏族的伯卡茲", "鋒牙", "虛無獵人亞爾"},
    ["Blade's Edge Mountains"] = {"赫瑪西恩", "崩碎者", "首長瑪庫隆"},
    ["Netherstorm"] = {
        "首席工程師羅桑德", "恆核懲戒者", "努拉莫克"
    },
    ["Shadowmoon Valley"] = {
        "傑瑞卡大使", "『扭曲監視者』克里達斯", "克拉特"
    },
    ["Howling Fjord"] = {
        "乒乒王", "『嗜血者』佩洛巴斯", "『戰爭侍女』葳格迪斯"
    },
    ["Borean Tundra"] = {"方寶·機風", "冰角", "老晶樹"},
    ["Grizzly Hills"] = {
        "大角", "葛洛克拉", "沸騰憎恨", "『雕骨者』塞瑞安"
    },
    ["Zul'Drak"] = {"剛卓亞", "格里根", "恐懼紡織者", "祖爾德拉克哨兵"},
    ["Dragonblight"] = {
        "瘋狂的因度雷生還者", "血色大領主黛昂", "土克瑪斯"
    },
    ["Sholazar Basin"] = {"奧托納", "克洛許王", "羅奎納哈克"},
    ["The Storm Peaks"] = {
        "德碁", "史科爾", "時光流逝元龍", "維拉苟莎"
    },
    ["Icecrown"] = {
        "大族長裘弗斯", "希爾達娜·亡據者", "古老的普崔達斯"
    },
    ["The Deadmines"] = {
        "被洗腦的貴族", "瑪里莎·杜派格", "礦工強森"
    },
    ["Wailing Caverns"] = {"變異精靈龍"},
    ["Shadowfang Keep"] = {"死亡誓言者隊長"},
    ["The Stockade"] = {"布魯戈·艾爾克納寇"},
    ["Gnomeregan"] = {"黑鐵大使"},
    ["Razorfen Kraul"] = {
        "盲眼獵手", "喚地者哈穆加", "剃刀沼澤刺鬃守衛"
    },
    ["Scarlet Monastery"] = {
        "不眠的艾希爾", "亡靈勇士", "鐵脊死靈"
    },
    ["Maraudon"] = {"『收割者』麥什洛克"},
    ["Dire Maul"] = {"赫爾努拉斯領主", "蘇斯"},
    ["Zul'Farrak"] = {"灰塵怨靈", "杉達爾·沙掠者", "澤雷利斯"},
    ["Stratholme"] = {"爐邊歌手弗瑞斯坦", "斯庫爾", "石脊"},
    ["Blackrock Depths"] = {
        "無敵的潘佐爾", "火占師羅格雷恩", "維雷克",
        "護衛斯迪爾基斯"
    },
    ["Blackrock Spire"] = {
        "班諾克·巨斧", "燃燒惡魔守衛", "水晶之牙", "霍克·巴什古德",
        "尖石戰鬥統帥", "尖石屠夫", "尖石首席魔導師",
        "古拉魯克", "傑德"
    }
}

end
