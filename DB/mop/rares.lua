local _, addon = ...

--Unitscan feature broken on mop client
if addon.gameVersion >= 50000 then
    return
end
addon.rares = {
    ["Mulgore"] = {
        "Pokey Thornmantle", "Arra'chea", "Doomsayer Wiserunner",
        "Enforcer Emilgund", "Mazzranache", "Sister Hatelash", "Snagglespear",
        "The Rake"
    },
    ["Durotar"] = {
        "Captain Flat Tusk", "Death Flayer", "Felweaver Scornn",
        "Geolord Mottle", "Sergeant Curtis"
    },
    ["Teldrassil"] = {
        "Agal", "Blackmoss the Fetid", "Duskstalker", "Fury Shelda", "Grimmaw",
        "Threggil", "Uruson"
    },
    ["Moonglade"] = {"Xavinox"},
    ["Darkshore"] = {
        "Ivus the Decayed", "Ivus the Forest Lord", "Agathe Wyrmwood",
        "Alash'anir", "Aman", "Amberclaw", "Athil Dewfire", "Athrikus Narassin",
        "Blackpaw", "Burninator Mark V", "Carnivous the Breaker",
        "Commander Drald", "Commander Ral'esh", "Conflagros", "Croz Bloodrage",
        "Cyclarus", "Firecaller Radison", "Flagglemurk the Cruel",
        "Glimmerspine", "Granokk", "Gren Tornfur", "Grimhorn", "Hydrath",
        "Lady Moongazer", "Lady Vespira", "Licillin", "Lord Sinslayer",
        "Madfeather", "Moxo the Beheader", "Mrggr'marr", "Onu",
        "Orwell Stevenson", "Sapper Odette", "Scalefiend", "Shadowclaw",
        "Shattershard", "Soggoth the Slitherer", "Stonebinder Ssra'vess",
        "Strider Clutchmother", "Thelar Moonstrike", "Twilight Prophet Graeme",
        "Zim'kaga"
    },
    ["Stonetalon Mountains"] = {
        "Arae", "Brother Ravenoak", "Dustflight the Cowardly", "Feras",
        "Goldenback", "Iriss the Widow", "Khep-Re", "Nal'taszar",
        "Pridewing Patriarch", "Quall", "Sister Riven", "Sorrow Wing",
        "Sparkwing", "Taskmaster Whipfang", "Tenok", "Volux"
    },
    ["Ashenvale"] = {
        "Akkrilus", "Apothecary Falthis", "Branch Snapper",
        "Darkslayer Mordenthal", "Eck'alom", "Lady Vespia", "Mist Howler",
        "Oakpaw", "Prince Raze", "Rorgish Jowl", "Terrowulf Packlord",
        "Ursol'lok"
    },
    ["Northern Barrens"] = {
        "Trigore the Lasher", "Boahn", "Brokespear", "Dishu",
        "Elder Mystic Razorsnout", "Engineer Whirleygig", "Foreman Grills",
        "Gesharahan", "Humar the Pridelord", "Rathorian", "Rocklance",
        "Sister Rathtalon", "Sludge Anomaly", "Stonearm", "Swiftmane",
        "Takk the Leaper"
    },
    ["Southern Barrens"] = {
        "Azzere the Skyblade", "Captain Gerogg Hammertoe", "Digger Flameforge",
        "Geopriest Gukk'rok", "Hagg Taurenbane", "Heggin Stonewhisker",
        "Malgin Barleybrew", "Silithid Harvester", "Snort the Heckler",
        "Stonearm", "Swinegart Spearhide", "Thunderstomp"
    },
    ["Thousand Needles"] = {
        "Achellios the Banished", "Barnacle Jim", "Cyn", "Gibblesnik",
        "Harb Foulmountain", "Ironeye the Invincible", "Kaxx", "Krkk'kx",
        "Nyaj", "Rrakk", "Skyshadow", "Strix the Barbed", "The Barbed Horror",
        "Venomclaw", "Vile Sting"
    },
    ["Desolace"] = {
        "Accursed Slitherblade", "Crusty", "Cursed Centaur", "Giggler",
        "Hissperak", "Kaskk", "Prince Kellen"
    },
    ["Tanaris"] = {
        "Ainamiss the Hive Queen", "Andre Firebeard",
        "Aquementas the Unchained", "Caliph Scorpidsting", "Emberwing",
        "Fronkle the Disturbed", "Haarka the Ravenous", "Harakiss the Infestor",
        "Hellgazer", "Jin'Zallah the Sandbringer", "Kregg Keelhaul",
        "Occulus the Corrupted", "Omgorn the Lost", "Scorpitar", "Slaverjaw",
        "Soriid the Devourer", "Twisted Reflection of Narain",
        "Warleader Krazzilak"
    },
    ["Felwood"] = {
        "Alshirr Banebreath", "Blackbog the Fang", "Cida", "Death Howl",
        "Dessecus", "Dilennaa", "Duskcoat", "Fidonis", "Gezan", "Grimrot",
        "Grimrot", "Grovepaw", "Immolatus", "Mongress", "Needle",
        "Olm the Wise", "Ragepaw", "Spinecrawl", "The Ongar", "Thicket"
    },
    ["Azshara"] = {
        "Antilos", "Gatekeeper Rageroar", "General Fangferror", "Lady Sesspira",
        "N.U.T.Z.", "Scalebeard", "The Evalcharr", "Varo'then's Ghost"
    },
    ["Un'Goro Crater"] = {
        "Clutchmother Zavas", "Gruff", "King Mosh", "Ravasaur Matriarch",
        "Uhk'loc"
    },
    ["Silithus"] = {
        "Acroniss", "Bornix the Burrower", "Ffexk the Dunestalker", "Gretheer",
        "Grubthor", "Huricanian", "Infused Bedrock", "Karapax", "Krellack",
        "Lapress", "Losaj", "Manax", "Ogmot the Mad", "Prince Lakma", "Qem",
        "Qroshekx", "Qu'rik", "Rex Ashil", "Setis", "Ssinkrix", "Tix", "Toxx",
        "Twilight Lord Everun", "Xaarshej", "Zora"
    },
    ["Feralas"] = {
        "Mushgog", "Skarr the Broken", "The Razza", "Antilus the Soarer",
        "Arash-ethis", "Bloodroar the Stalker", "Diamond Head",
        "Gnarl Leafbrother", "Lady Szallah", "Lorthalium",
        "Mordei the Earthrender", "Old Grizzlegut", "Prince Lakma", "Qirot",
        "Skystormer", "Snarler"
    },
    ["Winterspring"] = {
        "Arcanus", "Azurous", "Bornak the Gorer", "Bruiser", "Gal'dorak",
        "General Colbatann", "Grizzle Snowpaw", "Iceclaw", "Kashoch the Reaver",
        "Manas", "Mezzir the Howler", "Norissis", "Quetzl", "Rak'shiri",
        "Ronak", "Sian-Rotam", "The Deep Tunneler"
    },
    ["Dustwallow Marsh"] = {
        "Anith", "Blinkeye the Rattler", "Brimgore", "Burgle Eye",
        "Darkmist Widow", "Dart", "Drogoth the Roamer", "Hayoc", "Heronis",
        "Hugeclaw", "Lord Angler", "Nychus", "Oozeworm", "Paraliss", "Ripscale",
        "Roth-Salam", "Scintillex", "Scruff", "Teromak", "The Rot"
    },
    ["Elwynn Forest"] = {
        "Bushtail", "Fedfennel", "Grizzled Ben", "Gruff Swiftbite",
        "Gug Fatcandle", "Lamepaw the Whimperer", "Morgaine the Sly",
        "Mother Fang", "Narg the Taskmaster", "Snoot the Rooter", "Tarantis",
        "Terrapis", "Thuros Lightfingers"
    },
    ["Dun Morogh"] = {
        "Bjarn", "Edan the Howler", "Gibblewilt", "Great Father Arctikus",
        "Hammerspine", "Timber", "Weaponized Rabbot"
    },
    ["Tirisfal Glades"] = {
        "Bayne", "Bonechewer", "Deeb", "Fangor", "Farmer Solliden",
        "Fellicent's Shade", "Hibernus the Sleeper", "Lost Soul", "Muad",
        "Nighthowl", "Plague", "Ressan the Needler", "Shadowstalker",
        "Sri'skulk", "Tormented Spirit"
    },
    ["Westfall"] = {
        "Brainwashed Noble", "Marisa du'Paige", "Brack", "Foe Reaper 4000",
        "Leprithus", "Master Digger", "Sergeant Brashclaw", "Slark", "Vultros"
    },
    ["Loch Modan"] = {
        "Ashtail", "Boss Galgosh", "Emogg the Crusher", "Geoshaper Maren",
        "Gosh-Haldir", "Grizlak", "Kubb", "Lord Condar", "Magosh",
        "Morick Darkbrew", "Nix", "Optimo", "Sagepaw", "Shanda the Spinner",
        "Whitefin"
    },
    ["Silverpine Forest"] = {
        "Aquarius the Unbound", "Berard the Moon-Crazed", "Bolgaff",
        "Corpsefeeder", "Effritus", "Fenwick Thatros", "Finn's Gambit", "Gnath",
        "Gorefang", "Kree", "Krethis the Shadowspinner", "Lost Gilnean Wardog",
        "Lost Son of Arugal", "Nightlash", "Thule Ravenclaw"
    },
    ["Redridge Mountains"] = {
        "Boulderheart", "Chatter", "Chitter", "Gnollfeaster", "Kazon",
        "Ribchaser", "Rohh the Silent", "Seeker Aqualon", "Snarlflare",
        "Squiddic"
    },
    ["Duskwood"] = {
        "Carved One", "Eliza", "Fenros", "Lightning Paw", "Lupos",
        "Marina DeSirrus", "Marus", "Naraxis", "Nefaru", "Terrapis",
        "The Cow King", "The Unknown Soldier", "Watcher Eva"
    },
    ["Wetlands"] = {
        "Chops", "Garneg Charskull", "Gazz the Loch-Hunter", "Gnawbone",
        "Leech Widow", "Ma'ruk Wyrmscale", "Mirelow", "Razormaw Matriarch",
        "Rufus Darkshot", "Sarltooth", "Sludginn", "Two-Toes"
    },
    ["Hillsbrad Foothills"] = {
        "Alitus", "Araga", "Big Samras", "Carcinak", "Chordix", "Cranky Benj",
        "Craw the Ravager", "Creepthess", "Dustwing", "Gravis Slipknot",
        "Indigos", "Jimmy the Bleeder", "Lady Zephris", "Little Bjorn",
        "Lo'Grosh", "Lopex", "Maggarrak", "Miasmiss", "Ro'Bark", "Scargil",
        "Skhowl", "Tamra Stormpike", "The Dark Prowler", "Weevil", "Zorn"
    },
    ["Arathi Highlands"] = {
        "Beastrider Kama", "Boros", "Branchlord Aldrus", "Burning Goliath",
        "Cackle", "Cresting Goliath", "Darbel Montrose", "Doomrider Helgrim",
        "Echo of Myzrael", "Foulbelly", "Foulbelly", "Fozruk",
        "Geomancer Flintdagger", "Glint", "Horrific Apparition",
        "Knight-Captain Aldrin", "Kor'gresh Coldrage", "Kovork",
        "Man-Hunter Rog", "Molok the Crusher", "Nimar the Slayer",
        "Overseer Krix", "Phalanax", "Plaguefeather", "Prince Nazjak",
        "Ragebeak", "Ripwing", "Rumbling Goliath", "Ruul Onestone", "Saurix",
        "Singer", "Skullripper", "Snuffles", "Swee", "Thundering Goliath",
        "Venomarus", "Yogursa", "Zalas Witherbark", "Zorn"
    },
    ["Swamp of Sorrows"] = {
        "Captain Wyrmak", "Chupacabros", "Dreamwatcher Forktongue", "Fingat",
        "Gib the Banana-Hoarder", "Gilmorian", "Ionis", "Jade", "Kash",
        "Lost One Chieftain", "Lost One Cook", "Molt Thorn",
        "Orlix the Swamplord", "Seawing", "Shimmerscale", "Yukiko"
    },
    ["Badlands"] = {
        "7:XT", "Anathemus", "Barnabus", "Barricade",
        "Blackshell the Impenetrable", "Broken Tooth", "Deathstrike", "Kalixx",
        "Needlefang", "Rumbler", "Serkett", "Shadowforge Commander", "Tabbs",
        "Vorticus", "War Golem", "Zaricotl", "Zormus"
    },
    ["The Hinterlands"] = {
        "Grimungous", "Ironback", "Jalinde Summerdrake",
        "Mith'rethis the Enchanter", "Ol' Muddle", "Old Cliff Jumper",
        "Razortalon", "Retherokk the Berserker", "The Reak",
        "Witherheart the Stalker", "Zul'arek Hatefowler"
    },
    ["Northern Stranglethorn"] = {
        "Gluggl", "High Priestess Hai'watna", "Mahamba", "Mogh the Dead",
        "Pogeyan", "Roloch", "Tsul'Kalu"
    },
    ["The Cape of Stranglethorn"] = {
        "Kurmokk", "Lord Sakrasis", "Ol' Eary", "Rippa", "Scale Belly",
        "Verifonix"
    },
    ["Searing Gorge"] = {
        "Avis", "Chromehound", "Crystalback", "Crystalfang", "Faulty War Golem",
        "Highlord Mastrogonde", "Hogzilla", "Rekk'tilac", "Rexxus", "Scald",
        "Scorpoxx", "Shleipnarr", "Slave Master Blackheart", "Slavermaw",
        "Smoldar", "Snips"
    },
    ["Western Plaguelands"] = {
        "Alit", "Aphis", "Dreadwhisper", "Foulmane", "Hamhide", "Heress",
        "Ironweb", "Large Vile Slime", "Lord Maldazzar", "Mange", "Mutilax",
        "Parasitus", "Putridius", "Scarlet Executioner", "Scarlet High Clerist",
        "Scarlet Interrogator", "Scarlet Judge", "Scarlet Smith", "The Husk",
        "Tracker", "Warg"
    },
    ["Burning Steppes"] = {
        "Azelisk", "Catal", "Chiaa", "Chromehound", "Deathmaw",
        "Favored of Isiset", "Gorgon'och", "Gruklash", "Hahk'Zor", "Hematos",
        "Jaxx the Rabid", "Magmagan", "Malfunctioning Reaver", "Ornat",
        "Sunwing", "Terrorspark", "Thauris Balgarr", "Venomspine", "Volchan"
    },
    ["Eastern Plaguelands"] = {
        "Baron Bloodbane", "Bleakheart", "Death Knight Soulbearer",
        "Death-Hunter Hawkspear", "Deathspeaker Selendre", "Duggan Wildhammer",
        "Duke Ragereaver", "Fene-mal", "Foreman Jerris", "Foreman Marcrid",
        "Gish the Unmoving", "Hed'mush the Rotting", "Johnny Awesomer",
        "Likk the Hunter", "Lord Darkscythe", "Lynnia Abbendis",
        "Nerubian Overseer", "Quirix", "Snark", "Snort", "Spirocula",
        "Sporeggon", "Varah", "Zul'Brin Warpbranch"
    },
    ["Blasted Lands"] = {
        "Akubar the Seer", "Blackleaf", "Cassia the Slitherqueen",
        "Clack the Reaver", "Deatheye", "Dreadscorn", "Grunter",
        "Magronos the Unyielding", "Mojo the Twisted", "Mordak Nightbender",
        "Narixxus the Doombringer", "Ravage", "Spiteflayer",
        "Teremus the Devourer"
    },
    ["Eversong Woods"] = {"Eldinarcus", "Tregla"},
    ["Bloodmyst Isle"] = {"Fenissa the Assassin"},
    ["Ghostlands"] = {"Dr. Whitherlimb"},
    ["Zangarmarsh"] = {"Bog Lurker", "Coilfang Emissary", "Marticar"},
    ["Hellfire Peninsula"] = {
        "Fulgorge", "Mekthorg the Wild", "Vorakem Doomspeaker"
    },
    ["Terokkar Forest"] = {"Crippler", "Doomsayer Jurim", "Hawkbane", "Okrek"},
    ["Nagrand"] = {
        "Bro'Gaz the Clanless", "Goretooth", "Voidhunter Yar",
        "Ancient Blademaster", "Aogexon", "Bergruu",
        "Berserk T-300 Series Mark II", "Bonebreaker", "Brutag Grimblade",
        "Captain Ironbeard", "Dekorhan", "Direhoof", "Durg Spinecrusher",
        "Explorer Nozzand", "Fangler", "Flinthide", "Gagrog the Brutal",
        "Gar'lua", "Gaz'orda", "Gnarlhoof the Rabid", "Gorepetal",
        "Gortag Steelgrip", "Graveltooth", "Greatfeather", "Grizzlemaw", "Guk",
        "Hunter Blacktooth", "Hyperious", "Karosh Blackwind", "Krahl Deadeye",
        "Krud the Eviscerator", "Lernaea", "Luk'hok", "Malroc Stonesunder",
        "Mr. Pinchy Sr.", "Mu'gra", "Nakk the Thunderer", "Netherspawn",
        "Ophiis", "Outrider Duretha", "Pit Beast", "Pit Slayer", "Pugg",
        "Redclaw the Feral", "Ru'klaa", "Rukdug", "Scout Pokhar",
        "Sean Whitesea", "Soulfang", "Thek'talon", "Time-Lost Proto-Drake",
        "Tura'aka", "Vileclaw", "Warmaster Blugthol", "Windcaller Korast",
        "Xelganak"
    },
    ["Blade's Edge Mountains"] = {"Hemathion", "Morcrush", "Speaker Mar'grom"},
    ["Netherstorm"] = {
        "Chief Engineer Lorthander", "Ever-Core the Punisher", "Nuramoc"
    },
    ["Shadowmoon Valley"] = {
        "Ambassador Jerrikar", "Collidus the Warp-Watcher", "Kraator",
        "Amaukwa", "Aqualir", "Arachnis", "Avalanche", "Ba'ruun", "Bahameye",
        "Brambleking Fili", "Dark Emanation", "Darkmaster Go'vid", "Darktalon",
        "Demidos", "Enavra", "Faebright", "Gorum", "Hypnocroak", "Insha'tar",
        "Killmaw", "Ku'targ the Voidseer", "Lady Temptessa",
        "Leaf-Reader Kurri", "Mad King Sporeon", "Malgosh Shadowkeeper",
        "Master Sergeant Milgra", "Morva Soultwister", "Mother Om'ra",
        "Nagidna", "Pathrunner", "Quartermaster Hershak", "Rai'vosh",
        "Rockhoof", "Shadowspeaker Niir", "Shinri", "Silverleaf Ancient",
        "Slivermaw", "Sneevel", "Veloss", "Venomshade", "Voidseer Kalurg",
        "Windfang Matriarch", "Yggdrel"
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
        "Dirkee", "Hati", "Skoll", "Terror Spinner", "Time-Lost Proto-Drake",
        "Vyragosa"
    },
    ["Icecrown"] = {
        "Blood Queen Lana'thel", "Bronjahm", "Elder Nadox", "Falric",
        "Forgemaster Garfrost", "High Thane Jorfus", "Hildana Deathstealer",
        "Ingvar the Plunderer", "Krik'thir the Gatewatcher",
        "Lady Deathwhisper", "Marwyn", "Noth the Plaguebringer",
        "Novos the Summoner", "Patchwerk", "Prince Keleseth", "Prince Taldaram",
        "Professor Putricide", "Putridus the Ancient", "Scourgelord Tyrannus",
        "Skadi the Ruthless", "The Black Knight", "The Prophet Tharon'ja",
        "Trollgore"
    },
    ["The Deadmines"] = {"Brainwashed Noble", "Marisa du'Paige"},
    ["Wailing Caverns"] = {"Deviate Faerie Dragon"},
    ["Shadowfang Keep"] = {"Deathsworn Captain"},
    ["Gnomeregan"] = {"Dark Iron Ambassador"},
    ["Razorfen Kraul"] = {"Enormous Bullfrog"},
    ["Maraudon"] = {"Meshlok the Harvester"},
    ["Dire Maul"] = {"Lord Hel'nurath", "Tsu'zee"},
    ["Zul'Farrak"] = {"Dustwraith", "Sandarr Dunereaver", "Zerillis"},
    ["Stratholme"] = {
        "Hearthsinger Forresten", "Skul", "Stonespine", "Duke Ragereaver"
    },
    ["The Temple of Atal'Hakkar"] = {"Captain Wyrmak "},
    ["Blackrock Depths"] = {"Panzor the Invincible", "The Behemoth"},
    ["Scholomance"] = {"Putridius", "Doctor Theolen Krastinov "},
    ["Blackrock Spire"] = {
        "Bannok Grimaxe", "Burning Felguard", "Crystal Fang", "Ghok Bashguud",
        "Quartermaster Zigris", "Spirestone Battle Lord", "Spirestone Butcher",
        "Spirestone Lord Magus"
    },
    ["Darkmoon Island"] = {"Death Metal Knight"},
    ["Ahn'Qiraj: The Fallen Kingdom"] = {"Tix"},
    ["Twilight Highlands"] = {
        "Julak-Doom", "Karoma", "Overlord Sunderfury", "Sambas",
        "Tarvus the Vile"
    },
    ["Deepholm"] = {"Aeonaxx", "Golgarok", "Jadefang", "Terborus", "Xariona"},
    ["Uldum"] = {"Akma'hat", "Armagedillo", "Cyrus the Black", "Madexx"},
    ["Vashj'ir"] = {
        "Burgy Blackheart", "Captain Florence", "Captain Foulwind",
        "Ghostcrawler", "Lady La-La", "Mobus", "Poseidus", "Shok'sharak"
    },
    ["Mount Hyjal"] = {
        "Ankha", "Ban'thalos", "Blazewing", "Garr", "Magria", "Terrorpene",
        "Thartuk the Exile"
    },
    ["Shimmering Expanse"] = {
        "Burgy Blackheart", "Captain Florence", "Poseidus"
    },
    ["Abyssal Depths"] = {"Ghostcrawler", "Mobus", "Poseidus", "Shok'sharak"},
    ["Kelp'thar Forest"] = {"Lady La-La "},
    ["Molten Front"] = {
        "Anthriss", "Deth'tilac", "Karkin", "Kirix", "Skarr", "Skitterflame",
        "Solix"
    },
    ["Timeless Isle"] = {
        "Archiereus of Flame", "Bufo", "Champion of the Black Flame", "Chelon",
        "Cinderfall", "Cranegnasher", "Dread Ship Vazuvius", "Emerald Gander",
        "Evermaw", "Flintlord Gairan", "Garnia", "Golganarr",
        "Great Turtle Furyshell", "Gu'chi the Swarmbringer", "Huolon",
        "Imperial Python", "Ironfur Steelhorn", "Jakur of Ordon", "Karkanos",
        "Krakkanon", "Leafmender", "Monstrous Spineclaw", "Rattleskew",
        "Rock Moss", "Spelurk", "Spirit of Jadefire", "Stinkbraid", "Tsavo'ka",
        "Urdur the Cauterizer", "Watcher Osu", "Whizzig", "Zesqua",
        "Zhu-Gon the Sour"
    },
    ["Throne of Thunder"] = {
        "Archritualist Kelada", "Flesh'rok the Diseased", "Focused Eye",
        "Monara", "No'ku Stormsayer", "Rocky Horror", "Unblinking Eye",
        "Zao'cho"
    },
    ["Isle of Thunder"] = {
        "Al'tabim the All-Seeing", "Backbreaker Uru", "God-Hulk Ramuk", "Goda",
        "Haywire Sunreaver Construct", "Ku'lai the Skyclaw", "Lu-Ban",
        "Molthor", "Mumta", "Progenitus", "Ra'sha"
    },
    ["Isle of Giants"] = {"War-God Dokah "},
    ["Kun-Lai Summit"] = {
        "Ahone the Wanderer", "Borginn Darkfist", "Havak", "Korda Torros",
        "Krakkanon", "Nessos the Oracle", "Scritch", "Ski'thik",
        "Zai the Outcast", "Zandalari Warbringer", "Zandalari Warscout"
    },
    ["Vale of Eternal Blossoms"] = {
        "Aetha", "Ai-Ran the Shifting Cloud", "Bai-Jin the Butcher",
        "Baolai the Immolator", "Bloodtip", "Cracklefang",
        "Gaohun the Soul-Severer", "General Temuja", "Gochao the Ironfist",
        "Huo-Shuang", "Kal'tik the Blight", "Kang the Soul Thief", "Kri'chon",
        "Major Nanners", "Moldo One-Eye", "Quid", "Sahn Tidehunter",
        "Shadowmaster Sydow", "Spirit of Lao-Fe", "Urgolax", "Vicejaw",
        "Vyraxxis", "Wulon", "Yorik Sharpeye", "Amber-Shaper Esh'ri",
        "Anh-De the Loyal", "Brother Meller", "Buh'gzaki the Blasphemous",
        "Captain Vor'lek", "Chief Mek-mek", "Coagulated Anima",
        "Corrupted Bonestripper", "Deeplord Zrihj", "Destroyer Krox'tazar",
        "Dokani Obliterator", "Drone Keeper Ak'thet", "Enraged Amber Elemental",
        "Escaped Mutation", "Ha-Li", "Harbinger Il'koxik", "Harrier Nir'verash",
        "Heixi the Stonelord", "Hive-Guard Naz'ruzek", "Houndlord Ren",
        "Infused Amber Ooze", "Jade Colossus", "Jade Watcher",
        "Kal'tik the Blight", "Kilxl the Gaping Maw", "Kzit'kovok",
        "Needler Zhesalla", "Quid", "Rei Lun", "Rijz'x the Devourer",
        "Sanguifang", "Skiver", "Spymaster Hul'ach", "Stormhowl", "Tashara",
        "Teng the Awakened", "The Forgotten", "Tisiphon", "Veskan the Fallen",
        "Voidtender Malketh", "Will of N'Zoth", "Xiln the Mountain",
        "Zror'um the Infinite"
    },
    ["The Jade Forest"] = {
        "Aethis", "Ferdinand", "Kor'nas Nightsavage", "Krakkanon", "Krax'ik",
        "Mister Ferocious", "Morgrinn Crackfang", "Sarnak",
        "Urobi the Walker", "Zandalari Warbringer", "Zandalari Warscout"
    },
    ["Dread Wastes"] = {
        "Ai-Li Skymirror", "Dak the Breaker", "Gar'lok", "Ik-Ik the Nimble",
        "Karr the Darkener", "Krakkanon", "Krol the Blade", "Nalash Verdantis",
        "Omnis Grinlok", "Zandalari Warbringer", "Zandalari Warscout"
    },
    ["Krasarang Wilds"] = {
        "Arness the Scale", "Cournith Waterstrider", "Dalan Nightbreaker",
        "Disha Fearwarden", "Gaarn the Toxic", "Go-Kan", "Kar Warmaker",
        "Krakkanon", "Mavis Harms", "Muerta", "Qu'nas", "Ruun Ghostpaw",
        "Spriggin", "Torik-Ethis", "Ubunti the Shade", "Zandalari Warbringer",
        "Zandalari Warscout"
    },
    ["Townlong Steppes"] = {
        "Eshelon", "Kah'tir", "Krakkanon", "Lith'ik the Stalker",
        "Lon the Bull", "Norlaxx", "Siltriss the Sharpener", "The Yowler",
        "Yul Wildpaw", "Zandalari Warbringer", "Zandalari Warscout"
    },
    ["Valley of the Four Winds"] = {
        "Blackhoof", "Bonobos", "Jonn-Dar", "Krakkanon", "Nal'lak the Ripper",
        "Nasra Spothide", "Salyin Warscout", "Sele'na", "Sulik'shor"
    },
    ["The Veiled Stair"] = {"Willy Wilder"},
    ["New Tinkertown"] = {
        "Gibblewilt", "Great Father Arctikus", "Timber", "Weaponized Rabbot"
    },
    ["Northshire"] = {"Gug Fatcandle"},
    ["Deathknell"] = {"Fangor"},
    ["Camp Narache"] = {"Pokey Thornmantle"},
    ["Frostfire Ridge"] = {
        "Ak'ox the Slaughterer", "Arachnis", "Beastcarver Saramor",
        "Borrok the Devourer", "Breathless", "Broodmother Reeg'ak",
        "Canyon Icemother", "Chillfang", "Cindermaw", "Cloudspeaker Daber",
        "Coldstomp the Griever", "Coldtusk", "Cyclonic Fury",
        "Earthshaker Holar", "Firefury Giant", "Giant-Slayer Kul", "Giantbane",
        "Giantslayer Kimla", "Gibblette the Cowardly",
        "Gorg'ak the Lava Guzzler", "Gorivax", "Gorok", "Gronnstalker Dawarn",
        "Grutush the Pillager", "Gruuk", "Gurun", "Hoarfrost",
        "Huntmaster Kuang", "Jabberjaw", "Jaluk the Pacifist",
        "Kaga the Ironbender", "Moltnoma", "Mother of Goren",
        "Ogom the Mangler", "Pale Fishmonger", "Pathfinder Jalog",
        "Primalist Mur'og", "Ragore Driftstalker", "Scout Goreseeker",
        "Slogtusk the Corpse-Eater", "Son of Goramal", "The Beater",
        "The Bone Crawler", "Tor'goroth", "Ug'lok the Frozen", "Valkor",
        "Vrok the Ancient", "Yaga the Scarred"
    },
    ["Spires of Arak"] = {
        "Betsi Boombasket", "Blade-Dancer Aeryx", "Blightglow",
        "Durkath Steelmaw", "Echidna", "Festerbloom", "Formless Nightmare",
        "Gaze", "Giga Sentinel", "Gluttonous Giant", "Gobblefin",
        "Hermit Palefur", "Jiasska the Sporegorger", "Kalos the Bloodbathed",
        "Kenos the Unraveler", "Mecha Plunderer", "Morphed Sentient", "Mutafen",
        "Nas Dunberlin", "Oskiira the Vengeful", "Poisonmaster Bortusk",
        "Rotcap", "Sangrikass", "Shadow Hulk", "Shadowbark", "Solar Magnifier",
        "Soul-Twister Torek", "Stonespite", "Sunderthorn", "Swarmleaf",
        "Talonbreaker", "Tesska the Broken", "Varasha", "Voidreaver Urnae"
    },
    ["Gorgrond"] = {
        "Alkali", "Bashiok", "Basten", "Berthora", "Blademaster Ro'gor",
        "Char the Burning", "Defector Dazgo", "Depthroot", "Durp the Hated",
        "Firestarter Grash", "Fossilwood the Petrified",
        "Gelgor of the Blue Flame", "Glut", "Gnarljaw", "Greldrok the Cunning",
        "Grove Warden Yal", "Hive Queen Skrikka", "Horgg", "Hunter Bal'ra",
        "Inventor Blammo", "King Slime", "Mandrakor", "Maniacal Madgard",
        "Mogamago", "Morgo Kain", "Mother Araneae", "Nultra", "Poundfist",
        "Riptar", "Rolkor", "Stompalupagus", "Stomper Kreego", "Sulfurious",
        "Sunclaw", "Swift Onyx Flayer", "Sylldross", "Typhon", "Valstil",
        "Venolasix"
    },
    ["Tanaan Jungle"] = {
        "Argosh the Destroyer", "Belgork", "Bilkor the Thrower",
        "Bleeding Hollow Horror", "Bloodhunter Zulk", "Bramblefell",
        "Broodlord Ixkor", "Captain Grok'mar", "Captain Ironbeard", "Ceraxas",
        "Cindral the Wildfire", "Commander Krag'goth", "Commander Org'mok",
        "Deathtalon", "Doomroller", "Dorg the Bloody", "Drakum", "Driss Vile",
        "Drivnul", "Executor Riloth", "Fel Overseer Mudlump", "Felbore",
        "Felsmith Damorka", "Felspark", "Gloomtalon", "Glub'glok", "Gondar",
        "Gorabosh", "Grand Warlock Nethekurse", "Grannok", "Harbormaster Korak",
        "High Priest Ikzan", "Imp-Master Valessa", "Jax'zor", "Keravnos",
        "Krell the Serene", "Kris'kar the Unredeemed", "Lady Oran", "Magwia",
        "Mistress Thavra", "Overlord Ma'gruth", "Painmistress Selora",
        "Podlord Wakkawam", "Putre'thar", "Rasthe", "Relgor",
        "Remnant of the Blood Moon", "Rendrak", "Rogond the Tracker",
        "Sergeant Mor'grak", "Shadowthrash", "Smashum Grabb", "Soulslicer",
        "Steelsnout", "Sylissa", "Szirek the Twisted", "Terrorfist",
        "The Blackfang", "The Goreclaw", "The Iron Houndmaster",
        "The Night Haunter", "Tho'gar Gorefist", "Thromma the Gutslicer",
        "Varyx the Damned", "Vengeance", "Xanzith the Everlasting", "Xemirkol",
        "Zeter'el", "Zoug the Heavy"
    },
    ["Upper Blackrock Spire"] = {"The Lanticore"},
    ["Talador"] = {
        "Aarko", "Archmagus Tekar", "Avatar of Socrethar", "Bombardier Gu'gok",
        "Cro Fleshrender", "Dr. Gloom", "Echo of Murmur", "Echo of Murmur",
        "Felbark", "Felfire Consort", "Frenzied Golem", "Galzomar", "Gennadian",
        "Glimmerwing", "Grrbrrgle", "Gug'tol", "Haakun the All-Consuming",
        "Hammertooth", "Hen-Mother Hami", "Kaavu the Crimson Claw",
        "Kharazos the Triumphant", "Klikixx", "Kurlosh Doomfang",
        "Lady Demlash", "Legion Vanguard", "Lo'marg Jawcrusher", "Lord Korinak",
        "Matron of Sin", "No'losh", "Orumo the Observer", "Ra'kahn",
        "Shadowflame Terrorwalker", "Shirzir", "Sikthiss, Maiden of Slaughter",
        "Silthide", "Soulbinder Naylana", "Steeltusk", "Strategist Ankor",
        "Taladorantula", "Talonpriest Zorkra", "Underseer Bloodmane",
        "Vigilant Paarthos", "Wandering Vindicator", "Xothear, the Destroyer",
        "Yazheera the Incinerator"
    },
    ["Lunarfall"] = {"Arachnis"},
    ["Frostwall"] = {"Arachnis"},
    ["Ashran"] = {
        "Elder Darkweaver Kath", "Warlord Noktyn", "Ancient Inferno",
        "Brickhouse", "Burning Power", "Captured Gor'vosh Stoneshaper",
        "Cursed Harbinger", "Cursed Kaliri", "Cursed Ravager",
        "Cursed Sharptalon", "Elder Darkweaver Kath", "General Aevd", "Gibby",
        "Goregore", "Grand Marshal Tremblade", "High Warlord Volrath",
        "Korthall Soulgorger", "Leaping Gorger", "Mandragoraster",
        "Marshal Gabriel", "Marshal Karsh Stormforge", "Oraggro", "Panthora",
        "Rukmaz", "Slippery Slime", "Titarus", "Web-wrapped Soldier", "Wyrmple"
    },
    ["The Nighthold"] = {
        "Ariadne", "Attendant Keeper", "Doomlash", "Exotic Concubine",
        "Flightmaster Volnath", "Gilded Guardian", "Kar'zun",
        "Nightwell Diviner", "Regal Cloudwing", "Torm the Brute",
        "Tower Concubine", "Wily Sycophant"
    },
    ["Tomb of Sargeras"] = {
        "Deepmaw", "Dresanoth", "Erdu'val", "Kelpfist", "Ryul the Fading",
        "The Dread Stalker", "Warlord Darjah"
    },
    ["Suramar"] = {
        "Achronos", "Alteria", "Ambassador D'vwinn", "Anax",
        "Apothecary Faldren", "Arcanist Lylandre", "Artificer Lothaire",
        "Auditor Esiel", "Az'jatar", "Baconlisk", "Broodmother Shu'malis",
        "Cadraeus", "Colerian", "Cora'kar", "Degren", "Elfbane", "Garvrulg",
        "Gorgroth", "Guardian Thor'el", "Har'kess the Insatiable",
        "Hertha Grimdottir", "Inquisitor Volitix", "King Morgalash",
        "Lady Rivantas", "Lieutenant Strathmar", "Magister Phaedris",
        "Magistrix Vilessa", "Maia the White", "Mal'Dreth the Corruptor",
        "Mar'tura", "Matron Hagatha", "Miasu", "Myonix", "Oglok the Furious",
        "Oreth the Vile", "Pashya", "Pinchshank", "Randril", "Rauren",
        "Reef Lord Raj'his", "Rok'nash", "Sanaar", "Scythemaster Cil'raman",
        "Selenyi", "Shadowquill", "Shal'an", "Siegemaster Aedrin", "Sorallus",
        "Tideclaw", "Treasure Goblin", "Vicious Whale Shark",
        "Volshax, Breaker of Will"
    },
    ["Halls of Valor"] = {"Arthfael", "Earlnoc the Beastbreaker"},
    ["Highmountain"] = {
        "Drugon the Frostblood", "Flotsam", "Sure-Shot Arnie", "Ala'washte",
        "Arru", "Bodash the Hoarder", "Bristlemaul", "Brogrul the Mighty",
        "Crab Rider Grmlrml", "Crawshuk the Hungry", "Dargok Thunderuin",
        "Darkfiend Tormentor", "Darkful", "Defilia", "Devouring Darkness",
        "Durguth", "Flamescale", "Frostshard", "Gurbog da Basher",
        "Hartli the Snatcher", "Jak", "Luggut the Eggeater",
        "Majestic Elderhorn", "Mawat'aki", "Mellok, Son of Torok", "Mrrklr",
        "Mynta Talonscreech", "Obsidian Deathwarder", "Olokk the Shipbreaker",
        "Ormagrogg", "Oubdob da Smasher", "Pacified Earth", "Puck",
        "Raging Earth", "Ram'Pag", "Ryael Dawndrifter", "Sekhan",
        "Shara Felbreath", "Skullhat", "Slumber", "Tamed Coralback", "Taurson",
        "Tenpak Flametotem", "Treasure Goblin", "Xaander", "Zenobia"
    },
    ["Eredath"] = {
        "Ataxon", "Baruut the Bloodthirsty", "Captain Faruq",
        "Commander Xethgar", "Feasel the Muffin Thief", "Herald of Chaos",
        "Instructor Tarahna", "Jed'hin Champion Vorusk", "Kaara the Pale",
        "Overseer Y'Beda", "Overseer Y'Morna", "Overseer Y'Sorna", "Sabuul",
        "Shadowcaster Voruun", "Skreeg the Devourer", "Slithon the Last",
        "Sorolis the Ill-Fated", "Soultwisted Monstrosity", "Turek the Lucid",
        "Umbraliss", "Venomtail Skyfin", "Vigilant Kuro", "Vigilant Thanos",
        "Wrangler Kravos", "Zul'tan the Numerous"
    },
    ["Neltharion's Lair"] = {"Kraxa", "Ragoul", "Ultanok"},
    ["Azsuna"] = {
        "Alluvanon", "Arcana Stalker", "Arcanist Shal'iman", "Arcanor Prime",
        "Arcavellus", "Beacher", "Bestrix", "Bilebrain", "Brawlgoth",
        "Brogozog", "Broodmother Lizax", "Cailyn Paledoom", "Captain Volo'ren",
        "Chief Bitterbrine", "Chief Treasurer Jabrill", "Cinderwing",
        "Commander Soraax", "Coura, Mistress of Arcana", "Daggerbeak",
        "Deepclaw", "Devious Sunrunner", "Doomlord Kazrok", "Felwing",
        "Fjordun", "Flog the Captain-Eater", "Golza the Iron Fin", "Horux",
        "Houndmaster Stroxis", "Immolian", "Infernal Lord", "Inquisitor Tivos",
        "Jade Darkhaven", "Karthax", "Long-Forgotten Hippogryph",
        "Lysanis Shadesoul", "Marblub the Massive", "Mortiferous",
        "Mrrgrl the Tide Reaver", "Normantis the Deposed", "Pacified Earth",
        "Pridelord Meowl", "Ragemaw", "Raging Earth", "Ravyn-Drath",
        "Sea King Tidross", "Sinister Leyrunner", "Stormfeather", "Syphonus",
        "The Muscle", "The Oracle", "The Whisperer", "Tide Behemoth",
        "Tideclaw", "Torrentius", "Treasure Goblin", "Valakar the Thirsty",
        "Valiyaka the Stormbringer", "Vorthax", "Warbringer Mox'na", "Zorux"
    },
    ["The Arcway"] = {"Silver Serpent", "Sludge Face", "The Rat King"},
    ["Val'sharah"] = {
        "Humongris", "Shar'thos", "Aodh Witherpetal", "Bahagar",
        "Darkfiend Tormentor", "Darkshade", "Dreadbog", "Ealdis",
        "Gathenak the Subjugator", "Gorebeak", "Grelda the Hag",
        "Harbinger of Screams", "Ironbranch", "Jinikki the Puncturer",
        "Kathaw the Savage", "Kiranys Duskwhisper", "Lyrath Moonfeather",
        "Lytheron", "Mad Henryk", "Malisandra", "Nylaathria the Forgotten",
        "Pacified Earth", "Perrexx", "Pollous the Fetid", "Rabxach",
        "Raging Earth", "Seersei", "Shalas'aman", "Skul'vrax", "Theryssia",
        "Thondrax", "Treasure Goblin", "Undergrell Ringleader", "Well-Fed Bear",
        "Witchdoctor Grgl-Brgl", "Wraithtalon"
    },
    ["Broken Shore"] = {
        "Apocron", "Brutallus", "Malificus", "Si'vash", "An'thyna",
        "Anomalous Observer", "Aqueux", "Baleful Knight-Captain",
        "Brood Mother Nix", "Brother Badatin", "Corrupted Bonebreaker",
        "Demented Shivarra", "Deranged Succubus", "Doombringer Zar'thoz",
        "Dreadblade Annihilator", "Dreadeye", "Duke Sithizi", "Emberfire",
        "Eye of Gurgh", "Fel Obliterator", "Felbringer Xar'thok",
        "Felcaller Zelthae", "Felmaw Emberfiend", "Flllurlokkr",
        "Force-Commander Xillious", "Grossir", "Illisthyndria",
        "Imp Mother Bruva", "Inquisitor Chillbane", "Lady Eldrathe",
        "Lambent Felhunter", "Lord Hel'Nurath", "Malformed Terrorguard",
        "Malgrazoth", "Malorus the Soulkeeper", "Potionmaster Gloop",
        "Ruinous Overfiend", "Salethan the Broodwalker", "Skulguloth",
        "Somber Dawn", "Than'otalion", "Unstable Abyssal", "Volatile Imp",
        "Warped Voidlord", "Xorogun the Flamecarver"
    },
    ["Eye of Azshara"] = {
        "Dread Captain Thedon", "Dread Corsair", "Dread Ship Krazatoa",
        "Gom Crabbar", "Jaggen-Ra", "Shellmaw", "Kosumoth the Hungering"
    },
    ["Stormheim"] = {
        "Aegir Wavecrusher", "Ambusher Daggerfang", "Apothecary Perez",
        "Assassin Huwe", "Bladesquall", "Bloodstalker Alpha",
        "Boulderfall, the Eroded", "Bulvinkel", "Captain Brvet",
        "Champion Elodie", "Daniel Boomer Vorick", "Dark Ranger Jess",
        "Deathguard Adams", "Den Mother Ylva", "Dread-Rider Cortis",
        "Egyl the Enduring", "Fathnyr", "Fjorlag, the Grave's Chill",
        "Glimar Ironfist", "Grrvrgull the Conqueror", "Halfdan",
        "Hannval the Butcher", "Helmouth Raider", "Hook", "Houndmaster Ely",
        "Huntress Estrid", "Hydrannon", "Inquisitor Ernstenbok",
        "Isel the Hammer", "Ivory Sentinel", "Kottr Vondyr", "Lagertha",
        "Mordvigbjorn", "Mother Clacker", "Nithogg", "Pacified Earth",
        "Priestess Liza", "Roteye", "Rulf Bonesnapper", "Runeseer Sigvid",
        "Simone the Seductress", "Sinker", "Soulbinder Halldora", "Starbuck",
        "Stormtalon", "Stormwing Matriarch", "Tarben",
        "Thane Irglov the Merciless", "The Nameless King", "Tiptog the Lost",
        "Tracker Jack", "Treasure Goblin", "Urgev the Flayer",
        "Vrykul Earthshaper Spirit", "Whitewater Typhoon"
    },
    ["Antoran Wastes"] = {
        "Admiral Rel'var", "All-Seer Xanarian", "Blistermaw",
        "Chief Alchemist Munculus", "Commander Texlaz", "Doomcaster Suprax",
        "Gar'zoth", "Houndmaster Kerrax", "Inquisitor Vethroz",
        "Lieutenant Xakaar", "Mistress Il'thendra", "Mother Rosula", "Puscilla",
        "Rezira the Seer", "Squadron Commander Vishax",
        "The Many-Faced Devourer", "Varga", "Ven'orn", "Void Warden Valsuran",
        "Vrax'thul", "Watcher Aival", "Worldsplitter Skuul", "Wrath-Lord Yarez"
    },
    ["Black Rook Hold"] = {
        "Plaguemaw", "Shroudseeker", "Shroudseeker's Shadow",
        "Soulfiend Tagerma"
    },
    ["The Seat of the Triumvirate"] = {
        "Darkcaller", "Twilight-Harbinger Tharuul", "Vixx the Collector",
        "Void-Blade Zedaat", "Voidmaw"
    },
    ["Cathedral of Eternal Night"] = {
        "Dreadspeaker Serilis", "Larithia", "Mistress Dominix", "Raga'yut",
        "Wa'glur"
    },
    ["Krokuun"] = {
        "Commander Endaxis", "Commander Sathrenael", "Commander Vecaya",
        "Imp Mother Laglath", "Khazaduum", "Naroua", "Siegemaster Voraan",
        "Sister Subversia", "Talestra the Vile", "Tar Spitter",
        "Tereck the Selector", "Vagath the Betrayed"
    },
    ["Darkheart Thicket"] = {"Kudzilla", "Mythana", "Rage Rot"},
    ["Mardum, the Shattered Abyss"] = {
        "Count Nefarious", "General Volroth", "King Voras", "Overseer Brutarg"
    },
    ["Helheim"] = {
        "Captain Dargun", "Fenri", "Jorvild the Trusted", "Soulthirster"
    },
    ["Thunder Totem"] = {"Sekhan", "Treasure Goblin"},
    ["The Deaths of Chromie"] = {
        "Bloodfeast", "Bonesunder", "Dregmar Runebrand", "Icefist", "Iceshatter"
    },
    ["The Maelstrom"] = {"Grimtotem Champion"},
    ["The Exodar"] = {"Huk'roth the Huntmaster"},
    ["Vault of the Wardens"] = {"Kethrazor", "Wrath-Lord Lekos"},
    ["Tiragarde Sound"] = {
        "Azurethos", "Adhara White", "Alsian Vistreth", "Ambassador Gaines",
        "Artillery Master Goodwin", "Auditor Dolp", "Barman Bill", "Bashmu",
        "Black-Eyed Bart", "Blackthorne", "Bloodmaw", "Broodmother Razora",
        "Captain Greensails", "Captain Wintersail", "Carla Smirk",
        "Dark Ranger Clea", "First Mate Malone", "First Sergeant Steelfang",
        "Fowlmouth", "Foxhollow Skyterror", "Ghost of the Deep",
        "Grand Marshal Tremblade", "Grubb", "Gulliver", "Hartford Sternbach",
        "Honey-Coated Slitherer", "Katrianna", "Kulett the Ornery",
        "Lumbergrasp Sentinel", "Maison the Portable", "Marshal Gabriel",
        "Merianae", "Mistweaver Nian", "Motega Bloodshield", "Mugg", "P4-N73R4",
        "Pack Leader Asenya", "Raging Swell", "Ranja",
        "Rear Admiral Hainsworth", "Saurolisk Tamer Mugg", "Sawtooth",
        "Shiverscale the Toxic", "Siege Engineer Krackleboom", "Squacks",
        "Squirgle of the Depths", "Strong Arm John", "Sythian the Swift",
        "Tempestria", "Tentulos the Drifter", "Teres", "Togoth Cruelarm",
        "Tort Jaw", "Totes", "Twin-hearted Construct", "Vol'Jim",
        "Zagg Brokeneye", "Zunjo of Sen'jin"
    },
    ["Drustvar"] = {
        "Hailstone Construct", "Apothecary Jerrod", "Arclight",
        "Arvon the Betrayed", "Avalanche", "Balethorn", "Barbthorn Queen",
        "Beshol", "Betsy", "Bilefang Mother", "Blighted Monstrosity",
        "Bonesquall", "Braedan Whitewall", "Captain Leadfist",
        "Caravan Commander Veronica", "Cottontail Matron", "Deathcap",
        "Doctor Lazane", "Duchess Fallensong the Frigid", "Emily Mayville",
        "Engineer Bolthold", "Ernie", "Executioner Blackwell",
        "Gluttonous Yeti", "Gorehorn", "Gorged Boar", "Grizzwald", "Grozgore",
        "Haywire Golem", "Henry Breakwater", "Hyo'gi", "Idej the Wise",
        "Inquisitor Erik", "Longfang", "Mack", "Maddok the Sniper",
        "Magister Crystalynn", "Matron Morana", "Mick", "Muk'luk", "Nevermore",
        "Omgar Doombow", "Packmaster Swiftarrow", "Quillrat Matriarch",
        "Rimestone", "Shredatron-2000", "Sister Martha", "Soul Goliath",
        "Stone Golem", "Talon", "The Caterer", "Vicemaul",
        "Whargarble the Ill-Tempered", "Whitney Steelclaw Ramsay",
        "Zillie Wunderwrench", "Zul'aki the Headhunter"
    },
    ["Stormsong Valley"] = {
        "Warbringer Yenajz", "Adherent of the Abyss", "Alkalinius",
        "Beast Tamer Watkins", "Beehemoth", "Broodmother", "Cap'n Gorok",
        "Captain Razorspine", "Corrupted Tideskipper", "Croaker", "Crushtacean",
        "Dagrus the Scorned", "Deepfang", "Dinomancer Zakuru", "Doc Marrtens",
        "Dolizite", "Firewarden Viton Darkflare", "Foreman Scripps",
        "Galestorm", "Grimscowl the Harebrained", "Gurg the Hivethief",
        "Gurin Stonebinder", "Haegol the Hammer", "Honey Smasher",
        "Honeyback Usurper", "Ice Sickle", "Jakala the Cruel", "Kickers",
        "Knight-Captain Joesiph", "Mortar Master Zapfritz",
        "Nalaess Featherseeker", "Nestmother Acada", "Old Nasha",
        "Osca the Bloodied", "Owynn Graddock", "Pest Remover Mk. II",
        "Pinku'shon", "Poacher Zane", "Ragna", "Reinforced Hullbreaker",
        "Sabertron", "Sandfang", "Seabreaker Skoloth", "Severus the Outcast",
        "Shadow Hunter Mutumba", "Sister Absinthe", "Slickspill",
        "Song Mistress Dadalea", "Spelltwister Moephus", "Squall",
        "Taja the Tidehowler", "The Hivekiller", "The Lichen King",
        "Tidesage Clarissa", "Trapdoor Bee Hunter", "Vinespeaker Ratha",
        "Voidmaster Evenshade", "Wagga Snarltusk", "Whiplash", "Whirlwing",
        "Yorag the Jelly Feaster", "Zeritarj"
    },
    ["Mechagon"] = {
        "Arachnoid Harvester", "Armored Vaultbot", "Boggac Skullbash",
        "Boilburn", "Bonepicker", "Caustic Mechaslime", "Crazed Trogg",
        "Data Anomaly", "Deepwater Maw", "Earthbreaker Gulroc",
        "Enforcer KX-T57", "Foul Manifestation", "Gear Checker Cogstar",
        "Gemicide", "Gorged Gear-Cruncher", "Jawbreaker", "Killsaw",
        "Malfunctioning Beastbot", "Mechagonian Nullifier", "Mecharantula",
        "Mr. Fixthis", "Ol' Big Tusk", "OOX-Avenger/MG", "Oxidized Leachbeast",
        "Paol Pondwader", "Rumblerocks", "Rustfeather", "Scrapclaw", "Seaspit",
        "Short John Mithril", "Sparkqueen P'Emp", "Steel Singer Freza",
        "The Kleptoboss", "The Rusty Prince", "The Scrap King", "Uncle T'Rogg"
    },
    ["Zuldazar"] = {
        "Ji'arak", "Ancient Defender", "Atal'zul Gotaka", "Avatar of Xolotal",
        "Bane of the Woods", "Bilestomper", "Blinky Gizmospark", "Bloodbulge",
        "Bramblewing", "Caravan Leader", "Coati", "Daggerjaw",
        "Dark Chronicler", "Darkspeaker Jo'la", "Death Captain Danielle",
        "Death Captain Delilah", "Death Captain Detheca",
        "Dinohunter Wildbeard", "Dinomancer Dajingo", "Eric Quietfist",
        "G'Naat", "Gahz'ralka", "Golrakahn", "Hakbi the Risen",
        "Headhunter Lee'za", "High Warlord Volrath", "Jessibelle Moonshield",
        "Ka'za the Mezmerizing", "Kandak", "Kiboku", "Kul'krazahn", "Lei-zhi",
        "Loo'ay", "Murderbeak", "N'chala the Egg Thief", "Old R'gal",
        "Portal Keeper Romiir", "Scout Captain Grizzleknob",
        "Siegebreaker Vol'gar", "Sky Queen", "Syrawon the Dominus", "Tambano",
        "Tia'Kawan", "Tidebinder Maka", "Torraske the Eternal",
        "Trader Pro'ditor", "Twisted Child of Rezan", "Umbra'jin", "Umbra'rix",
        "Vukuba", "Warcrawler Karkithiss", "Zayoos"
    },
    ["Nazmir"] = {
        "T'zane", "Ancient Jawbreaker", "Arcanist Quintril",
        "Azerite-Infused Elemental", "Azerite-Infused Slag", "Bajiatha",
        "Blood Priest Xak'lar", "Brewmaster Lin", "Captain Mu'kala",
        "Caravan Leader", "Corpse Bringer Yal'kar", "Enraged Water Elemental",
        "Glompmaw", "Gutrip", "Gwugnug the Cursed", "Infected Direhorn",
        "Jax'teb the Reanimated", "Juba the Scarred", "Kal'draxa", "King Kooba",
        "Krubbs  ", "Lightforged Warframe", "Lo'kuno", "Lucille", "Mala'kili",
        "Maw of Shul-Nagruth", "Overgrown Ancient", "Overstuffed Saurolisk",
        "Plague Master Herbert", "Ptin'go", "Queen Tzxi'kik", "Rohnkor",
        "Scout Skrasniss", "Scrounger Patriarch", "Shadow Hunter Vol'tris",
        "Shambling Ambusher", "Siegeotron", "Skullcap",
        "Skycaptain Thermospark", "Stormcaller Morka", "Tainted Guardian",
        "Thomas Vandergrief", "Toadcruel", "Totem Maker Jash'ga",
        "Underlord Xerxiz", "Uroku the Bound", "Venomjaw", "Vugthuth",
        "Wardrummer Zurula", "Xizz Gutshank", "Xu'ba",
        "Za'amar the Queen's Blade", "Zanxib", "Zujothgul"
    },
    ["Vol'dun"] = {
        "Dunegorger Kraulok", "Ak'tar", "Ashmane", "Azer'tor",
        "Bajiani the Slick", "Beastlord Drakara", "Bloated Krolusk",
        "Bloodwing Bonepicker", "Brgl-Lrgl the Basher",
        "Captain Stef Marrow Quin", "Caravan Leader", "Commodore Calhoun",
        "Drox'ar Morgar", "Enraged Krolusk", "Evezon the Eternal",
        "Fangcaller Xorreth", "First Mate Swainbeak", "General Krathax",
        "Golanar", "Grand Marshal Fury", "Gut-Gut the Glutton",
        "Hivemother Kraxi", "Iron Shaman Grimbeard", "Jin'tago",
        "Jumbo Sandsnapper", "Jungleweb Hunter", "Kamid the Trapper",
        "King Clickyclack", "Mor'fani the Exile", "Nez'ara", "Ormin Rocketbop",
        "Portakillo", "Relic Hunter Hazaak", "Rockfury", "Sandbinder Sodir",
        "Scaleclaw Broodmother", "Scorpox", "Siege O' Matic 9000", "Sirokar",
        "Skycaller Teskris", "Skycarver Krakit", "Songstress Nahjeen",
        "Vathikur", "Warbringer Hozzik", "Warlord Zothix", "Warmother Captive",
        "Wolfleader Skraug", "Zunashi the Exile"
    },
    ["Nazjatar"] = {
        "Alga the Eyeless", "Allseer Oma'kil", "Amethyst Spireshell",
        "Anemonar", "Avarius", "Banescale the Packfather", "Blindlight",
        "Carnivorous Lasher", "Chasm-Haunter", "Commander Minzera",
        "Daggertooth Terror", "Deepglider", "Elder Unu", "Elderspawn Nalaada",
        "Garnetscale", "Guardian Tannin", "Incantatrix Vazina",
        "Iridescent Glimmershell", "Kelpwillow", "King Gakula", "Mirecrawler",
        "Needlespine", "Oronu", "Prince Typhonus", "Prince Vortran",
        "Rockweed Shambler", "Sandcastle", "Sandclaw Stoneshell",
        "Scale Matriarch Gratinax", "Scale Matriarch Vynara",
        "Scale Matriarch Zodia", "Shadowbinder Athissa", "Shassera",
        "Shiz'narasz the Consumer", "Siltstalker the Packmother", "Soundless",
        "Theurgist Nitara", "Tidelord Aquatus", "Tidelord Dispersius",
        "Tidemistress Leth'sindra", "Toxigore the Alpha", "Urduu",
        "Voice in the Deeps", "Vor'koth", "Warlord Zalzjar"
    },
    ["The Underrot"] = {"Restless Horror", "Rotmaw"},
    ["Waycrest Manor"] = {"Corvus", "Matron Christiane"},
    ["Tol Dagor"] = {"Gol'than the Malodorous"},
    ["Kings' Rest"] = {"Skarr", "Weaponmaster Halu"},
    ["Vision of Stormwind"] = {
        "Craggle Wobbletop", "Dod", "Mail Muncher", "Sewer Beastling"
    },
    ["Vision of Orgrimmar"] = {"Mail Muncher"},
    ["Bastion"] = {
        "Aethon", "Aspirant Eolis", "Baedos", "Basilofos, King of the Hill",
        "Bookkeeper Mnemis", "Champion of Courage", "Champion of Humility",
        "Champion of Loyalty", "Champion of Purity", "Champion of Wisdom",
        "Cloudfeather Guardian", "Cloudtail", "Collector Astorestes",
        "Dark Watcher", "Demi the Relic Hoarder", "Dionae", "Echo of Aella",
        "Eliminator Sotiros", "Embodied Hunger", "Enforcer Aegeon",
        "Fallen Acolyte Erisne", "Herculon", "Larionrider Orstus",
        "Malfunctioning Clawguard", "Nemaeus", "Nikara Blackheart",
        "Reekmonger", "Selena the Reborn", "Sigilback", "Sundancer",
        "Unstable Memory", "Wingflayer the Cruel", "Worldfeaster Chronn",
        "Xixin the Ravening"
    },
    ["Maldraxxus"] = {
        "Boneslurp", "Bubbleblood", "Burnblister", "Collector Kash",
        "Corpsecutter Moroc", "Corrupted Sediment", "Deadly Dapperling",
        "Deepscar", "Devour'us", "Drolkrad", "Gelloh", "Gieger", "Gristlebeak",
        "Indomitable Schmitd", "Necromantic Anomaly", "Nerissa Heartless",
        "Nirvaska the Summoner", "Oily Invertebrate", "Pesticide",
        "Pulsing Leech", "Ravenomous", "Sabriel the Bonecleaver", "Scunner",
        "Sister Chelicerae", "Smorgas the Feaster", "Tahonta", "Taskmaster Xox",
        "Thread Mistress Leeda", "Violet Mistake", "Warbringer Mal'korak",
        "Wartusk", "Zargox the Reborn"
    },
    ["Ardenweald"] = {
        "Astra, As Azshara", "Deathbinder Hroth", "Deifir the Untamed",
        "Dreamweaver, As N'Zoth", "Dustbrawl", "Egg-Tender Leh'go", "Faeflayer",
        "Glimmerdust, As Jaina", "Glimmerdust, As Kil'jaeden", "Gormbore",
        "Gormtamer Tizo", "Hunter Vivanna", "Macabre",
        "Mi'kai, As Argus, the Unmaker", "Mymaen", "Mystic Rainbowhorn",
        "Night Mare", "Niya, As Xavius", "Old Ardeite", "Rootwrithe",
        "Rotbriar Boggart", "Senthii, As Gul'dan", "Skuld Vit",
        "Soultwister Cero", "The Slumbering Emperor", "Valfir the Unrelenting",
        "Wrigglemortis"
    },
    ["Revendreth"] = {
        "Amalgamation of Filth", "Amalgamation of Light", "Amalgamation of Sin",
        "Ashen Amalgamation", "Azgar", "Blustery Boil", "Bog Beast",
        "Court Crusher", "Drezgruda", "Ember Skyterror", "Endlurker",
        "Executioner Aatron", "Executioner Adrastia", "Famu the Infinite",
        "Forgemaster Madalav", "Grand Arcanist Dimitri",
        "Grand Inquisitor Aurica", "Grand Inquisitor Nicu", "Harika the Horrid",
        "High Inquisitor Dacian", "High Inquisitor Gabi",
        "High Inquisitor Magda", "High Inquisitor Radu",
        "High Inquisitor Vetar", "Hopecrusher", "Huntmaster Petrus", "Innervus",
        "Inquisitor Otilia", "Inquisitor Petre", "Inquisitor Sorin",
        "Inquisitor Traian", "Kedu", "Knockerbock", "Leeched Soul",
        "Lord Mortegore", "Manifestation of Wrath", "Prideful Hulk",
        "Scrivener Lenua", "Sineater", "Sinstone Hoarder", "Sire Ladinas",
        "Sloppy", "Soulstalker Doina", "Stonefist", "Swollen Experiment",
        "Tollkeeper Varaboss", "Tomb Burster", "Tricky Trik",
        "Venthyr Provocateur", "Withered Emberbloom", "Worldedge Gorger"
    },
    ["The Maw"] = {
        "Adjutant Dekaris", "Apholeias, Herald of Loss", "Blinding Shadow",
        "Borr-Geth", "Carriage Crusher", "Conjured Death", "Darithis the Bleak",
        "Darklord Taraxis", "Deomen the Vortex", "Dolos", "Eketra",
        "Ekphoras, Herald of Grief", "Eternas the Tormentor",
        "Exos, Herald of Domination", "Fallen Charger", "Guard Orguluus",
        "Ikras the Devourer", "Malevolent Death", "Morguliax",
        "Nascent Devourer", "Obolos", "Orophea", "Shadeweaver Zeris",
        "Soulforger Rhovus", "Talaporas, Herald of Pain", "Thanassos",
        "Torglluun", "Traitor Balthier", "Yero the Skittish", "Ylva",
        "Zovaal's Vault"
    },
    ["Zereth Mortis"] = {
        "Akkaris", "Chitali the Eldest", "Corrupted Architect",
        "Destabilized Core", "Euv'ouk", "Feasting", "Furidian", "Garudeon",
        "General Zarathura", "Gluttonous Overgrowth", "Gorkek",
        "Hadeon the Stonebreaker", "Helmix", "Hirukon", "Mother Phestis",
        "Orixal", "Otaris the Provoked", "Otiosen",
        "Protector of the First Ones", "Sand Matriarch Ileus",
        "Shifting Stargorger", "Sorranos", "Tahkwitz", "Tethos", "The Engulfer",
        "Vexis", "Vitiane", "Xy'rath the Covetous", "Zatojin"
    },
    ["Coldheart Interstitia"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Writhing Misery"
    },
    ["Mort'regar"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Writhing Misery"
    },
    ["Skoldus Hall"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Warden Arkoban", "Writhing Misery"
    },
    ["The Adamant Vaults"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Writhing Misery"
    },
    ["The Fracture Chambers"] = {
        "Animated Stygia", "Blightsmasher", "Bone Husk", "Dusky Tremorbeast",
        "Excavation Leader", "Faeleaf Shimmerwing", "Ghastly Charger",
        "Gorm Behemoth", "Howling Spectre", "Invasive Decayfly", "Karthazel",
        "Oracle of Torment", "Remnant of Creation", "Sath'zuul",
        "Seeker of Souls", "Soulstalker V'lara", "Subjugator Klontzas",
        "Suppressor Xelors", "Vil'thras"
    },
    ["The Soulforges"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Writhing Misery"
    },
    ["The Upper Reaches"] = {
        "Adjutant Felipos", "Animated Stygia", "Blightsmasher", "Bone Husk",
        "Darksworn Goliath", "Deadsoul Amalgam", "Deadsoul Lifetaker",
        "Deadsoul Strider", "Dusky Tremorbeast", "Excavation Leader",
        "Faeleaf Shimmerwing", "Ghastly Charger", "Gorm Behemoth", "Gravitas",
        "Heartseeker", "Howling Spectre", "Imperator Dara", "Invasive Decayfly",
        "Karthazel", "Lady Audat", "Oracle of Torment", "Remnant of Creation",
        "Sath'zuul", "Seeker of Souls", "Soulstalker V'lara",
        "Stoneward Trampler", "Subjugator Klontzas", "Suppressor Xelors",
        "Vil'thras", "Wandering Death", "Writhing Misery"
    },
    ["Torghast, Tower of the Damned"] = {
        "Deadsoul Amalgam", "Deadsoul Lifetaker", "Darksworn Goliath",
        "Deadsoul Strider", "Adjutant Felipos", "Dusky Tremorbeast",
        "Animated Stygia", "Excavation Leader", "Blightsmasher",
        "Faeleaf Shimmerwing", "Bone Husk", "Ghastly Charger", "Gorm Behemoth",
        "Gravitas", "Heartseeker", "Howling Spectre", "Invasive Decayfly",
        "Imperator Dara", "Karthazel", "Lady Audat", "Oracle of Torment",
        "Remnant of Creation", "Sath'zuul", "Seeker of Souls",
        "Soulstalker V'lara", "Stoneward Trampler", "Subjugator Klontzas",
        "Suppressor Xelors", "Vil'thras", "Wandering Death", "Warden Arkoban",
        "Writhing Misery"
    },
    ["Ohn'ahran Plains"] = {
        "Ancient Tundrafur", "Biryuk", "Blightpaw the Depraved",
        "Deadwaker Ghendish", "Eaglemaster Niraak", "Fulgurb", "Hamett",
        "Irontree", "Liskheszaera", "Makhra the Ashtouched", "Prozela Galeshot",
        "Ripsaw the Stalker", "Shade of Grief", "Skaara", "Steamgill",
        "Sunscale Behemoth", "Territorial Coastling", "Ty'foon the Ascended",
        "Web-Queen Ashkaz", "Windscale the Stormborn", "Windseeker Avash",
        "Zerimek"
    },
    ["The Waking Shores"] = {
        "Ancient Hornswog", "Battlehorn Pyrhus", "Beakers", "Bouldron",
        "Brundin the Dragonbane", "Captain Lancer", "Cauldronbearer Blakor",
        "Char", "Dragonhunter Igordan", "Drakewing", "Firava the Rekindler",
        "Flamebreaker Grella", "Forgotten Gryphon", "Harkyn Grymstone",
        "Helmet Missingway", "Kain Firebrand", "Karantun",
        "Klozicc the Ascended", "Monsoo, The Boiling Rage", "Neela Firebane",
        "O'nank Shorescour", "Penumbrus", "Pipspark Thundersnap",
        "Possessive Hornswog", "Primal Scythid Queen", "Qalashi War Mammoth",
        "Rasnar the War Ender", "Rohzor Forgesmash", "Shadeslash Trakken",
        "Shas'ith", "Skald the Impaler", "Skewersnout",
        "Smogswog the Firebreather", "Snee", "Stonefist Rejara",
        "Terillod the Devout", "Thunderous Matriarch", "Turboris"
    },
    ["The Azure Span"] = {
        "Arcane Devourer", "Azure Pathfinder", "Beogoka", "Blisterhide",
        "Cascade", "Chargum", "Dragonhunter Gorund", "Forgotten Creation",
        "Frigidpelt Den Mother", "Gaelzion", "Gnarls", "Gruffy",
        "High Shaman Rotknuckle", "Infernum", "Leerain", "Maeleera",
        "Mahg the Trampler", "Mange the Outcast", "Overloaded Frost",
        "Sharpfang", "Snarglebone", "Spellwrought Snowman",
        "Summoned Destroyer", "Trilvarus Loreweaver"
    },
    ["Thaldraszus"] = {
        "Acrosoth", "Corrupted Proto-Dragon", "Craggravated Elemental",
        "Grizzlerock", "Henlare", "Innumerable Ruination",
        "Liskron the Dazzling", "Lookout Mordren", "Phleep", "Private Shikzar",
        "Rokmur", "Rouen Icewind", "The Great Shellkhan"
    }
}
