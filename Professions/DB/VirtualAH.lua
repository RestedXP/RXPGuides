local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globlas
local _G = _G


addon.professions = addon.professions or {}
addon.professions.vah = addon.professions.vah or {}

addon.professions.vah.VIRTUAL_AH = {
    ["Core of Earth"] = {
		{
			count = 2,
			price = 1356,
			pricePerItem = 678,
		},
		{
			count = 4,
			price = 2704,
			pricePerItem = 676,
		},
		{
			count = 7,
			price = 4823,
			pricePerItem = 689,
		},
		{
			count = 8,
			price = 5400,
			pricePerItem = 675,
		},
		{
			count = 10,
			price = 6740,
			pricePerItem = 674,
		},
		{
			count = 10,
			price = 8000,
			pricePerItem = 800,
		},
	},
	["Arcanite Bar"] = {
		{
			count = 1,
			price = 1019999,
			pricePerItem = 1019999,
		},
		{
			count = 1,
			price = 1020000,
			pricePerItem = 1020000,
		},
		{
			count = 1,
			price = 1056657,
			pricePerItem = 1056657,
		},
		{
			count = 1,
			price = 1056658,
			pricePerItem = 1056658,
		},
		{
			count = 1,
			price = 1056658,
			pricePerItem = 1056658,
		},
		{
			count = 1,
			price = 1056658,
			pricePerItem = 1056658,
		},
		{
			count = 1,
			price = 1056658,
			pricePerItem = 1056658,
		},
		{
			count = 1,
			price = 1056659,
			pricePerItem = 1056659,
		},
		{
			count = 1,
			price = 1056661,
			pricePerItem = 1056661,
		},
		{
			count = 1,
			price = 1056662,
			pricePerItem = 1056662,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056663,
			pricePerItem = 1056663,
		},
		{
			count = 1,
			price = 1056665,
			pricePerItem = 1056665,
		},
		{
			count = 1,
			price = 1056666,
			pricePerItem = 1056666,
		},
		{
			count = 1,
			price = 1056667,
			pricePerItem = 1056667,
		},
		{
			count = 1,
			price = 1056668,
			pricePerItem = 1056668,
		},
		{
			count = 1,
			price = 1056964,
			pricePerItem = 1056964,
		},
		{
			count = 1,
			price = 1056964,
			pricePerItem = 1056964,
		},
		{
			count = 1,
			price = 1136965,
			pricePerItem = 1136965,
		},
		{
			count = 1,
			price = 1139996,
			pricePerItem = 1139996,
		},
		{
			count = 1,
			price = 1139997,
			pricePerItem = 1139997,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 1,
			price = 1149999,
			pricePerItem = 1149999,
		},
		{
			count = 4,
			price = 4100000,
			pricePerItem = 1025000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
		{
			count = 5,
			price = 6450000,
			pricePerItem = 1290000,
		},
	},
	["Coarse Grinding Stone"] = {
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 1,
			price = 38397,
			pricePerItem = 38397,
		},
		{
			count = 10,
			price = 50200,
			pricePerItem = 5020,
		},
		{
			count = 14,
			price = 111986,
			pricePerItem = 7999,
		},
		{
			count = 15,
			price = 575940,
			pricePerItem = 38396,
		},
	},
	["Medium Leather"] = {
		{
			count = 1,
			price = 299,
			pricePerItem = 299,
		},
		{
			count = 1,
			price = 299,
			pricePerItem = 299,
		},
		{
			count = 1,
			price = 299,
			pricePerItem = 299,
		},
		{
			count = 1,
			price = 300,
			pricePerItem = 300,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 488,
			pricePerItem = 488,
		},
		{
			count = 1,
			price = 489,
			pricePerItem = 489,
		},
		{
			count = 1,
			price = 489,
			pricePerItem = 489,
		},
		{
			count = 1,
			price = 489,
			pricePerItem = 489,
		},
		{
			count = 1,
			price = 489,
			pricePerItem = 489,
		},
		{
			count = 1,
			price = 489,
			pricePerItem = 489,
		},
		{
			count = 1,
			price = 490,
			pricePerItem = 490,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 1,
			price = 524,
			pricePerItem = 524,
		},
		{
			count = 2,
			price = 594,
			pricePerItem = 297,
		},
		{
			count = 3,
			price = 873,
			pricePerItem = 291,
		},
		{
			count = 5,
			price = 2620,
			pricePerItem = 524,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 9500,
			pricePerItem = 475,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 15,
			price = 10000,
			pricePerItem = 667,
		},
		{
			count = 8,
			price = 10000,
			pricePerItem = 1250,
		},
		{
			count = 20,
			price = 10480,
			pricePerItem = 524,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 2005260,
			pricePerItem = 100263,
		},
	},
	["Truesilver Bar"] = {
		{
			count = 1,
			price = 3101,
			pricePerItem = 3101,
		},
		{
			count = 1,
			price = 3103,
			pricePerItem = 3103,
		},
		{
			count = 1,
			price = 3103,
			pricePerItem = 3103,
		},
		{
			count = 1,
			price = 3103,
			pricePerItem = 3103,
		},
		{
			count = 1,
			price = 3103,
			pricePerItem = 3103,
		},
		{
			count = 1,
			price = 3104,
			pricePerItem = 3104,
		},
		{
			count = 1,
			price = 3104,
			pricePerItem = 3104,
		},
		{
			count = 1,
			price = 3104,
			pricePerItem = 3104,
		},
		{
			count = 1,
			price = 3104,
			pricePerItem = 3104,
		},
		{
			count = 1,
			price = 3107,
			pricePerItem = 3107,
		},
		{
			count = 1,
			price = 3113,
			pricePerItem = 3113,
		},
		{
			count = 2,
			price = 6194,
			pricePerItem = 3097,
		},
		{
			count = 2,
			price = 6198,
			pricePerItem = 3099,
		},
		{
			count = 2,
			price = 6210,
			pricePerItem = 3105,
		},
		{
			count = 10,
			price = 31059,
			pricePerItem = 3106,
		},
		{
			count = 10,
			price = 32500,
			pricePerItem = 3250,
		},
		{
			count = 11,
			price = 34166,
			pricePerItem = 3106,
		},
		{
			count = 17,
			price = 52836,
			pricePerItem = 3108,
		},
		{
			count = 20,
			price = 61960,
			pricePerItem = 3098,
		},
		{
			count = 10,
			price = 104500,
			pricePerItem = 10450,
		},
		{
			count = 10,
			price = 104500,
			pricePerItem = 10450,
		},
		{
			count = 10,
			price = 104500,
			pricePerItem = 10450,
		},
		{
			count = 10,
			price = 104600,
			pricePerItem = 10460,
		},
		{
			count = 10,
			price = 104600,
			pricePerItem = 10460,
		},
		{
			count = 10,
			price = 104600,
			pricePerItem = 10460,
		},
		{
			count = 20,
			price = 180000,
			pricePerItem = 9000,
		},
		{
			count = 20,
			price = 207500,
			pricePerItem = 10375,
		},
		{
			count = 20,
			price = 207500,
			pricePerItem = 10375,
		},
	},
	["Solid Stone"] = {
		{
			count = 1,
			price = 2712,
			pricePerItem = 2712,
		},
		{
			count = 1,
			price = 2712,
			pricePerItem = 2712,
		},
		{
			count = 1,
			price = 2712,
			pricePerItem = 2712,
		},
		{
			count = 1,
			price = 2771,
			pricePerItem = 2771,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 2773,
			pricePerItem = 2773,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 3716,
			pricePerItem = 3716,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4494,
			pricePerItem = 4494,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 1,
			price = 4498,
			pricePerItem = 4498,
		},
		{
			count = 2,
			price = 5426,
			pricePerItem = 2713,
		},
		{
			count = 2,
			price = 5432,
			pricePerItem = 2716,
		},
		{
			count = 2,
			price = 6850,
			pricePerItem = 3425,
		},
		{
			count = 2,
			price = 7434,
			pricePerItem = 3717,
		},
		{
			count = 3,
			price = 8127,
			pricePerItem = 2709,
		},
		{
			count = 4,
			price = 10892,
			pricePerItem = 2723,
		},
		{
			count = 3,
			price = 11142,
			pricePerItem = 3714,
		},
		{
			count = 3,
			price = 13485,
			pricePerItem = 4495,
		},
		{
			count = 6,
			price = 16266,
			pricePerItem = 2711,
		},
		{
			count = 6,
			price = 16290,
			pricePerItem = 2715,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17115,
			pricePerItem = 3423,
		},
		{
			count = 5,
			price = 17150,
			pricePerItem = 3430,
		},
		{
			count = 6,
			price = 20544,
			pricePerItem = 3424,
		},
		{
			count = 13,
			price = 35841,
			pricePerItem = 2757,
		},
		{
			count = 11,
			price = 40964,
			pricePerItem = 3724,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54020,
			pricePerItem = 2701,
		},
		{
			count = 20,
			price = 54040,
			pricePerItem = 2702,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54060,
			pricePerItem = 2703,
		},
		{
			count = 20,
			price = 54220,
			pricePerItem = 2711,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 54500,
			pricePerItem = 2725,
		},
		{
			count = 20,
			price = 55140,
			pricePerItem = 2757,
		},
		{
			count = 19,
			price = 67500,
			pricePerItem = 3553,
		},
		{
			count = 20,
			price = 74280,
			pricePerItem = 3714,
		},
		{
			count = 20,
			price = 74280,
			pricePerItem = 3714,
		},
		{
			count = 20,
			price = 74280,
			pricePerItem = 3714,
		},
		{
			count = 20,
			price = 74340,
			pricePerItem = 3717,
		},
		{
			count = 20,
			price = 74340,
			pricePerItem = 3717,
		},
		{
			count = 20,
			price = 74340,
			pricePerItem = 3717,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74360,
			pricePerItem = 3718,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 20,
			price = 74440,
			pricePerItem = 3722,
		},
		{
			count = 17,
			price = 79000,
			pricePerItem = 4648,
		},
		{
			count = 5,
			price = 120002,
			pricePerItem = 24001,
		},
	},
	["Citrine"] = {
		{
			count = 1,
			price = 893,
			pricePerItem = 893,
		},
		{
			count = 1,
			price = 894,
			pricePerItem = 894,
		},
		{
			count = 1,
			price = 895,
			pricePerItem = 895,
		},
		{
			count = 1,
			price = 896,
			pricePerItem = 896,
		},
		{
			count = 1,
			price = 897,
			pricePerItem = 897,
		},
		{
			count = 1,
			price = 898,
			pricePerItem = 898,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 900,
			pricePerItem = 900,
		},
		{
			count = 1,
			price = 974,
			pricePerItem = 974,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 976,
			pricePerItem = 976,
		},
		{
			count = 1,
			price = 2174,
			pricePerItem = 2174,
		},
		{
			count = 1,
			price = 2175,
			pricePerItem = 2175,
		},
		{
			count = 1,
			price = 2176,
			pricePerItem = 2176,
		},
		{
			count = 1,
			price = 2176,
			pricePerItem = 2176,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2179,
			pricePerItem = 2179,
		},
		{
			count = 1,
			price = 2185,
			pricePerItem = 2185,
		},
		{
			count = 1,
			price = 2186,
			pricePerItem = 2186,
		},
		{
			count = 1,
			price = 2189,
			pricePerItem = 2189,
		},
		{
			count = 1,
			price = 2191,
			pricePerItem = 2191,
		},
		{
			count = 1,
			price = 2191,
			pricePerItem = 2191,
		},
		{
			count = 1,
			price = 2191,
			pricePerItem = 2191,
		},
		{
			count = 1,
			price = 2194,
			pricePerItem = 2194,
		},
		{
			count = 1,
			price = 2196,
			pricePerItem = 2196,
		},
		{
			count = 1,
			price = 3494,
			pricePerItem = 3494,
		},
		{
			count = 1,
			price = 3496,
			pricePerItem = 3496,
		},
		{
			count = 1,
			price = 3496,
			pricePerItem = 3496,
		},
		{
			count = 1,
			price = 3498,
			pricePerItem = 3498,
		},
		{
			count = 1,
			price = 3498,
			pricePerItem = 3498,
		},
		{
			count = 1,
			price = 3500,
			pricePerItem = 3500,
		},
		{
			count = 1,
			price = 3598,
			pricePerItem = 3598,
		},
		{
			count = 1,
			price = 4575,
			pricePerItem = 4575,
		},
		{
			count = 1,
			price = 4798,
			pricePerItem = 4798,
		},
		{
			count = 1,
			price = 4798,
			pricePerItem = 4798,
		},
		{
			count = 1,
			price = 4798,
			pricePerItem = 4798,
		},
		{
			count = 1,
			price = 4799,
			pricePerItem = 4799,
		},
		{
			count = 1,
			price = 4799,
			pricePerItem = 4799,
		},
		{
			count = 1,
			price = 4800,
			pricePerItem = 4800,
		},
		{
			count = 1,
			price = 4998,
			pricePerItem = 4998,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 4,
			price = 8708,
			pricePerItem = 2177,
		},
		{
			count = 1,
			price = 9990,
			pricePerItem = 9990,
		},
		{
			count = 1,
			price = 9995,
			pricePerItem = 9995,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 2,
			price = 10000,
			pricePerItem = 5000,
		},
		{
			count = 1,
			price = 10745,
			pricePerItem = 10745,
		},
		{
			count = 1,
			price = 10900,
			pricePerItem = 10900,
		},
		{
			count = 7,
			price = 15246,
			pricePerItem = 2178,
		},
	},
	["Mageweave Cloth"] = {
		{
			count = 1,
			price = 1171,
			pricePerItem = 1171,
		},
		{
			count = 2,
			price = 1872,
			pricePerItem = 936,
		},
		{
			count = 3,
			price = 2898,
			pricePerItem = 966,
		},
		{
			count = 4,
			price = 4680,
			pricePerItem = 1170,
		},
		{
			count = 4,
			price = 4684,
			pricePerItem = 1171,
		},
		{
			count = 6,
			price = 5790,
			pricePerItem = 965,
		},
		{
			count = 5,
			price = 5900,
			pricePerItem = 1180,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 5,
			price = 6215,
			pricePerItem = 1243,
		},
		{
			count = 6,
			price = 8088,
			pricePerItem = 1348,
		},
		{
			count = 9,
			price = 8703,
			pricePerItem = 967,
		},
		{
			count = 8,
			price = 9352,
			pricePerItem = 1169,
		},
		{
			count = 7,
			price = 10122,
			pricePerItem = 1446,
		},
		{
			count = 6,
			price = 10494,
			pricePerItem = 1749,
		},
		{
			count = 8,
			price = 10760,
			pricePerItem = 1345,
		},
		{
			count = 6,
			price = 11352,
			pricePerItem = 1892,
		},
		{
			count = 14,
			price = 12586,
			pricePerItem = 899,
		},
		{
			count = 15,
			price = 13499,
			pricePerItem = 900,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 9,
			price = 17010,
			pricePerItem = 1890,
		},
		{
			count = 12,
			price = 17280,
			pricePerItem = 1440,
		},
		{
			count = 19,
			price = 17765,
			pricePerItem = 935,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17960,
			pricePerItem = 898,
		},
		{
			count = 20,
			price = 17980,
			pricePerItem = 899,
		},
		{
			count = 20,
			price = 17999,
			pricePerItem = 900,
		},
		{
			count = 20,
			price = 18000,
			pricePerItem = 900,
		},
		{
			count = 20,
			price = 18720,
			pricePerItem = 936,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 20,
			price = 19360,
			pricePerItem = 968,
		},
		{
			count = 10,
			price = 19610,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 24840,
			pricePerItem = 1242,
		},
		{
			count = 20,
			price = 26820,
			pricePerItem = 1341,
		},
		{
			count = 20,
			price = 26820,
			pricePerItem = 1341,
		},
		{
			count = 20,
			price = 26820,
			pricePerItem = 1341,
		},
		{
			count = 20,
			price = 26820,
			pricePerItem = 1341,
		},
		{
			count = 20,
			price = 26820,
			pricePerItem = 1341,
		},
		{
			count = 14,
			price = 27482,
			pricePerItem = 1963,
		},
		{
			count = 20,
			price = 27500,
			pricePerItem = 1375,
		},
		{
			count = 20,
			price = 27500,
			pricePerItem = 1375,
		},
		{
			count = 20,
			price = 27500,
			pricePerItem = 1375,
		},
		{
			count = 20,
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 35000,
			pricePerItem = 1750,
		},
		{
			count = 20,
			price = 37880,
			pricePerItem = 1894,
		},
		{
			count = 20,
			price = 37880,
			pricePerItem = 1894,
		},
		{
			count = 20,
			price = 37880,
			pricePerItem = 1894,
		},
		{
			count = 20,
			price = 37880,
			pricePerItem = 1894,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
		{
			count = 20,
			price = 39220,
			pricePerItem = 1961,
		},
	},
	["Dense Stone"] = {
		{
			count = 1,
			price = 7987,
			pricePerItem = 7987,
		},
		{
			count = 1,
			price = 7988,
			pricePerItem = 7988,
		},
		{
			count = 1,
			price = 7990,
			pricePerItem = 7990,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
		},
		{
			count = 5,
			price = 39940,
			pricePerItem = 7988,
		},
		{
			count = 5,
			price = 39940,
			pricePerItem = 7988,
		},
		{
			count = 5,
			price = 39940,
			pricePerItem = 7988,
		},
		{
			count = 14,
			price = 111846,
			pricePerItem = 7989,
		},
		{
			count = 14,
			price = 125216,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 175000,
			pricePerItem = 8750,
		},
		{
			count = 20,
			price = 175000,
			pricePerItem = 8750,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 178880,
			pricePerItem = 8944,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 199880,
			pricePerItem = 9994,
		},
		{
			count = 20,
			price = 249980,
			pricePerItem = 12499,
		},
		{
			count = 20,
			price = 249980,
			pricePerItem = 12499,
		},
		{
			count = 20,
			price = 249980,
			pricePerItem = 12499,
		},
	},
	["Tigerseye"] = {
		{
			count = 1,
			price = 919,
			pricePerItem = 919,
		},
		{
			count = 1,
			price = 989,
			pricePerItem = 989,
		},
		{
			count = 1,
			price = 990,
			pricePerItem = 990,
		},
		{
			count = 1,
			price = 991,
			pricePerItem = 991,
		},
		{
			count = 1,
			price = 993,
			pricePerItem = 993,
		},
		{
			count = 1,
			price = 994,
			pricePerItem = 994,
		},
		{
			count = 1,
			price = 995,
			pricePerItem = 995,
		},
		{
			count = 1,
			price = 996,
			pricePerItem = 996,
		},
		{
			count = 1,
			price = 997,
			pricePerItem = 997,
		},
		{
			count = 1,
			price = 997,
			pricePerItem = 997,
		},
		{
			count = 1,
			price = 997,
			pricePerItem = 997,
		},
		{
			count = 1,
			price = 997,
			pricePerItem = 997,
		},
		{
			count = 1,
			price = 997,
			pricePerItem = 997,
		},
		{
			count = 1,
			price = 998,
			pricePerItem = 998,
		},
		{
			count = 1,
			price = 999,
			pricePerItem = 999,
		},
		{
			count = 1,
			price = 1000,
			pricePerItem = 1000,
		},
		{
			count = 1,
			price = 1149,
			pricePerItem = 1149,
		},
		{
			count = 1,
			price = 1158,
			pricePerItem = 1158,
		},
		{
			count = 1,
			price = 1159,
			pricePerItem = 1159,
		},
		{
			count = 1,
			price = 1160,
			pricePerItem = 1160,
		},
		{
			count = 1,
			price = 1190,
			pricePerItem = 1190,
		},
		{
			count = 1,
			price = 1193,
			pricePerItem = 1193,
		},
		{
			count = 1,
			price = 1194,
			pricePerItem = 1194,
		},
		{
			count = 1,
			price = 1194,
			pricePerItem = 1194,
		},
		{
			count = 1,
			price = 1194,
			pricePerItem = 1194,
		},
		{
			count = 1,
			price = 1195,
			pricePerItem = 1195,
		},
		{
			count = 1,
			price = 1195,
			pricePerItem = 1195,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1200,
			pricePerItem = 1200,
		},
		{
			count = 1,
			price = 1437,
			pricePerItem = 1437,
		},
		{
			count = 1,
			price = 1439,
			pricePerItem = 1439,
		},
		{
			count = 1,
			price = 1440,
			pricePerItem = 1440,
		},
		{
			count = 1,
			price = 1441,
			pricePerItem = 1441,
		},
		{
			count = 1,
			price = 1441,
			pricePerItem = 1441,
		},
		{
			count = 1,
			price = 1441,
			pricePerItem = 1441,
		},
		{
			count = 1,
			price = 1441,
			pricePerItem = 1441,
		},
		{
			count = 1,
			price = 1478,
			pricePerItem = 1478,
		},
		{
			count = 1,
			price = 1480,
			pricePerItem = 1480,
		},
		{
			count = 1,
			price = 1598,
			pricePerItem = 1598,
		},
		{
			count = 2,
			price = 1984,
			pricePerItem = 992,
		},
		{
			count = 1,
			price = 2100,
			pricePerItem = 2100,
		},
		{
			count = 2,
			price = 2314,
			pricePerItem = 1157,
		},
		{
			count = 1,
			price = 2399,
			pricePerItem = 2399,
		},
		{
			count = 1,
			price = 2400,
			pricePerItem = 2400,
		},
		{
			count = 1,
			price = 2400,
			pricePerItem = 2400,
		},
		{
			count = 1,
			price = 2499,
			pricePerItem = 2499,
		},
		{
			count = 2,
			price = 2800,
			pricePerItem = 1400,
		},
		{
			count = 2,
			price = 2800,
			pricePerItem = 1400,
		},
		{
			count = 2,
			price = 2800,
			pricePerItem = 1400,
		},
		{
			count = 2,
			price = 2872,
			pricePerItem = 1436,
		},
		{
			count = 1,
			price = 3489,
			pricePerItem = 3489,
		},
		{
			count = 1,
			price = 3499,
			pricePerItem = 3499,
		},
		{
			count = 3,
			price = 4197,
			pricePerItem = 1399,
		},
		{
			count = 3,
			price = 4314,
			pricePerItem = 1438,
		},
		{
			count = 1,
			price = 5000,
			pricePerItem = 5000,
		},
		{
			count = 1,
			price = 5000,
			pricePerItem = 5000,
		},
		{
			count = 1,
			price = 6500,
			pricePerItem = 6500,
		},
		{
			count = 1,
			price = 7999,
			pricePerItem = 7999,
		},
		{
			count = 1,
			price = 7999,
			pricePerItem = 7999,
		},
		{
			count = 1,
			price = 7999,
			pricePerItem = 7999,
		},
		{
			count = 1,
			price = 7999,
			pricePerItem = 7999,
		},
		{
			count = 1,
			price = 8000,
			pricePerItem = 8000,
		},
		{
			count = 1,
			price = 8247,
			pricePerItem = 8247,
		},
		{
			count = 1,
			price = 8249,
			pricePerItem = 8249,
		},
		{
			count = 2,
			price = 10000,
			pricePerItem = 5000,
		},
		{
			count = 4,
			price = 13972,
			pricePerItem = 3493,
		},
		{
			count = 4,
			price = 13980,
			pricePerItem = 3495,
		},
		{
			count = 20,
			price = 69879,
			pricePerItem = 3494,
		},
	},
	["Small Lustrous Pearl"] = {
		{
			count = 1,
			price = 286,
			pricePerItem = 286,
		},
		{
			count = 1,
			price = 287,
			pricePerItem = 287,
		},
		{
			count = 1,
			price = 287,
			pricePerItem = 287,
		},
		{
			count = 1,
			price = 288,
			pricePerItem = 288,
		},
		{
			count = 1,
			price = 289,
			pricePerItem = 289,
		},
		{
			count = 1,
			price = 290,
			pricePerItem = 290,
		},
		{
			count = 1,
			price = 291,
			pricePerItem = 291,
		},
		{
			count = 1,
			price = 291,
			pricePerItem = 291,
		},
		{
			count = 1,
			price = 292,
			pricePerItem = 292,
		},
		{
			count = 1,
			price = 293,
			pricePerItem = 293,
		},
		{
			count = 1,
			price = 293,
			pricePerItem = 293,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 294,
			pricePerItem = 294,
		},
		{
			count = 1,
			price = 296,
			pricePerItem = 296,
		},
		{
			count = 1,
			price = 298,
			pricePerItem = 298,
		},
		{
			count = 1,
			price = 299,
			pricePerItem = 299,
		},
		{
			count = 1,
			price = 301,
			pricePerItem = 301,
		},
		{
			count = 1,
			price = 302,
			pricePerItem = 302,
		},
		{
			count = 1,
			price = 303,
			pricePerItem = 303,
		},
		{
			count = 1,
			price = 304,
			pricePerItem = 304,
		},
		{
			count = 1,
			price = 305,
			pricePerItem = 305,
		},
		{
			count = 1,
			price = 310,
			pricePerItem = 310,
		},
		{
			count = 1,
			price = 311,
			pricePerItem = 311,
		},
		{
			count = 1,
			price = 312,
			pricePerItem = 312,
		},
		{
			count = 1,
			price = 313,
			pricePerItem = 313,
		},
		{
			count = 1,
			price = 315,
			pricePerItem = 315,
		},
		{
			count = 1,
			price = 323,
			pricePerItem = 323,
		},
		{
			count = 1,
			price = 325,
			pricePerItem = 325,
		},
		{
			count = 1,
			price = 329,
			pricePerItem = 329,
		},
		{
			count = 1,
			price = 360,
			pricePerItem = 360,
		},
		{
			count = 1,
			price = 362,
			pricePerItem = 362,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 377,
			pricePerItem = 377,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 1,
			price = 405,
			pricePerItem = 405,
		},
		{
			count = 1,
			price = 419,
			pricePerItem = 419,
		},
		{
			count = 2,
			price = 570,
			pricePerItem = 285,
		},
		{
			count = 2,
			price = 590,
			pricePerItem = 295,
		},
		{
			count = 2,
			price = 594,
			pricePerItem = 297,
		},
		{
			count = 2,
			price = 616,
			pricePerItem = 308,
		},
		{
			count = 2,
			price = 618,
			pricePerItem = 309,
		},
		{
			count = 2,
			price = 628,
			pricePerItem = 314,
		},
		{
			count = 2,
			price = 740,
			pricePerItem = 370,
		},
		{
			count = 2,
			price = 740,
			pricePerItem = 370,
		},
		{
			count = 2,
			price = 804,
			pricePerItem = 402,
		},
		{
			count = 2,
			price = 814,
			pricePerItem = 407,
		},
		{
			count = 2,
			price = 856,
			pricePerItem = 428,
		},
		{
			count = 4,
			price = 1680,
			pricePerItem = 420,
		},
		{
			count = 7,
			price = 2870,
			pricePerItem = 410,
		},
		{
			count = 14,
			price = 4648,
			pricePerItem = 332,
		},
	},
}