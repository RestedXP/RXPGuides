local _, addon = ...
local L = addon.locale.Get
--Taken from https://www.curseforge.com/wow/addons/handy-notes-pandaria-treasures

addon.rareDesc = L("Displays Pandaria rare mobs on your map")
addon.treasureDesc = L("Displays Pandaria treasures on your map")

addon.dangerousMobs =

{
	[376] = {
		[50339] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Sulik'shor",
				["Notes"] = "",
				["Location"] = ".rare 376,37.00,25.60,npc:Sulik'shor:50339;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50766] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Sele'na",
				["Notes"] = "",
				["Location"] = ".rare 376,52.80,28.60,npc:Sele'na:50766;.rare 376,54.00,31.60,npc:Sele'na:50766;.rare 376,54.60,36.60,npc:Sele'na:50766;.rare 376,57.60,33.80,npc:Sele'na:50766;.rare 376,59.00,38.60,npc:Sele'na:50766;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50364] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Nal'lak the Ripper",
				["Notes"] = "",
				["Location"] = ".rare 376,9.20,60.60,npc:Nal'lak the Ripper:50364;.rare 376,9.20,47.40,npc:Nal'lak the Ripper:50364;.rare 376,12.60,48.80,npc:Nal'lak the Ripper:50364;.rare 376,8.20,59.60,npc:Nal'lak the Ripper:50364;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50783] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Salyin Warscout",
				["Notes"] = "",
				["Location"] = ".rare 376,67.60,59.60,npc:Salyin Warscout:50783;.rare 376,71.00,52.40,npc:Salyin Warscout:50783;.rare 376,74.60,51.80,npc:Salyin Warscout:50783;.rare 376,75.80,46.40,npc:Salyin Warscout:50783;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50351] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Jonn-Dar",
				["Notes"] = "",
				["Location"] = ".rare 376,18.60,77.60,npc:Jonn-Dar:50351;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Boat-Building Instructions"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 10g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 376,92.00,39.00,31869",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31869,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50811] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Nasra Spothide",
				["Notes"] = "",
				["Location"] = ".rare 376,88.60,18.00,npc:Nasra Spothide:50811;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Virmen Treasure Cache"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with ~99g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 376,23.80,28.50,31405",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31405,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[51059] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Blackhoof",
				["Notes"] = "",
				["Location"] = ".rare 376,32.80,62.80,npc:Blackhoof:51059;.rare 376,37.80,60.60,npc:Blackhoof:51059;.rare 376,34.60,59.60,npc:Blackhoof:51059;.rare 376,39.60,57.60,npc:Blackhoof:51059;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50828] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Bonobos",
				["Notes"] = "",
				["Location"] = ".rare 376,16.60,41.00,npc:Bonobos:50828;.rare 376,14.00,38.20,npc:Bonobos:50828;.rare 376,19.00,35.80,npc:Bonobos:50828;.rare 376,16.80,35.20,npc:Bonobos:50828;.rare 376,15.60,32.00,npc:Bonobos:50828;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[371] = {
		["Stash of Gems"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Chest with 96g and gems\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,62.40,27.50,31866",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31866,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50363] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Krax'ik",
				["Notes"] = "",
				["Location"] = ".rare 371,39.60,62.60,npc:Krax'ik:50363;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50782] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Sarnak",
				["Notes"] = "",
				["Location"] = ".rare 371,64.60,74.20,npc:Sarnak:50782;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Pandaren Ritual Stone"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 105g\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,23.50,35.00,31404",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31404,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[51078] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ferdinand",
				["Notes"] = "",
				["Location"] = ".rare 371,56.40,48.80,npc:Ferdinand:51078;.rare 371,53.60,49.60,npc:Ferdinand:51078;.rare 371,53.80,45.60,npc:Ferdinand:51078;.rare 371,52.20,44.40,npc:Ferdinand:51078;.rare 371,54.20,42.40,npc:Ferdinand:51078;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50808] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Urobi the Walker",
				["Notes"] = "",
				["Location"] = ".rare 371,57.40,71.40,npc:Urobi the Walker:50808;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50350] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Morgrinn Crackfang",
				["Notes"] = "",
				["Location"] = ".rare 371,48.20,20.60,npc:Morgrinn Crackfang:50350;.rare 371,48.00,18.60,npc:Morgrinn Crackfang:50350;.rare 371,46.60,16.80,npc:Morgrinn Crackfang:50350;.rare 371,42.60,16.20,npc:Morgrinn Crackfang:50350;.rare 371,42.20,17.60,npc:Morgrinn Crackfang:50350;.rare 371,40.80,15.20,npc:Morgrinn Crackfang:50350;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Ship's Locker"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Chest with 96g\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,50.70,99.90,31396",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31396,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50750] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Aethis",
				["Notes"] = "",
				["Location"] = ".rare 371,33.60,50.80,npc:Aethis:50750;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Chest of Supplies"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Chest with 10g\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,24.60,53.20,31864",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31864,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Lucky Pandaren Coin"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 95g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,31.90,27.80,31401",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31401,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Ancient Pandaren Tea Pot"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 100g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,26.20,32.40,31400",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31400,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Offering of Remembrance"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with 30g and buff\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 371,46.30,80.70,31865",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31865,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50823] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Mister Ferocious",
				["Notes"] = "",
				["Location"] = ".rare 371,42.60,38.80,npc:Mister Ferocious:50823;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50338] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Kor'nas Nightsavage",
				["Notes"] = "",
				["Location"] = ".rare 371,44.00,75.00,npc:Kor'nas Nightsavage:50338;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[388] = {
		[50355] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Kah'tir",
				["Notes"] = "",
				["Location"] = ".rare 388,63.00,35.60,npc:Kah'tir:50355;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50734] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Lith'ik the Stalker",
				["Notes"] = "",
				["Location"] = ".rare 388,46.40,74.40,npc:Lith'ik the Stalker:50734;.rare 388,42.00,78.40,npc:Lith'ik the Stalker:50734;.rare 388,47.60,84.20,npc:Lith'ik the Stalker:50734;.rare 388,47.80,88.60,npc:Lith'ik the Stalker:50734;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50791] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Siltriss the Sharpener",
				["Notes"] = "",
				["Location"] = ".rare 388,59.20,85.60,npc:Siltriss the Sharpener:50791;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50333] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Lon the Bull",
				["Notes"] = "",
				["Location"] = ".rare 388,66.80,44.40,npc:Lon the Bull:50333;.rare 388,67.80,50.80,npc:Lon the Bull:50333;.rare 388,64.20,49.80,npc:Lon the Bull:50333;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50832] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "The Yowler",
				["Notes"] = "",
				["Location"] = ".rare 388,67.60,74.40,npc:The Yowler:50832;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Amber Encased Moth"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 105g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 388,65.80,86.10,31426",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31426,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Abandoned Crate of Goods"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with ~103g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 388,62.80,34.10,31427",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31427,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Fragment of Dread"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 90g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 388,34.90,63.10,31423",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31423,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50344] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Norlaxx",
				["Notes"] = "",
				["Location"] = ".rare 388,54.00,63.40,npc:Norlaxx:50344;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[66900] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Huggalon the Heart Watcher",
				["Notes"] = "",
				["Location"] = ".rare 388,37.20,57.60,npc:Huggalon the Heart Watcher:66900;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Hardened Sap of Kri'vess"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 110g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 388,53.90,58.40,31424",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31424,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50772] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Eshelon",
				["Notes"] = "",
				["Location"] = ".rare 388,68.80,89.20,npc:Eshelon:50772;.rare 388,67.80,87.60,npc:Eshelon:50772;.rare 388,66.40,86.80,npc:Eshelon:50772;.rare 388,65.40,87.60,npc:Eshelon:50772;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50820] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Yul Wildpaw",
				["Notes"] = "",
				["Location"] = ".rare 388,32.00,61.80,npc:Yul Wildpaw:50820;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[418] = {
		["Stack of Papers"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 15g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 418,52.10,73.40,31863",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31863,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50331] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Go-Kan",
				["Notes"] = "",
				["Location"] = ".rare 418,39.60,29.00,npc:Go-Kan:50331;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50830] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Spriggin",
				["Notes"] = "",
				["Location"] = ".rare 418,52.20,88.00,npc:Spriggin:50830;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50340] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Gaarn the Toxic",
				["Notes"] = "",
				["Location"] = ".rare 418,53.60,38.80,npc:Gaarn the Toxic:50340;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[68318] = {
			[1] = {
				["applies"] = "Horde",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Dalan Nightbreaker",
				["Notes"] = "",
				["Location"] = ".rare 418,85.00,27.60,npc:Dalan Nightbreaker:68318;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[68319] = {
			[1] = {
				["applies"] = "Horde",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Disha Fearwarden",
				["Notes"] = "",
				["Location"] = ".rare 418,87.40,29.20,npc:Disha Fearwarden:68319;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[68320] = {
			[1] = {
				["applies"] = "Alliance",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ubunti the Shade",
				["Notes"] = "",
				["Location"] = ".rare 418,13.20,66.00,npc:Ubunti the Shade:68320;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50816] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ruun Ghostpaw",
				["Notes"] = "",
				["Location"] = ".rare 418,39.40,55.20,npc:Ruun Ghostpaw:50816;.rare 418,41.60,55.20,npc:Ruun Ghostpaw:50816;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[68322] = {
			[1] = {
				["applies"] = "Alliance",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Muerta",
				["Notes"] = "",
				["Location"] = ".rare 418,10.60,57.00,npc:Muerta:68322;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50388] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Torik-Ethis",
				["Notes"] = "",
				["Location"] = ".rare 418,15.20,35.60,npc:Torik-Ethis:50388;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50768] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Cournith Waterstrider",
				["Notes"] = "",
				["Location"] = ".rare 418,30.60,38.20,npc:Cournith Waterstrider:50768;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50352] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Qu'nas",
				["Notes"] = "",
				["Location"] = ".rare 418,67.20,23.00,npc:Qu'nas:50352;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50787] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Arness the Scale",
				["Notes"] = "",
				["Location"] = ".rare 418,56.20,46.80,npc:Arness the Scale:50787;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Saurok Stone Tablet"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 100g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 418,68.60,7.60,31408",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31408,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[68321] = {
			[1] = {
				["applies"] = "Alliance",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Kar Warmaker",
				["Notes"] = "",
				["Location"] = ".rare 418,14.80,57.20,npc:Kar Warmaker:68321;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[68317] = {
			[1] = {
				["applies"] = "Horde",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Mavis Harms",
				["Notes"] = "",
				["Location"] = ".rare 418,84.60,31.00,npc:Mavis Harms:68317;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[390] = {
		[50749] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Kal'tik the Blight",
				["Notes"] = "",
				["Location"] = ".rare 390,14.00,58.60,npc:Kal'tik the Blight:50749;.rare 390,14.00,58.20,npc:Kal'tik the Blight:50749;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50806] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Moldo One-Eye",
				["Notes"] = "Roams in the old river between the location points.",
				["Location"] = ".rare 390,35.20,61.80,npc:Moldo One-Eye:50806;.rare 390,43.80,51.80,npc:Moldo One-Eye:50806;.rare 390,39.00,53.40,npc:Moldo One-Eye:50806;.rare 390,36.80,57.80,npc:Moldo One-Eye:50806;.rare 390,43.40,53.40,npc:Moldo One-Eye:50806;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50822] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ai-Ran the Shifting Cloud",
				["Notes"] = "",
				["Location"] = ".rare 390,42.60,69.00,npc:Ai-Ran the Shifting Cloud:50822;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50349] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Kang the Soul Thief",
				["Notes"] = "",
				["Location"] = ".rare 390,15.00,35.60,npc:Kang the Soul Thief:50349;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50840] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Major Nanners",
				["Notes"] = "",
				["Location"] = ".rare 390,31.00,91.60,npc:Major Nanners:50840;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[64403] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Alani",
				["Notes"] = "Giant serpent dragon flying arround the Vale. Needs Sky Crystal to remove immunity.",
				["Location"] = ".rare 390,51.40,43.00,npc:Alani:64403;.rare 390,38.80,65.60,npc:Alani:64403;.rare 390,16.80,40.40,npc:Alani:64403;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50336] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Yorik Sharpeye",
				["Notes"] = "",
				["Location"] = ".rare 390,87.80,44.60,npc:Yorik Sharpeye:50336;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50780] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Sahn Tidehunter",
				["Notes"] = "",
				["Location"] = ".rare 390,69.60,30.80,npc:Sahn Tidehunter:50780;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50359] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Urgolax",
				["Notes"] = "",
				["Location"] = ".rare 390,39.80,25.00,npc:Urgolax:50359;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[379] = {
		[50733] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ski'thik",
				["Notes"] = "",
				["Location"] = ".rare 379,36.60,79.60,npc:Ski'thik:50733;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Statue of Xuen"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 100g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,72.00,33.90,31416",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31416,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Stolen Sprite Treasure"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with ~100g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,59.50,52.90,31415",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31415,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50332] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Korda Torros",
				["Notes"] = "",
				["Location"] = ".rare 379,51.60,81.00,npc:Korda Torros:50332;.rare 379,47.40,81.20,npc:Korda Torros:50332;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Ancient Mogu Tablet"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 95g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,64.20,45.20,31420",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31420,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50341] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Borginn Darkfist",
				["Notes"] = "",
				["Location"] = ".rare 379,56.00,43.40,npc:Borginn Darkfist:50341;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Hozen Treasure Cache"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with 95g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,49.50,59.40,31414",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31414,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Mo-Mo's Treasure Chest"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with 9g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,47.80,73.50,31868",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31868,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50769] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Zai the Outcast",
				["Notes"] = "",
				["Location"] = ".rare 379,73.20,76.40,npc:Zai the Outcast:50769;.rare 379,73.80,77.40,npc:Zai the Outcast:50769;.rare 379,74.40,79.20,npc:Zai the Outcast:50769;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50817] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ahone the Wanderer",
				["Notes"] = "",
				["Location"] = ".rare 379,40.80,42.40,npc:Ahone the Wanderer:50817;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Lost Adventurer's Belongings"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Item with ~97g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,36.70,79.80,31418",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31418,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		["Terracotta Head"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 100g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,57.80,76.30,31422",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31422,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50831] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Scritch",
				["Notes"] = "Chance to drop item that increases reputation with all Pandaria's factions by 1000.",
				["Location"] = ".rare 379,47.20,63.00,npc:Scritch:50831;.rare 379,46.20,61.80,npc:Scritch:50831;.rare 379,44.80,63.60,npc:Scritch:50831;.rare 379,44.80,65.20,npc:Scritch:50831;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		["Rikktik's Tiny Chest"] = {
			[1] = {
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_chest_normal:0|t",
				["Notes"] = "Grey item worth 105g.\nCounts toward the achievement [Riches of Pandaria]",
				["Location"] = ".treasure 379,52.60,51.50,31419",
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Treasure",
				["Quest"] = 31419,
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_chest_elite:0|t",
			},

		},

		[50789] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Nessos the Oracle",
				["Notes"] = "",
				["Location"] = ".rare 379,63.80,13.80,npc:Nessos the Oracle:50789;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50354] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Havak",
				["Notes"] = "",
				["Location"] = ".rare 379,59.20,73.80,npc:Havak:50354;.rare 379,57.00,75.80,npc:Havak:50354;.rare 379,57.60,75.00,npc:Havak:50354;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

	[422] = {
		[50805] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Omnis Grinlok",
				["Notes"] = "",
				["Location"] = ".rare 422,39.60,61.80,npc:Omnis Grinlok:50805;.rare 422,36.60,64.60,npc:Omnis Grinlok:50805;.rare 422,39.60,58.40,npc:Omnis Grinlok:50805;.rare 422,36.80,60.60,npc:Omnis Grinlok:50805;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50347] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Karr the Darkener",
				["Notes"] = "",
				["Location"] = ".rare 422,71.80,37.60,npc:Karr the Darkener:50347;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50821] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ai-Li Skymirror",
				["Notes"] = "",
				["Location"] = ".rare 422,34.80,23.20,npc:Ai-Li Skymirror:50821;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50356] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Krol the Blade",
				["Notes"] = "Drops item that increases experience gains by 300% for 1 hour.",
				["Location"] = ".rare 422,73.60,23.60,npc:Krol the Blade:50356;.rare 422,74.00,20.80,npc:Krol the Blade:50356;.rare 422,73.20,20.40,npc:Krol the Blade:50356;.rare 422,73.00,22.20,npc:Krol the Blade:50356;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50739] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Gar'lok",
				["Notes"] = "",
				["Location"] = ".rare 422,39.20,41.80,npc:Gar'lok:50739;.rare 422,37.80,29.60,npc:Gar'lok:50739;.rare 422,35.60,30.80,npc:Gar'lok:50739;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50836] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Ik-Ik the Nimble",
				["Notes"] = "",
				["Location"] = ".rare 422,55.40,63.40,npc:Ik-Ik the Nimble:50836;.rare 422,55.20,63.80,npc:Ik-Ik the Nimble:50836;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50776] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Nalash Verdantis",
				["Notes"] = "Drops battle pet Aqua Strider",
				["Location"] = ".rare 422,64.20,58.60,npc:Nalash Verdantis:50776;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

		[50334] = {
			[1] = {
				["MinLevel"] = 85,
				["MaxLevel"] = 90,
				["Classification"] = "Rare",
				--["Movement"] = "Idle",
				["Name"] = "Dak the Breaker",
				["Notes"] = "",
				["Location"] = ".rare 422,25.20,28.60,npc:Dak the Breaker:50334;",
				["Icon"] = "|TInterface\\MINIMAP\\Minimap_skull_normal:0|t",
				["AltIcon"] = "|TInterface\\MINIMAP\\Minimap_skull_elite:0|t",
			},

		},

	},

}
