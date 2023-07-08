local WorldMapButton = WorldMapFrame:GetCanvas()
local map_open_signal = CreateFrame("frame", nil, WorldMapButton)
local dungeon_overlay_frame = CreateFrame("frame", nil)
local dungeon_overlay_frame_canvas = CreateFrame("frame", nil, dungeon_overlay_frame)
local current_selected_dungeon = nil
RXP_DungeonMapsUILoaded = 1

local function colorWrap(str)
	return "|c00FFBF00" .. str .. "|r"
end

-- local horde_logo = "|TInterface\\Timer\\Horde-Logo:19:19:0:-2:64:64:4:60:4:60|t"
local horde_logo = "|TInterface\\FriendsFrame\\PlusManz-Horde:18:18:0:-3:64:64:0:64:0:64|t"
local alliance_logo = "|TInterface\\FriendsFrame\\PlusManz-Alliance:18:18:0:-3:64:64:0:64:0:64|t"
local quest_logo = "|TInterface\\MINIMAP\\ObjectIconsAtlas:12:9:0:-3:512:512:374:395:170:199|t"
local debug = false

local dungeon_ui_config = {
	["Deadmines"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Oh Brother ...",
				["description"] = "Kill " .. colorWrap("Foreman Thistlenettle") .. " and loot him for his badge.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Collecting Memories",
				["description"] = "Slay undead enemies in the area and loot them for Miner's Union Cards.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Red Silk Bandanas",
				["description"] = "Kill any elite Defias enemies inside the instance and loot them for their bandanas.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "Underground Assault",
				["description"] = "Retrieve the "
					.. colorWrap("Gnoam Sprecklesprocket")
					.. " from Sneed after defeating him and his Shredder.",
			},
			[5] = {
				["num"] = 5,
				["title"] = "The Defias Brotherhood",
				["description"] = "Defeat " .. colorWrap("Edwin VanCleef") .. " and loot him for his head.",
			},
			[6] = {
				["num"] = 5,
				["title"] = "The Unsent Letter",
				["description"] = "After defeating "
					.. colorWrap("Edwin VanCleef")
					.. " loot him for the Unsent Letter and use it to start a quest.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Entrance",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\deadmines_entrance",
				["quests"] = { 1, 2 },
				["icons"] = {
					{ 1, 0.55, 0.88, colorWrap("Foreman Thistlenettle") },
					{ 2, 0.43, 0.78 },
				},
				["entrances"] = {
					{ 2, 0.23, 0.49, nil },
				},
			},
			{
				["name"] = "The Deadmines",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\the_deadmines",
				["quests"] = { 3, 4 },
				["icons"] = {
					{ 4, 0.485, 0.83, colorWrap("Sneed's Shredder") },
				},
				["entrances"] = {
					{ 1, 0.28, 0.11, nil },
				},
				["passages"] = {
					{ 3, 0.64, 0.65, 3.14 },
				},
			},
			{
				["name"] = "Ironclad Cove",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\ironclad_cove",
				["quests"] = { 3, 5, 6 },
				["icons"] = {
					{ 5, 0.585, 0.42, colorWrap("Edwin VanCleef") },
				},
				["passages"] = {
					{ 2, 0.11, 0.65, 3.14 },
				},
				["entrances"] = {
					{ nil, 0.83, 0.41, nil },
				},
			},
		},
	},
	["Ragefire Chasm"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Hidden Enemies",
				["description"] = "Slay "
					.. colorWrap("Jergosh")
					.. " the Invoker and "
					.. colorWrap("Bazzalan")
					.. ".",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Slaying the Beast",
				["description"] = "Slay " .. colorWrap("Taragaman the Hungerer") .. " and pick up his heart.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Searching for the Lost Satchel",
				["description"] = "Find " .. colorWrap("Maur Grimtotem") .. "'s corpse and turn in the quest.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "Testing an Enemy's Strength",
				["description"] = colorWrap("Ragefire Trogg")
					.. " slain x8\n"
					.. colorWrap("Ragefire Shaman")
					.. " slain x8\n",
			},
			[5] = {
				["num"] = 5,
				["title"] = "The Power to Destroy ...",
				["description"] = "Slay " .. colorWrap("Searing Blade Cultists") .. " and " .. colorWrap(
					"Searing Blade Warlocks"
				) .. " for the two required books.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Ragefire Chasm",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\ragefire_chasm",
				["quests"] = { 1, 2, 3, 4, 5 },
				["icons"] = {
					{ 1, 0.396 + 0.01, 1 - 0.045 - 0.112, colorWrap("Bezzelan") },
					{ 1, 0.321 + 0.01, 1 - 0.045 - 0.156, colorWrap("Jergosh the Invoker") },
					{ 2, 0.386 + 0.01, 1 - 0.045 - 0.405, colorWrap("Taragaman the Hungerer") },
					{ 3, 0.539 + 0.01, 1 - 0.045 - 0.6, nil },
					{ 4, 0.655 + 0.01, 1 - 0.045 - 0.591, nil },
					{ 5, 0.312 + 0.01, 1 - 0.045 - 0.323, nil },
				},
				["entrances"] = {
					{ 1, 0.585 + 0.01, 1 - 0.045 - 0.913, nil },
				},
			},
		},
	},
	["Wailing Caverns"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Trouble at the Docks",
				["description"] = "Kill and loot "
					.. colorWrap("Mad Mogglish")
					.. " in the caves leading up to the instance.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Deviate Hides",
				["description"] = "Kill and loot enemies in front of or inside the instance for Deviate Hides (Raptors, Serpents, Crocolisks).",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Smart Drinks",
				["description"] = "Kill and loot Ectoplasm enemies inside the instance.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "Serpentbloom",
				["description"] = "Loot " .. colorWrap("Serpentbloom") .. " flowers inside the instance.",
			},
			[5] = {
				["num"] = 5,
				["title"] = "Leaders of the Fang",
				["description"] = "Kill and loot 4 different bosses inside the Wailing Caverns instance.",
			},
			[6] = {
				["num"] = 6,
				["title"] = "The Glowing Shard",
				["description"] = "Kill "
					.. colorWrap("Mutanus the Devourer")
					.. " and loot the Glowing Shard to start your quest.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Cavern of Mists",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\wailing_caverns_entrance",
				["quests"] = { 1, 2 },
				["icons"] = {
					{ 1, 0.293 + 0.01, 1 - 0.045 - 0.194, colorWrap("Mad Mogglish") },
				},
				["entrances"] = {
					{ 2, 0.521 + 0.01, 1 - 0.045 - 0.307, nil },
				},
				["passages"] = {
					{ 1, 0.193 + 0.01, 1 - 0.045 - 0.140, nil },
				},
			},
			{
				["name"] = "Wailing Caverns",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\wailing_caverns",
				["quests"] = { 2, 3, 4, 5, 6 },
				["icons"] = {
					{ 3, 0.349 + 0.01, 1 - 0.045 - 0.614, nil },
					{ 6, 0.314 + 0.01, 1 - 0.045 - 0.848, colorWrap("Mutanus the Devourer") },
					{ 5, 0.161 + 0.01, 1 - 0.045 - 0.590, colorWrap("Lord Pythas") },
					{ 5, 0.279 + 0.01, 1 - 0.045 - 0.549, colorWrap("Lady Anacondra") },
					{ 5, 0.132 + 0.01, 1 - 0.045 - 0.410, colorWrap("Lord Cobran") },
					{ 5, 0.585 + 0.01, 1 - 0.045 - 0.445, colorWrap("Lord Serpentis") },
				},
				["entrances"] = {
					{ 1, 0.430 + 0.01, 1 - 0.045 - 0.393, nil },
				},
			},
		},
	},
	["Shadowfang Keep"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Deathstalkers in Shadowfang",
				["description"] = "Release Deathstalker Adamant and interact with " .. colorWrap(
					"Deathstalker Vincent"
				) .. " to turn in the quest.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "The Book of Ur",
				["description"] = "Bring the Book of Ur to "
					.. colorWrap("Keeper Bel'dugur")
					.. " at the Apothecarium in the Undercity.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Arugal Must Die",
				["description"] = "Kill " .. colorWrap("Arugal") .. ".\nPick up " .. colorWrap("Head of Arugal") .. ".",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Courtyard",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep2",
				["quests"] = { 1 },
				["icons"] = {
					{ 1, 0.544 + 0.01, 1 - 0.045 - 0.395, colorWrap("Deathstalker Vincent") },
					{ 1, 0.627 + 0.01, 1 - 0.045 - 0.256, colorWrap("Deathstalker Adamant") },
				},
				["entrances"] = {
					{ 2, 0.67 + 0.01, 1 - 0.045 - 0.371, nil },
				},
				["passages"] = {
					{ 2, 0.321 + 0.03, 1 - 0.045 - 0.574, 2 },
					{ 3, 0.326 + 0.015, 1 - 0.045 - 0.294, 6 },
					{ 2, 0.121 + 0.03, 1 - 0.045 - 0.12, 6 },
				},
			},
			{
				["name"] = "Dining Hall",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep1",
				["quests"] = {},
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 1, 0.25 + 0.01, 1 - 0.045 - 0.09, 3 },
					{ 1, 0.6 + 0.01, 1 - 0.045 - 0.86, 5 },
				},
			},
			{
				["name"] = "The Wall Walk",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep4",
				["quests"] = {},
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 1, 0.2 + 0.01, 1 - 0.045 - 0.21, 1.7 },
					{ 4, 0.41 + 0.01, 1 - 0.045 - 0.66, 3 },
				},
			},
			{
				["name"] = "The Vacant Den",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep3",
				["quests"] = {},
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 5, 0.5 + 0.01, 1 - 0.045 - 0.130, 6 },
					{ 3, 0.5 + 0.01, 1 - 0.045 - 0.38, 6 },
				},
			},
			{
				["name"] = "Lower Observatory",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep5",
				["quests"] = { 2 },
				["icons"] = {
					{ 2, 0.45 + 0.01, 1 - 0.045 - 0.33, colorWrap("The Book of Ur") },
				},
				["entrances"] = {},
				["passages"] = {
					{ 4, 0.5 + 0.01, 1 - 0.045 - 0.100, 2.8 },
					{ 6, 0.415 + 0.01, 1 - 0.045 - 0.215, 4.3 },
				},
			},
			{
				["name"] = "Upper Observatory",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep6",
				["quests"] = {},
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 5, 0.465 + 0.01, 1 - 0.045 - 0.185, 3 },
					{ 7, 0.4 + 0.01, 1 - 0.045 - 0.23, 4.3 },
				},
			},
			{
				["name"] = "Arugal's Chamber",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\shadowfang_keep7",
				["quests"] = { 3 },
				["icons"] = {
					{ 3, 0.6 + 0.01, 1 - 0.045 - 0.73, colorWrap("Arugal") },
				},
				["entrances"] = {},
				["passages"] = {
					{ 6, 0.39 + 0.01, 1 - 0.045 - 0.14, 3.5 },
				},
			},
		},
	},
	["Blackfathom Deeps"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Researching the Corruption",
				["description"] = "Loot 8 "
					.. colorWrap("Corrupt Brain Stems")
					.. " from enemies leading up to and inside Blackfathom Deeps.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "The Essence of Aku`Mai",
				["description"] = "Loot "
					.. colorWrap("Sapphire of Aku`Mai")
					.. " on the cave walls leading up to Blackfathom Deeps.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Knowledge in the Deeps",
				["description"] = "Loot " .. colorWrap("Lorgalis Manuscript") .. " from an underwater chest.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "Allegiance to the Old Gods",
				["description"] = "Kill " .. colorWrap("Jorgus Jett") .. ".",
			},
			[5] = {
				["num"] = 5,
				["title"] = "Baron Aquanis",
				["description"] = "Kill and loot " .. colorWrap("Baron Aquanis") .. ".",
			},
			[6] = {
				["num"] = 6,
				["title"] = "Amongst the Ruins",
				["description"] = "Loot " .. colorWrap("Fathom core") .. " after defeating the " .. colorWrap(
					"Baron Aquanis" .. "."
				),
			},
			[7] = {
				["num"] = 7,
				["title"] = "Blackfathom Villainy",
				["description"] = "Kill and loot " .. colorWrap("Twilight Lord Kelris") .. ".",
			},
			[8] = {
				["num"] = 8,
				["title"] = "Twilight Falls",
				["description"] = "Loot " .. colorWrap("Twilight Pendants") .. " from Twilight's Hammer Cultists.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "The Pool of Ask'ar",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\blackfathom_deeps1",
				["quests"] = { 1, 2, 3 },
				["icons"] = {
					{ 1, 0.31, 0.43, nil },
				},
				["entrances"] = {
					{ 1, 0.44, 0.1, nil },
				},
				["passages"] = {
					{ 3, 0.61, 0.75, 2 },
				},
			},
			{
				["name"] = "The Forgotten Pool",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\blackfathom_deeps3",
				["quests"] = {},
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 2, 0.35, 0.61, 1.5 },
				},
			},
			{
				["name"] = "Moonshrine Sanctum",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\blackfathom_deeps2",
				["quests"] = { 1, 4, 5, 6, 7, 8 },
				["icons"] = {
					{ 4, 0.32, 0.69, colorWrap("Jorgus Jett") },
					{ 5, 0.365, 0.71, colorWrap("Baron Aquanis") },
					{ 7, 0.505, 0.815, colorWrap("Twilight Lord Kelris") },
					{ 8, 0.655, 0.835, nil },
				},
				["entrances"] = {},
				["passages"] = {
					{ 1, 0.38, 0.31, 3.14 },
					{ 2, 0.44, 0.75, 4 },
				},
			},
		},
	},
	["The Stockades"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Quell the Uprising",
				["description"] = "Kill " .. colorWrap("Defias Prisoners, Convicts,") .. " and " .. colorWrap(
					"Insurgents"
				) .. ".",
			},
			[2] = {
				["num"] = 2,
				["title"] = "The Color of Blood",
				["description"] = "Kill and loot Defias for their bandanas.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "What Comes Around...",
				["description"] = "Kill and loot " .. colorWrap("Targorr the Dread") .. ".",
			},
			[4] = {
				["num"] = 4,
				["title"] = "The Fury Runs Deep",
				["description"] = "Kill and loot " .. colorWrap("Kam Deepfury") .. ".",
			},
			[5] = {
				["num"] = 5,
				["title"] = "The Stockade Riots",
				["description"] = "Kill and loot " .. colorWrap("Bazil Thredd") .. ".",
			},
			[6] = {
				["num"] = 6,
				["title"] = "Crime and Punishment",
				["description"] = "Kill and loot " .. colorWrap("Dextren Ward") .. ".",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "The Stockades",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\the_stockade",
				["quests"] = { 1, 2, 3, 4, 5, 6 },
				["icons"] = {
					{ 6, 0.28 - 0.065, 0.17 + 0.09, colorWrap("Dextren Ward") },
					{ 3, 0.6 - 0.065, 0.425 + 0.09, colorWrap("Targorr the Dread") },
					{ 4, 0.73 - 0.065, 0.205 + 0.09, colorWrap("Kam Deepfury") },
					{ 5, 0.86 - 0.065, 0.39 + 0.09, colorWrap("Bazil Thredd") },
				},
				["entrances"] = {
					{ 1, 0.55 - 0.065, 0.69 + 0.09, nil },
				},
				["passages"] = {},
			},
		},
	},
	["Gnomeregan"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Save Techbot's Brain",
				["description"] = "Kill and loot " .. colorWrap("Techbot") .. " in the area leading up to Gnomeregan.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Data Rescue",
				["description"] = "Loot the "
					.. colorWrap("White Punch Card")
					.. " from the NPCs in Gnomeregan, and take it to "
					.. colorWrap("Punchograph 3005-A")
					.. ".",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Gnogaine",
				["description"] = "Use the phial on " .. colorWrap("Irradiated Invaders") .. " and " .. colorWrap(
					"Irradiated Pillagers"
				) .. " to collect the sample.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "The Only Cure is More Green Glow",
				["description"] = "Use the phial on one of the green slimes and return the sample before it disappears.",
			},
			[5] = {
				["num"] = 5,
				["title"] = "Gyrodrillmatic Excavationors",
				["description"] = "Collect "
					.. colorWrap("Robo-mechanical Guts")
					.. " from mechanical enemies inside Gnomeregan.",
			},
			[6] = {
				["num"] = 8,
				["title"] = "The Grand Betrayal",
				["description"] = "Kill " .. colorWrap("Mekgineer Thermaplugg") .. ".",
			},
			[7] = {
				["num"] = 7,
				["title"] = "Grime-Encrusted Ring",
				["description"] = "Bring the ring back to the "
					.. colorWrap("Sparklematic 5200")
					.. " to clean it and progress the quest.",
			},
			[8] = {
				["num"] = 8,
				["title"] = "Rig Wars",
				["description"] = "Kill and loot " .. colorWrap("Mekgineer Thermaplugg") .. " as well as his safe.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Gnomeregan Entrance",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\gnomeregan5",
				["quests"] = { 1, 2 },
				["icons"] = {
					{ 1, 0.33, 0.295, colorWrap("Techbot") },
					{ 2, 0.52, 0.21, colorWrap("Punchograph 3005-A") },
				},
				["entrances"] = {
					{ 2, 0.4, 0.1, nil },
				},
				["passages"] = {
					{ 1, 0.69, 0.82, 1.5 },
				},
			},
			{
				["name"] = "The Hall of Gears",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\gnomeregan3",
				["quests"] = { 3, 5 },
				["icons"] = {
					{ 3, 0.475, 0.475, nil },
				},
				["entrances"] = {
					{ 1, 0.63, 0.26, nil },
				},
				["passages"] = {
					{ 3, 0.53, 0.4, 2 },
					{ 3, 0.33, 0.62, 4 },
					{ 3, 0.46, 0.845, 0 },
				},
			},
			{
				["name"] = "The Dormitory",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\gnomeregan2",
				["quests"] = { 2, 5, 4, 7 },
				["icons"] = {
					{ 2, 0.25, 0.63, colorWrap("Punchograph 3005-A") },
					{ 7, 0.64, 0.61, colorWrap("Punchograph 3005-B") },
					{ 2, 0.7, 0.67, nil },
					{ 4, 0.74, 0.455, nil },
				},
				["entrances"] = {},
				["passages"] = {

					{ 4, 0.28, 0.69, 3.7 },
					{ 4, 0.4, 0.81, 3.5 },
					{ 2, 0.595, 0.55, 3.45 },
					{ 2, 0.75, 0.795, 0 },
				},
			},
			{
				["name"] = "Launch Bay",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\gnomeregan1",
				["quests"] = { 5 },
				["icons"] = {},
				["entrances"] = {},
				["passages"] = {
					{ 5, 0.22, 0.41, 3 },
					{ 3, 0.43, 0.42, 2.5 },
					{ 3, 0.49, 0.69, 2 },
				},
			},
			{
				["name"] = "Tinkers' Court",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\gnomeregan4",
				["quests"] = { 5, 2, 7, 6, 8 },
				["icons"] = {
					{ 8, 0.3, 0.29, colorWrap("Mekgineer Thermaplugg") },
					{ 7, 0.35, 0.64, colorWrap("Mekgineer Thermaplugg") },
					{ 2, 0.61, 0.84, colorWrap("Punchograph 3005-D") },
				},
				["entrances"] = {},
				["passages"] = {
					{ 4, 0.45, 0.52, 3 },
					{ 4, 0.695, 0.76, 3 },
				},
			},
		},
	},
	["Razorfen Kraul"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Blueleaf Tubers",
				["description"] = "After entering the instance, release your "
					.. colorWrap("Snufflenose Gopher")
					.. " and use the stick to find truffles.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Mortality Wanes",
				["description"] = "Loot "
					.. colorWrap("Treshala's Pendant")
					.. " from any Quilboar inside the instance.",
			},
			[3] = {
				["num"] = 3,
				["title"] = "Going, Going, Guano!",
				["description"] = "Kill and loot " .. colorWrap("Kraul Bat") .. " and " .. colorWrap(
					"Greater Kraul Bat"
				) .. ".",
			},
			[4] = {
				["num"] = 4,
				["title"] = "A Vengeful Fate",
				["description"] = "Kill and loot " .. colorWrap("Charlga Razorflank") .. ".",
			},
			[5] = {
				["num"] = 4,
				["title"] = "An Unholy Alliance",
				["description"] = "Kill and loot a " .. colorWrap("Small Scroll") .. " from " .. colorWrap(
					"Charlga Razorflank"
				) .. ".",
			},
			[6] = {
				["num"] = 5,
				["title"] = "Willix the Importer",
				["description"] = "Escort "
					.. colorWrap("Willix")
					.. " out of the dungeon. Should be done at the end of your run and there are a number of Truffles on this route.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Razorfen Kraul",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\razorfen_kraul",
				["quests"] = { 1, 2 },
				["icons"] = {
					{ 3, 0.15, 0.425, nil },
					{ 4, 0.2, 0.29, colorWrap("Charlga Razorflank") },
					{ 5, 0.32, 0.3, colorWrap("Willix") },
				},
				["entrances"] = {
					{ 1, 0.7, 0.81, nil },
				},
				["passages"] = {},
			},
		},
	},
	["Scarlet Monastery"] = {
		["quests"] = {
			[1] = {
				["num"] = 1,
				["title"] = "Hearts of Zeal",
				["description"] = "Loot "
					.. colorWrap("Heart of Zeal")
					.. " from Scarlet enemies in front of the dungeon.",
			},
			[2] = {
				["num"] = 2,
				["title"] = "Vorrel's Revenge",
				["description"] = "Speak to  " .. colorWrap("Vorrel Sengutz") .. ".",
			},
			[3] = {
				["num"] = 4,
				["title"] = "Into the Scarlet Monastery " .. horde_logo,
				["description"] = "Kill 4 bosses in Scarlet Monastery.",
			},
			[4] = {
				["num"] = 4,
				["title"] = "In the Name of the Light " .. alliance_logo,
				["description"] = "Kill 4 bosses in Scarlet Monastery.",
			},
			[5] = {
				["num"] = 3,
				["title"] = "Mythology of the Titans " .. alliance_logo,
				["description"] = "Loot "
					.. colorWrap("Mythology of the Titans")
					.. " book in Scarlet Monastery Library.",
			},
			[6] = {
				["num"] = 3,
				["title"] = "Compendium of the Fallen " .. horde_logo,
				["description"] = "Loot "
					.. colorWrap("Compendium of the Fallen")
					.. " book in Scarlet Monastery Library.",
			},
			[7] = {
				["num"] = 3,
				["title"] = "Test of Lore " .. horde_logo,
				["description"] = "Loot "
					.. colorWrap("Beginnings of the Undead Thread")
					.. " book in Scarlet Monastery Library.",
			},
		},
		["subdungeons"] = {
			{
				["name"] = "Entrance",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\sm3",
				["quests"] = { 1 },
				["icons"] = {
					{ 1, 0.55, 0.495, nil },
				},
				["entrances"] = {},
				["passages"] = {
					{ 2, 0.66, 0.2, 0.5 },
					{ 3, 0.75, 0.28, 5.5 },
					{ 4, 0.795, 0.45, 5.5 },
					{ 5, 0.77, 0.585, 3.8 },
				},
			},
			{
				["name"] = "Graveyard",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\sm4",
				["quests"] = { 2 },
				["icons"] = {
					{ 2, 0.695, 0.585, nil },
				},
				["entrances"] = {
					{ 1, 0.815, 0.8, nil },
				},
				["passages"] = {},
			},
			{
				["name"] = "Library",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\sm5",
				["quests"] = { 3, 4, 5, 6, 7 },
				["icons"] = {
					{ 3, 0.44, 0.285, nil },
					{ 4, 0.29, 0.82, colorWrap("Houndmaster Loksey") },
				},
				["entrances"] = {
					{ 1, 0.115, 0.24, nil },
				},
				["passages"] = {},
			},
			{
				["name"] = "Armory",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\sm1",
				["quests"] = { 3, 4 },
				["icons"] = {
					{ 4, 0.77, 0.09, colorWrap("Herod") },
				},
				["entrances"] = {
					{ 1, 0.6, 0.94, nil },
				},
				["passages"] = {},
			},
			{
				["name"] = "Cathedral",
				["texture"] = "Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps\\sm2",
				["quests"] = { 3, 4 },
				["icons"] = {
					{ 4, 0.475, 0.15, colorWrap("High Inquisitor Whitemane") },
					{ 4, 0.475, 0.26, colorWrap("Scarlet Commander Mograine") },
				},
				["entrances"] = {
					{ 1, 0.61, 0.9, nil },
				},
				["passages"] = {},
			},
		},
	},
}

local function createHardcoreUIFrame(
	frame_width,
	frame_height,
	zoom,
	background_cen_x,
	background_cen_y,
	parent,
	parent_anchor,
	frame_anchor,
	x_off,
	y_off,
	level
)
	local ratio = frame_height / frame_width
	local frame = CreateFrame("frame")

	parent:HookScript("OnHide", function()
		frame:Hide()
	end)
	frame:SetFrameLevel(level)
	frame:SetPoint(frame_anchor, parent, parent_anchor, x_off, y_off)
	frame:SetSize(frame_width, frame_height)
	frame:Show()
	frame.textures = {}

	local tex_coords = {
		["bottom_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["bottom_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_left_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_right_corner"] = { 0, 0.156, 1 - 0.272, 1 - (0.272 + 0.15) },
		["top_bar"] = { 0, 1, 1 - 0.0423, 1 - (0.0423 + 0.0423 / 2) },
		["mid_bar"] = { 0, 1, 1 - 0.0423, 1 - (0.0423 + 0.0423 / 2) },
		["mid_bar2"] = { 0, 1, 1 - 0.0423, 1 - (0.0423 + 0.0423 / 2) },
		["bottom_bar"] = { 0, 1, 1 - 0.0402 / 3, 1 - 0.0402 },
		["right_bar"] = { 0.157, 0.157 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["left_bar"] = { 0.171, 0.171 + 0.0146, 1 - 0.298, 1 - (0.298 + 0.0307) },
		["skull_emblem"] = { 0.204, 0.204 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348 },
	}

	local tex_sizes = {
		["bottom_left_corner"] = { 0.1, 0.1 },
		["bottom_right_corner"] = { 0.1, 0.1 },
		["top_left_corner"] = { 0.1, 0.1 },
		["top_right_corner"] = { 0.1, 0.1 },
		["top_bar"] = { 1 * frame:GetWidth() / 375, 0.0175 },
		["bottom_bar"] = { 1 * frame:GetWidth() / 375, 0.0175 },
		["mid_bar"] = { 0.99 * frame:GetWidth() / 375, 0.0155 },
		["mid_bar2"] = { 0.99 * frame:GetWidth() / 375, 0.0055 },
		["left_bar"] = { 0.0175, 1 * ratio * frame:GetWidth() / 375 },
		["right_bar"] = { 0.0175, 1 * ratio * frame:GetWidth() / 375 },
		["skull_emblem"] = { 0.13, 0.13 },
	}

	local tex_rots = {
		["bottom_left_corner"] = 0,
		["bottom_right_corner"] = 1.57,
		["top_left_corner"] = 3.14 + 1.57,
		["top_right_corner"] = 3.14,
		["mid_bar"] = 0,
		["mid_bar2"] = 0,
		["top_bar"] = 0,
		["bottom_bar"] = 0,
		["left_bar"] = 0,
		["right_bar"] = 0,
		["skull_emblem"] = 0,
	}

	local tex_anchors = {
		["bottom_left_corner"] = { "BOTTOMLEFT", "BOTTOMLEFT", -5, -5, 5 },
		["bottom_right_corner"] = { "BOTTOMRIGHT", "BOTTOMRIGHT", 5, -5, 5 },
		["top_left_corner"] = { "TOPLEFT", "TOPLEFT", -5, 5, 5 },
		["top_right_corner"] = { "TOPRIGHT", "TOPRIGHT", 5, 5, 5 },
		["top_bar"] = { "TOP", "TOP", 0, 0, 1 },
		["mid_bar"] = { "TOP", "TOP", 0, -48, 7 },
		["mid_bar2"] = { "TOP", "TOP", 0, -81, 7 },
		["bottom_bar"] = { "BOTTOM", "BOTTOM", 0, 0, 1 },
		["left_bar"] = { "LEFT", "LEFT", 0, 0, 3 },
		["right_bar"] = { "RIGHT", "RIGHT", 0, 0, 3 },
		["skull_emblem"] = { "TOPLEFT", "TOPLEFT", -10, 10, 6 },
	}

	for _, v in ipairs({
		"bottom_left_corner",
		"bottom_right_corner",
		"top_left_corner",
		"top_right_corner",
		"top_bar",
		"mid_bar",
		"mid_bar2",
		"bottom_bar",
		"left_bar",
		"right_bar",
		"skull_emblem",
	}) do
		frame.textures[v] = frame:CreateTexture(nil, "OVERLAY")
		local tex = frame.textures[v]
		local coords = tex_coords[v]
		local sizes = tex_sizes[v]
		local rot = tex_rots[v]
		local anchors = tex_anchors[v]
		tex:SetPoint(anchors[1], frame, anchors[2], anchors[3], anchors[4])
		tex:SetDrawLayer("OVERLAY", anchors[5])
		tex:SetHeight(375 * sizes[2])
		tex:SetWidth(375 * sizes[1])
		tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
		tex:SetTexCoord(coords[1], coords[2], coords[3], coords[4])
		tex:SetRotation(rot)
	end

	frame.black_glow_tex = frame:CreateTexture(nil, "OVERLAY")
	local tex = frame.black_glow_tex
	tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	tex:SetDrawLayer("OVERLAY", -1)
	tex:SetHeight(frame:GetHeight())
	tex:SetWidth(frame:GetWidth())
	-- tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp")

	tex:SetTexture("Interface\\BankFrame\\Bank-Background")
	tex:SetVertexColor(0.3, 0.3, 0.3, 1)

	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self, button)
		self:StartMoving()
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)

	return frame
end

dungeon_overlay_frame:ClearAllPoints()
dungeon_overlay_frame:SetPoint("CENTER", WorldMapButton, "CENTER")
dungeon_overlay_frame:SetFrameLevel(1)
dungeon_overlay_frame:SetHeight(500)
dungeon_overlay_frame:SetWidth(930)
dungeon_overlay_frame:SetFrameStrata("HIGH")
dungeon_overlay_frame:Hide()

local default_x = 0
local default_y = 0
dungeon_overlay_frame_canvas =
	createHardcoreUIFrame(930, 500, 0.3, 0.5, 0.3, UIParent, "CENTER", "CENTER", default_x, default_y, 1)
dungeon_overlay_frame_canvas:SetParent(dungeon_overlay_frame)
dungeon_overlay_frame_canvas:ClearAllPoints()
dungeon_overlay_frame_canvas:SetAllPoints(dungeon_overlay_frame)
dungeon_overlay_frame_canvas:SetFrameLevel(1)
dungeon_overlay_frame_canvas:SetFrameStrata("HIGH")
dungeon_overlay_frame_canvas:Hide()

dungeon_overlay_frame_canvas.canvas = dungeon_overlay_frame_canvas:CreateTexture(nil, "BACKGROUND")

dungeon_overlay_frame_canvas.canvas:SetAllPoints(dungeon_overlay_frame)
dungeon_overlay_frame_canvas.canvas:SetDrawLayer("OVERLAY", 1)
dungeon_overlay_frame_canvas.canvas:SetVertexColor(1, 1, 1, 0)
dungeon_overlay_frame_canvas.canvas:SetColorTexture(0, 0, 0)
-- dungeon_overlay_frame_canvas.canvas:SetTexture("Interface\\BankFrame\\Bank-Background")
dungeon_overlay_frame_canvas.canvas:Show()

dungeon_overlay_frame_canvas.map_texture = dungeon_overlay_frame_canvas:CreateTexture(nil, "BACKGROUND")
dungeon_overlay_frame_canvas.map_texture:SetPoint("BOTTOMLEFT", dungeon_overlay_frame_canvas, "BOTTOMLEFT")
dungeon_overlay_frame_canvas.map_texture:SetDrawLayer("OVERLAY", 6)
dungeon_overlay_frame_canvas.map_texture:SetHeight(dungeon_overlay_frame_canvas:GetHeight() * 0.85)
dungeon_overlay_frame_canvas.map_texture:SetWidth(dungeon_overlay_frame_canvas.map_texture:GetHeight() / 0.66)
dungeon_overlay_frame_canvas.map_texture:Show()

if debug then
	dungeon_overlay_frame_canvas.debug_map_texture = dungeon_overlay_frame_canvas:CreateTexture(nil, "BACKGROUND")
	dungeon_overlay_frame_canvas.debug_map_texture:SetPoint("BOTTOMLEFT", dungeon_overlay_frame_canvas, "BOTTOMLEFT")
	dungeon_overlay_frame_canvas.debug_map_texture:SetDrawLayer("OVERLAY", 7)
	dungeon_overlay_frame_canvas.debug_map_texture:SetHeight(dungeon_overlay_frame_canvas:GetHeight() * 0.85)
	dungeon_overlay_frame_canvas.debug_map_texture:SetVertexColor(1, 1, 1, 0.5)
	dungeon_overlay_frame_canvas.debug_map_texture:SetTexture(
		"Interface\\Addons\\RXPGuides\\Textures\\DungeonMaps/debug_grid.blp"
	)
	dungeon_overlay_frame_canvas.debug_map_texture:SetWidth(
		dungeon_overlay_frame_canvas.debug_map_texture:GetHeight() / 0.66
	)
	dungeon_overlay_frame_canvas.debug_map_texture:Show()
end

local logo_mask = dungeon_overlay_frame_canvas:CreateMaskTexture()
logo_mask:SetPoint("CENTER", dungeon_overlay_frame_canvas.map_texture, "CENTER", 0, 0)
logo_mask:SetHeight(dungeon_overlay_frame_canvas.map_texture:GetHeight())
logo_mask:SetWidth(dungeon_overlay_frame_canvas.map_texture:GetWidth())
logo_mask:SetTexture(
	"Interface\\Addons\\RXPGuides\\Textures\\blur_box.blp",
	"CLAMPTOBLACKADDITIVE",
	"CLAMPTOBLACKADDITIVE"
)
dungeon_overlay_frame_canvas.map_texture:AddMaskTexture(logo_mask)

-- Dungeon title
dungeon_overlay_frame_canvas.dungeon_title_text =
	dungeon_overlay_frame_canvas:CreateFontString(nil, "OVERLAY", "GameFontNormal")
dungeon_overlay_frame_canvas.dungeon_title_text:SetPoint("TOPLEFT", dungeon_overlay_frame_canvas, "TOPLEFT", 50, -20)
dungeon_overlay_frame_canvas.dungeon_title_text:SetFont("Fonts\\blei00d.TTF", 24, "OUTLINE")
dungeon_overlay_frame_canvas.dungeon_title_text:SetTextColor(0.855, 0.647, 0.125)
dungeon_overlay_frame_canvas.dungeon_title_text:SetText("AAA")
dungeon_overlay_frame_canvas.dungeon_title_text:Show()

-- Objects num text
dungeon_overlay_frame_canvas.objectives_num_text =
	dungeon_overlay_frame_canvas:CreateFontString(nil, "OVERLAY", "GameFontNormal")
dungeon_overlay_frame_canvas.objectives_num_text:SetPoint(
	"TOPRIGHT",
	dungeon_overlay_frame_canvas,
	"TOPRIGHT",
	-105,
	-100
)
dungeon_overlay_frame_canvas.objectives_num_text:SetFont("Fonts\\blei00d.TTF", 14, "")
dungeon_overlay_frame_canvas.objectives_num_text:SetTextColor(0.6, 0.6, 0.6)
dungeon_overlay_frame_canvas.objectives_num_text:SetText("Objectives (0)")
dungeon_overlay_frame_canvas.objectives_num_text:Show()

-- Button Template Instantiation
local function makeQuestLabel()
	local height = 50
	local width = 250
	local _ratio = height / width
	local frame = CreateFrame("frame", nil, dungeon_overlay_frame_canvas, "BackdropTemplate")
	frame:SetPoint("TOP", dungeon_overlay_frame_canvas, "TOP", 10, 10)
	frame:SetSize(width, height)

	frame:SetBackdrop({
		bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	})
	frame:SetBackdropColor(14 / 255, 10 / 255, 7 / 255, 1.0)
	frame:SetBackdropBorderColor(112 / 255, 112 / 255, 112 / 255)

	frame.circle_frame_tex = frame:CreateTexture(nil, "OVERLAY")
	frame.circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	frame.circle_frame_tex:SetHeight(frame:GetHeight())
	frame.circle_frame_tex:SetPoint("CENTER", frame, "LEFT", 0, 0)
	frame.circle_frame_tex:SetWidth(frame:GetHeight())
	frame.circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	frame.circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	frame.circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	frame.circle_frame_tex:Show()

	frame.circle_text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	frame.circle_text:SetDrawLayer("OVERLAY", 4)
	frame.circle_text:SetPoint("CENTER", frame.circle_frame_tex, "CENTER")
	frame.circle_text:SetFont("Fonts\\blei00d.TTF", 22, "OUTLINE")
	frame.circle_text:SetTextColor(0.9, 0.9, 0.9)
	frame.circle_text:SetText("A")
	frame.circle_text:Show()

	frame.title_text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	frame.title_text:SetDrawLayer("OVERLAY", 4)
	frame.title_text:SetPoint("TOPLEFT", frame, "TOPLEFT", 25, -2)
	frame.title_text:SetFont("Fonts\\blei00d.TTF", 14, "OUTLINE")
	frame.title_text:SetTextColor(0.9, 0.9, 0.9)
	frame.title_text:SetJustifyH("LEFT")
	frame.title_text:Show()

	frame.description_text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	frame.description_text:SetDrawLayer("OVERLAY", 4)
	frame.description_text:SetPoint("TOPLEFT", frame, "TOPLEFT", 25, -20)
	frame.description_text:SetFont("Fonts\\blei00d.TTF", 10, "")
	frame.description_text:SetWidth(width * 0.85)
	frame.description_text:SetTextColor(0.9, 0.9, 0.9)
	frame.description_text:SetJustifyH("LEFT")
	frame.description_text:Show()

	local transparent_paper = frame:CreateTexture(nil, "ARTWORK")
	transparent_paper:SetDrawLayer("OVERLAY", 1)
	transparent_paper:SetHeight(frame:GetHeight() - 5)
	transparent_paper:SetPoint("CENTER", frame, "CENTER", 0, 0)
	transparent_paper:SetWidth(frame:GetWidth() - 5)
	transparent_paper:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\transparent_paper.blp")
	transparent_paper:SetVertexColor(1, 1, 1, 1)
	transparent_paper:SetTexCoord(0, 1, 0, 1 * _ratio)
	transparent_paper:Show()

	frame.setData = function(num, title, description)
		frame.circle_text:SetText(num)
		frame.title_text:SetText(quest_logo .. " " .. title)
		frame.description_text:SetText(description)
	end

	return frame
end

local function makeIcon()
	local height = 25
	local width = 25
	local frame = CreateFrame("frame", nil, dungeon_overlay_frame_canvas)
	frame:SetSize(width, height)
	frame:Show()

	frame.circle_frame_tex = frame:CreateTexture(nil, "OVERLAY")
	frame.circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	frame.circle_frame_tex:SetHeight(frame:GetHeight())
	frame.circle_frame_tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frame.circle_frame_tex:SetWidth(frame:GetWidth())
	frame.circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	frame.circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	frame.circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	frame.circle_frame_tex:Show()

	frame.circle_text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	frame.circle_text:SetDrawLayer("OVERLAY", 4)
	frame.circle_text:SetPoint("CENTER", frame.circle_frame_tex, "CENTER")
	frame.circle_text:SetFont("Fonts\\blei00d.TTF", 16, "")
	frame.circle_text:SetJustifyH("CENTER")
	frame.circle_text:SetTextColor(0.9, 0.9, 0.9)
	frame.circle_text:Show()

	frame.setNumber = function(num)
		frame.circle_text:SetText(num)
	end
	return frame
end
dungeon_overlay_frame_canvas.subdungeon_button = {}
dungeon_overlay_frame_canvas.quest_label = {}
for i = 1, 7 do
	local width = 120
	local height = 35

	dungeon_overlay_frame_canvas.subdungeon_button[#dungeon_overlay_frame_canvas.subdungeon_button + 1] =
		CreateFrame("frame", nil, dungeon_overlay_frame_canvas, "BackdropTemplate")

	local new_button = dungeon_overlay_frame_canvas.subdungeon_button[#dungeon_overlay_frame_canvas.subdungeon_button]
	new_button:SetPoint("TOPLEFT", dungeon_overlay_frame, "TOPLEFT", (i - 1) * (width - 8) + 2, -50)
	new_button:SetWidth(width)
	new_button:SetHeight(height)

	new_button:SetBackdrop({
		bgFile = "Interface\\GLUES/Models/UI_VoidElf/6sm_starMaskGradient",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 },
	})
	new_button:SetBackdropColor(222 / 255, 10 / 255, 7 / 255, 1.0)
	new_button:SetBackdropBorderColor(112 / 255, 112 / 255, 0 / 255, 0)
	new_button:EnableMouse(true)
	new_button.text = new_button:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	new_button.text:SetParent(new_button)
	new_button.text:SetPoint("CENTER", new_button, "CENTER")
	new_button.text:SetWidth(width - 15)
	new_button.text:SetHeight(height)
	new_button.text:SetFont("Fonts\\blei00d.TTF", 16, "")
	new_button.text:SetTextColor(0.5, 0.5, 0.5)
	new_button.text:Show()

	dungeon_overlay_frame_canvas.quest_label[#dungeon_overlay_frame_canvas.quest_label + 1] = makeQuestLabel()
end
dungeon_overlay_frame_canvas.subdungeon_button[1].text:SetTextColor(0.855, 0.647, 0.125)

-- Icon pool
dungeon_overlay_frame_canvas.icon_pool = {}
for i = 1, 10 do
	dungeon_overlay_frame_canvas.icon_pool[#dungeon_overlay_frame_canvas.icon_pool + 1] = makeIcon()
	dungeon_overlay_frame_canvas.icon_pool[#dungeon_overlay_frame_canvas.icon_pool]:Hide()
end

local function makeEntranceIcon()
	local height = 20
	local width = 20
	local frame = CreateFrame("frame", nil, dungeon_overlay_frame_canvas)
	frame:SetSize(width, height)
	frame:Show()

	frame.circle_frame_tex = frame:CreateTexture(nil, "OVERLAY")
	frame.circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	frame.circle_frame_tex:SetHeight(frame:GetHeight())
	frame.circle_frame_tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frame.circle_frame_tex:SetWidth(frame:GetWidth())
	frame.circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	frame.circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	frame.circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	frame.circle_frame_tex:Show()

	frame.swirl = frame:CreateTexture(nil, "OVERLAY")
	frame.swirl:SetDrawLayer("OVERLAY", 4)
	frame.swirl:SetHeight(frame.circle_frame_tex:GetHeight() * 1)
	frame.swirl:SetPoint("CENTER", frame.circle_frame_tex, "CENTER", 0, 0)
	frame.swirl:SetWidth(frame.circle_frame_tex:GetWidth() * 1)
	frame.swirl:SetTexture("Interface\\Glues/Models/UI_Orc/GenericGlow_Alpha_128")
	frame.swirl:SetVertexColor(1, 1, 0, 1)
	frame.swirl:SetBlendMode("ADD")
	frame.swirl:Show()

	frame:EnableMouse(true)

	return frame
end

-- entrance icon pool
dungeon_overlay_frame_canvas.entrance_icon_pool = {}
for i = 1, 3 do
	dungeon_overlay_frame_canvas.entrance_icon_pool[#dungeon_overlay_frame_canvas.entrance_icon_pool + 1] =
		makeEntranceIcon()
	dungeon_overlay_frame_canvas.entrance_icon_pool[#dungeon_overlay_frame_canvas.entrance_icon_pool]:Hide()
end

local function makeEntranceIconLabel()
	local height = 200
	local width = 40
	local frame = CreateFrame("frame", nil, dungeon_overlay_frame_canvas)
	frame:SetSize(width, height)
	frame:Show()

	frame.circle_frame_tex = frame:CreateTexture(nil, "OVERLAY")
	frame.circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	frame.circle_frame_tex:SetHeight(20)
	frame.circle_frame_tex:SetWidth(20)
	frame.circle_frame_tex:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
	frame.circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	frame.circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	frame.circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	frame.circle_frame_tex:Show()

	frame.swirl = frame:CreateTexture(nil, "OVERLAY")
	frame.swirl:SetDrawLayer("OVERLAY", 4)
	frame.swirl:SetHeight(frame.circle_frame_tex:GetHeight() * 1)
	frame.swirl:SetWidth(frame.circle_frame_tex:GetHeight() * 1)
	frame.swirl:SetPoint("CENTER", frame.circle_frame_tex, "CENTER", 0, 0)
	frame.swirl:SetTexture("Interface\\Glues/Models/UI_Orc/GenericGlow_Alpha_128")
	frame.swirl:SetVertexColor(1, 1, 0, 1)
	frame.swirl:SetBlendMode("ADD")
	frame.swirl:Show()

	frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	frame.text:SetPoint("TOPLEFT", frame, "TOPLEFT", 29, -1)
	frame.text:SetFont("Fonts\\blei00d.TTF", 14, "OUTLINE")
	frame.text:SetTextColor(0.8, 0.8, 0.8)
	frame.text:SetText("Entrance")
	frame.text:Show()

	return frame
end

dungeon_overlay_frame_canvas.entrance_icon_label_frame = makeEntranceIconLabel()
dungeon_overlay_frame_canvas.entrance_icon_label_frame:Hide()

local function makeArrowIcon()
	local height = 23
	local width = 23
	local frame = CreateFrame("frame", nil, dungeon_overlay_frame_canvas)
	frame:SetSize(width, height)
	frame:Show()

	frame.circle_frame_tex = frame:CreateTexture(nil, "OVERLAY")
	frame.circle_frame_tex:SetDrawLayer("OVERLAY", 3)
	frame.circle_frame_tex:SetHeight(frame:GetHeight())
	frame.circle_frame_tex:SetPoint("CENTER", frame, "CENTER", 0, 0)
	frame.circle_frame_tex:SetWidth(frame:GetWidth())
	frame.circle_frame_tex:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\Hardcore\\intro_ui.tga")
	frame.circle_frame_tex:SetVertexColor(1, 1, 1, 1)
	frame.circle_frame_tex:SetTexCoord(0.284, 0.284 + 0.0781, 1 - (0.348 + 0.0745), 1 - 0.348)
	frame.circle_frame_tex:Show()

	frame.arrow = frame:CreateTexture(nil, "OVERLAY")
	frame.arrow:SetDrawLayer("OVERLAY", 4)
	frame.arrow:SetHeight(frame.circle_frame_tex:GetHeight() * 1.2)
	frame.arrow:SetPoint("CENTER", frame.circle_frame_tex, "CENTER", 0, 0)
	frame.arrow:SetWidth(frame.circle_frame_tex:GetWidth() * 1.2)
	-- frame.arrow:SetTexture("Interface\\Addons\\RXPGuides\\Textures\\rxp_navigation_arrow-1")
	frame.arrow:SetTexture("Interface\\MINIMAP/ROTATING-MINIMAPARROW")
	frame.arrow:SetVertexColor(245 / 255, 245 / 255, 220 / 255, 0.65)
	frame.arrow:Show()

	frame:EnableMouse(true)

	return frame
end

-- entrance icon pool
dungeon_overlay_frame_canvas.passage_icon_pool = {}
for i = 1, 5 do
	dungeon_overlay_frame_canvas.passage_icon_pool[#dungeon_overlay_frame_canvas.passage_icon_pool + 1] =
		makeArrowIcon()
	dungeon_overlay_frame_canvas.passage_icon_pool[#dungeon_overlay_frame_canvas.passage_icon_pool]:Hide()
end

-- Util
local function setDungeonTitle(text)
	dungeon_overlay_frame_canvas.dungeon_title_text:SetText(text)
end

local function setButtonTextAndFunction(idx, dungeon_name, text, load_map_func)
	local button = dungeon_overlay_frame_canvas.subdungeon_button[idx]
	if button then
		button.text:SetText(text)
		if #text > 14 then
			button.text:SetFont("Fonts\\blei00d.TTF", 14, "")
		else
			button.text:SetFont("Fonts\\blei00d.TTF", 16, "")
		end
		button:SetScript("OnMouseDown", function()
			for i, v in ipairs(dungeon_overlay_frame_canvas.subdungeon_button) do
				if i == idx then
					v:SetBackdropColor(155 / 255, 10 / 255, 7 / 255, 1.0)
					v.text:SetTextColor(0.855, 0.647, 0.125)
				else
					v:SetBackdropColor(10 / 255, 10 / 255, 7 / 255, 1.0)
					v.text:SetTextColor(0.5, 0.5, 0.5)
				end
			end
			load_map_func(dungeon_name, idx)
		end)
	end
end

local modified_width = dungeon_overlay_frame:GetWidth() * 0.98
local modified_height = dungeon_overlay_frame:GetHeight() * 0.87

map_open_signal:SetScript("OnShow", function()
	dungeon_overlay_frame:Hide()
	dungeon_overlay_frame_canvas:Hide()
	current_selected_dungeon = nil
end)

-- Dropdown menu
local map_loader = {}
map_loader.loadMap = function(dungeon_name, subdungeon_idx)
	dungeon_overlay_frame_canvas:Show()
	dungeon_overlay_frame_canvas.dungeon_title_text:SetText(dungeon_name)
	dungeon_overlay_frame_canvas.map_texture:SetTexture(
		dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["texture"]
	)
	dungeon_overlay_frame_canvas.map_texture:SetTexCoord(0, 1, 0, 0.6666)
	for _, v in ipairs(dungeon_overlay_frame_canvas.quest_label) do
		v:Hide()
	end

	for _, v in ipairs(dungeon_overlay_frame_canvas.icon_pool) do
		v:Hide()
	end

	for _, v in ipairs(dungeon_overlay_frame_canvas.entrance_icon_pool) do
		v:Hide()
	end

	for _, v in ipairs(dungeon_overlay_frame_canvas.passage_icon_pool) do
		v:Hide()
	end

	local current_subdungeon = dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]
	dungeon_overlay_frame_canvas.objectives_num_text:SetText("Objectives (" .. #current_subdungeon.quests .. ")")
	for i, v in ipairs(current_subdungeon.quests) do
		local quest_data = dungeon_ui_config[dungeon_name]["quests"][v]
		dungeon_overlay_frame_canvas.quest_label[i]:Show()
		dungeon_overlay_frame_canvas.quest_label[i]:ClearAllPoints()
		dungeon_overlay_frame_canvas.quest_label[i]:SetPoint(
			"TOPRIGHT",
			dungeon_overlay_frame_canvas,
			"TOPRIGHT",
			-20,
			-125 - (i - 1) * 60
		)
		dungeon_overlay_frame_canvas.quest_label[i].setData(
			quest_data["num"],
			quest_data["title"],
			quest_data["description"]
		)
	end

	if
		dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["entrances"] == nil
		or #dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["entrances"] == 0
	then
		dungeon_overlay_frame_canvas.entrance_icon_label_frame:Hide()
	else
		dungeon_overlay_frame_canvas.entrance_icon_label_frame:Show()
		dungeon_overlay_frame_canvas.entrance_icon_label_frame:SetPoint(
			"TOPRIGHT",
			dungeon_overlay_frame_canvas,
			"TOPRIGHT",
			-175,
			-125 - (#current_subdungeon.quests or 0) * 60
		)
	end

	local icon_list = dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["icons"] or {}
	for i, v in ipairs(icon_list) do
		local quest_num = v[1]
		dungeon_overlay_frame_canvas.icon_pool[i]:Show()
		dungeon_overlay_frame_canvas.icon_pool[i].setNumber(quest_num)
		dungeon_overlay_frame_canvas.icon_pool[i]:SetPoint(
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture,
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture:GetWidth() * v[2],
			-dungeon_overlay_frame_canvas.map_texture:GetHeight() * v[3]
		)

		if v[4] then
			dungeon_overlay_frame_canvas.icon_pool[i]:SetScript("OnEnter", function()
				GameTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
				GameTooltip:SetMinimumWidth(10)
				GameTooltip:AddLine(v[4], 0.6, 0.6, 0.6, 1, true)
				GameTooltip:Show()
			end)
			dungeon_overlay_frame_canvas.icon_pool[i]:SetScript("OnLeave", function()
				GameTooltip:Hide()
			end)
		else
			dungeon_overlay_frame_canvas.icon_pool[i]:SetScript("OnEnter", function() end)
			dungeon_overlay_frame_canvas.icon_pool[i]:SetScript("OnLeave", function() end)
		end
	end

	local entrance_list = dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["entrances"] or {}
	for i, v in ipairs(entrance_list) do
		local subdungeon_link = v[1]
		dungeon_overlay_frame_canvas.entrance_icon_pool[i]:Show()
		dungeon_overlay_frame_canvas.entrance_icon_pool[i]:SetPoint(
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture,
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture:GetWidth() * v[2],
			-dungeon_overlay_frame_canvas.map_texture:GetHeight() * v[3]
		)
		dungeon_overlay_frame_canvas.entrance_icon_pool[i]:SetScript("OnMouseDown", function()
			if subdungeon_link ~= nil and dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_link] ~= nil then
				for i, v in ipairs(dungeon_overlay_frame_canvas.subdungeon_button) do
					if i == subdungeon_link then
						v:SetBackdropColor(155 / 255, 10 / 255, 7 / 255, 1.0)
						v.text:SetTextColor(0.855, 0.647, 0.125)
					else
						v:SetBackdropColor(10 / 255, 10 / 255, 7 / 255, 1.0)
						v.text:SetTextColor(0.5, 0.5, 0.5)
					end
				end
				map_loader.loadMap(dungeon_name, subdungeon_link)
			end
		end)

		dungeon_overlay_frame_canvas.entrance_icon_pool[i]:SetScript("OnEnter", function()
			GameTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
			GameTooltip:SetMinimumWidth(10)
			GameTooltip:AddLine("Entrance", 0.6, 0.6, 0.6, 1, true)
			GameTooltip:Show()
		end)
		dungeon_overlay_frame_canvas.entrance_icon_pool[i]:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
	end

	local passage_list = dungeon_ui_config[dungeon_name]["subdungeons"][subdungeon_idx]["passages"] or {}
	for i, v in ipairs(passage_list) do
		local subdungeon_link = v[1]
		dungeon_overlay_frame_canvas.passage_icon_pool[i]:Show()

		if v[4] then
			dungeon_overlay_frame_canvas.passage_icon_pool[i].arrow:SetRotation(v[4])
		end
		dungeon_overlay_frame_canvas.passage_icon_pool[i]:SetPoint(
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture,
			"TOPLEFT",
			dungeon_overlay_frame_canvas.map_texture:GetWidth() * v[2],
			-dungeon_overlay_frame_canvas.map_texture:GetHeight() * v[3]
		)
		dungeon_overlay_frame_canvas.passage_icon_pool[i]:SetScript("OnMouseDown", function()
			for i, v in ipairs(dungeon_overlay_frame_canvas.subdungeon_button) do
				if i == subdungeon_link then
					v:SetBackdropColor(155 / 255, 10 / 255, 7 / 255, 1.0)
					v.text:SetTextColor(0.855, 0.647, 0.125)
				else
					v:SetBackdropColor(10 / 255, 10 / 255, 7 / 255, 1.0)
					v.text:SetTextColor(0.5, 0.5, 0.5)
				end
			end
			map_loader.loadMap(dungeon_name, subdungeon_link)
		end)

		dungeon_overlay_frame_canvas.passage_icon_pool[i]:SetScript("OnEnter", function()
			GameTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
			GameTooltip:SetMinimumWidth(10)
			GameTooltip:AddLine(dungeon_ui_config[dungeon_name]["subdungeons"][v[1]]["name"], 0.6, 0.6, 0.6, 1, true)
			GameTooltip:Show()
		end)
		dungeon_overlay_frame_canvas.passage_icon_pool[i]:SetScript("OnLeave", function()
			GameTooltip:Hide()
		end)
	end
end

local function dungeonMenuSelection(k)
	for _, v in ipairs(dungeon_overlay_frame_canvas.subdungeon_button) do
		v:Hide()
	end
	local subdungeons = dungeon_ui_config[k]["subdungeons"]
	for i, v in ipairs(subdungeons) do
		dungeon_overlay_frame_canvas.subdungeon_button[i]:Show()
		setButtonTextAndFunction(i, k, v["name"], map_loader.loadMap)
	end
	map_loader.loadMap(k, 1)

	for i, v in ipairs(dungeon_overlay_frame_canvas.subdungeon_button) do
		if i == 1 then
			v:SetBackdropColor(155 / 255, 10 / 255, 7 / 255, 1.0)
			v.text:SetTextColor(0.855, 0.647, 0.125)
		else
			v:SetBackdropColor(10 / 255, 10 / 255, 7 / 255, 1.0)
			v.text:SetTextColor(0.5, 0.5, 0.5)
		end
	end
end

function RXP_GetDungeonMapUIMenu()
	local menu = {}
	for k, v in pairs(dungeon_ui_config) do
		tinsert(menu, {
			text = k,
			notCheckable = 1,
			func = function()
				dungeon_overlay_frame:Show()
				dungeon_overlay_frame_canvas:Hide()
				current_selected_dungeon = nil
				WorldMapFrame:Hide()
				dungeonMenuSelection(k)
			end,
		})
	end
	return menu
end

_G["RXP_DungeonMenuFrame"] = dungeon_overlay_frame -- Close on <ESC>
tinsert(UISpecialFrames, "RXP_DungeonMenuFrame")
