local _, addon = ...

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
