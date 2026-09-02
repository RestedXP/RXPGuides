local addonName, addon = ...
local L = addon.locale.Get

if not (addon.game == "CLASSIC" or addon.game == "TBC") then return end

-- Localize globlas
local _G = _G


addon.professions = addon.professions or {}
addon.professions.vah = addon.professions.vah or {}

addon.professions.vah.VIRTUAL_AH = {
	---08/21/26 09:00:00 tailoring Synthetic - Plentiful---
	["Bolt of Linen Cloth"] = {
		{
			count = 1,
			price = 76,
			pricePerItem = 76,
		},
		{
			count = 3,
			price = 213,
			pricePerItem = 71,
		},
		{
			count = 3,
			price = 221,
			pricePerItem = 74,
		},
		{
			count = 4,
			price = 288,
			pricePerItem = 72,
		},
		{
			count = 6,
			price = 438,
			pricePerItem = 73,
		},
		{
			count = 1,
			price = 222,
			pricePerItem = 222,
		},
		{
			count = 7,
			price = 1642,
			pricePerItem = 235,
		},
		{
			count = 7,
			price = 1800,
			pricePerItem = 258,
		},
		{
			count = 8,
			price = 1803,
			pricePerItem = 226,
		},
		{
			count = 9,
			price = 2000,
			pricePerItem = 223,
		},
		{
			count = 1,
			price = 100,
			pricePerItem = 100,
		},
		{
			count = 2,
			price = 106,
			pricePerItem = 53,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 2,
			price = 596,
			pricePerItem = 298,
		},
		{
			count = 10,
			price = 3080,
			pricePerItem = 308,
		},
		{
			count = 10,
			price = 3080,
			pricePerItem = 308,
		},
		{
			count = 10,
			price = 3080,
			pricePerItem = 308,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 1,
			price = 100,
			pricePerItem = 100,
		},
		{
			count = 2,
			price = 106,
			pricePerItem = 53,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 3,
			price = 294,
			pricePerItem = 98,
		},
		{
			count = 1,
			price = 340,
			pricePerItem = 340,
		},
		{
			count = 2,
			price = 596,
			pricePerItem = 298,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 10,
			price = 3717,
			pricePerItem = 372,
		},
		{
			count = 1,
			price = 83,
			pricePerItem = 83,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 123,
			pricePerItem = 123,
		},
		{
			count = 2,
			price = 168,
			pricePerItem = 84,
		},
		{
			count = 4,
			price = 400,
			pricePerItem = 100,
		},
		{
			count = 6,
			price = 510,
			pricePerItem = 85,
		},
		{
			count = 8,
			price = 792,
			pricePerItem = 99,
		},
		{
			count = 10,
			price = 930,
			pricePerItem = 93,
		},
		{
			count = 10,
			price = 930,
			pricePerItem = 93,
		},
		{
			count = 1,
			price = 75,
			pricePerItem = 75,
		},
		{
			count = 1,
			price = 77,
			pricePerItem = 77,
		},
		{
			count = 1,
			price = 79,
			pricePerItem = 79,
		},
		{
			count = 1,
			price = 82,
			pricePerItem = 82,
		},
		{
			count = 1,
			price = 82,
			pricePerItem = 82,
		},
		{
			count = 1,
			price = 82,
			pricePerItem = 82,
		},
		{
			count = 1,
			price = 82,
			pricePerItem = 82,
		},
		{
			count = 1,
			price = 83,
			pricePerItem = 83,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 1,
			price = 89,
			pricePerItem = 89,
		},
		{
			count = 2,
			price = 152,
			pricePerItem = 76,
		},
		{
			count = 3,
			price = 243,
			pricePerItem = 81,
		},
		{
			count = 4,
			price = 400,
			pricePerItem = 100,
		},
		{
			count = 6,
			price = 468,
			pricePerItem = 78,
		},
		{
			count = 9,
			price = 666,
			pricePerItem = 74,
		},
		{
			count = 10,
			price = 780,
			pricePerItem = 78,
		},
		{
			count = 10,
			price = 780,
			pricePerItem = 78,
		},
		{
			count = 10,
			price = 780,
			pricePerItem = 78,
		},
		{
			count = 10,
			price = 780,
			pricePerItem = 78,
		},
		{
			count = 10,
			price = 790,
			pricePerItem = 79,
		},
		{
			count = 10,
			price = 790,
			pricePerItem = 79,
		},
		{
			count = 10,
			price = 790,
			pricePerItem = 79,
		},
		{
			count = 10,
			price = 790,
			pricePerItem = 79,
		},
		{
			count = 10,
			price = 800,
			pricePerItem = 80,
		},
		{
			count = 10,
			price = 800,
			pricePerItem = 80,
		},
		{
			count = 10,
			price = 930,
			pricePerItem = 93,
		},
		{
			count = 10,
			price = 930,
			pricePerItem = 93,
		},
		{
			count = 1,
			price = 57,
			pricePerItem = 57,
		},
		{
			count = 1,
			price = 65,
			pricePerItem = 65,
		},
		{
			count = 1,
			price = 65,
			pricePerItem = 65,
		},
		{
			count = 2,
			price = 124,
			pricePerItem = 62,
		},
		{
			count = 3,
			price = 162,
			pricePerItem = 54,
		},
		{
			count = 8,
			price = 464,
			pricePerItem = 58,
		},
		{
			count = 10,
			price = 550,
			pricePerItem = 55,
		},
		{
			count = 10,
			price = 560,
			pricePerItem = 56,
		},
		{
			count = 10,
			price = 630,
			pricePerItem = 63,
		},
		{
			count = 1,
			price = 65,
			pricePerItem = 65,
		},
		{
			count = 1,
			price = 65,
			pricePerItem = 65,
		},
		{
			count = 2,
			price = 104,
			pricePerItem = 52,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 2,
			price = 124,
			pricePerItem = 62,
		},
		{
			count = 3,
			price = 162,
			pricePerItem = 54,
		},
		{
			count = 10,
			price = 300,
			pricePerItem = 30,
		},
		{
			count = 6,
			price = 318,
			pricePerItem = 53,
		},
		{
			count = 10,
			price = 630,
			pricePerItem = 63,
		},
		{
			count = 10,
			price = 1000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 1000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 1000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 1000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 1000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
		{
			count = 10,
			price = 4630,
			pricePerItem = 463,
		},
	},
	["Bolt of Mageweave"] = {
		{
			count = 1,
			price = 2880,
			pricePerItem = 2880,
		},
		{
			count = 1,
			price = 2880,
			pricePerItem = 2880,
		},
		{
			count = 1,
			price = 2880,
			pricePerItem = 2880,
		},
		{
			count = 1,
			price = 2880,
			pricePerItem = 2880,
		},
		{
			count = 1,
			price = 2880,
			pricePerItem = 2880,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2885,
			pricePerItem = 2885,
		},
		{
			count = 1,
			price = 2885,
			pricePerItem = 2885,
		},
		{
			count = 1,
			price = 2886,
			pricePerItem = 2886,
		},
		{
			count = 1,
			price = 2886,
			pricePerItem = 2886,
		},
		{
			count = 1,
			price = 2887,
			pricePerItem = 2887,
		},
		{
			count = 1,
			price = 2887,
			pricePerItem = 2887,
		},
		{
			count = 1,
			price = 3400,
			pricePerItem = 3400,
		},
		{
			count = 2,
			price = 8000,
			pricePerItem = 4000,
		},
		{
			count = 4,
			price = 11528,
			pricePerItem = 2882,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28830,
			pricePerItem = 2883,
		},
		{
			count = 10,
			price = 28830,
			pricePerItem = 2883,
		},
		{
			count = 10,
			price = 28830,
			pricePerItem = 2883,
		},
		{
			count = 10,
			price = 28830,
			pricePerItem = 2883,
		},
		{
			count = 10,
			price = 28840,
			pricePerItem = 2884,
		},
		{
			count = 1,
			price = 2664,
			pricePerItem = 2664,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2665,
			pricePerItem = 2665,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2667,
			pricePerItem = 2667,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2881,
			pricePerItem = 2881,
		},
		{
			count = 1,
			price = 2885,
			pricePerItem = 2885,
		},
		{
			count = 1,
			price = 2885,
			pricePerItem = 2885,
		},
		{
			count = 1,
			price = 2886,
			pricePerItem = 2886,
		},
		{
			count = 1,
			price = 2886,
			pricePerItem = 2886,
		},
		{
			count = 1,
			price = 3400,
			pricePerItem = 3400,
		},
		{
			count = 2,
			price = 8000,
			pricePerItem = 4000,
		},
		{
			count = 4,
			price = 10664,
			pricePerItem = 2666,
		},
		{
			count = 4,
			price = 11528,
			pricePerItem = 2882,
		},
		{
			count = 10,
			price = 26665,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26665,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26665,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 26666,
			pricePerItem = 2667,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28790,
			pricePerItem = 2879,
		},
		{
			count = 10,
			price = 28840,
			pricePerItem = 2884,
		},
		{
			count = 1,
			price = 3400,
			pricePerItem = 3400,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 1,
			price = 4795,
			pricePerItem = 4795,
		},
		{
			count = 1,
			price = 4797,
			pricePerItem = 4797,
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
			price = 4799,
			pricePerItem = 4799,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 1,
			price = 5800,
			pricePerItem = 5800,
		},
		{
			count = 2,
			price = 9588,
			pricePerItem = 4794,
		},
		{
			count = 2,
			price = 9588,
			pricePerItem = 4794,
		},
		{
			count = 2,
			price = 9588,
			pricePerItem = 4794,
		},
		{
			count = 2,
			price = 9588,
			pricePerItem = 4794,
		},
		{
			count = 2,
			price = 9596,
			pricePerItem = 4798,
		},
		{
			count = 2,
			price = 11586,
			pricePerItem = 5793,
		},
		{
			count = 2,
			price = 11588,
			pricePerItem = 5794,
		},
		{
			count = 2,
			price = 11592,
			pricePerItem = 5796,
		},
		{
			count = 2,
			price = 11604,
			pricePerItem = 5802,
		},
		{
			count = 4,
			price = 19176,
			pricePerItem = 4794,
		},
		{
			count = 4,
			price = 19176,
			pricePerItem = 4794,
		},
		{
			count = 4,
			price = 19176,
			pricePerItem = 4794,
		},
		{
			count = 4,
			price = 20000,
			pricePerItem = 5000,
		},
		{
			count = 5,
			price = 23970,
			pricePerItem = 4794,
		},
		{
			count = 5,
			price = 24000,
			pricePerItem = 4800,
		},
		{
			count = 5,
			price = 24000,
			pricePerItem = 4800,
		},
		{
			count = 6,
			price = 28776,
			pricePerItem = 4796,
		},
		{
			count = 8,
			price = 38352,
			pricePerItem = 4794,
		},
		{
			count = 8,
			price = 38352,
			pricePerItem = 4794,
		},
		{
			count = 10,
			price = 47960,
			pricePerItem = 4796,
		},
		{
			count = 10,
			price = 47960,
			pricePerItem = 4796,
		},
		{
			count = 10,
			price = 64500,
			pricePerItem = 6450,
		},
		{
			count = 1,
			price = 4788,
			pricePerItem = 4788,
		},
		{
			count = 1,
			price = 4788,
			pricePerItem = 4788,
		},
		{
			count = 1,
			price = 4788,
			pricePerItem = 4788,
		},
		{
			count = 1,
			price = 4790,
			pricePerItem = 4790,
		},
		{
			count = 1,
			price = 4790,
			pricePerItem = 4790,
		},
		{
			count = 1,
			price = 4794,
			pricePerItem = 4794,
		},
		{
			count = 2,
			price = 9578,
			pricePerItem = 4789,
		},
		{
			count = 10,
			price = 47870,
			pricePerItem = 4787,
		},
		{
			count = 10,
			price = 47870,
			pricePerItem = 4787,
		},
		{
			count = 10,
			price = 47870,
			pricePerItem = 4787,
		},
		{
			count = 10,
			price = 47910,
			pricePerItem = 4791,
		},
		{
			count = 10,
			price = 47920,
			pricePerItem = 4792,
		},
		{
			count = 10,
			price = 47930,
			pricePerItem = 4793,
		},
		{
			count = 10,
			price = 50000,
			pricePerItem = 5000,
		},
		{
			count = 10,
			price = 50000,
			pricePerItem = 5000,
		},
		{
			count = 10,
			price = 50000,
			pricePerItem = 5000,
		},
		{
			count = 1,
			price = 9985,
			pricePerItem = 9985,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 2,
			price = 19968,
			pricePerItem = 9984,
		},
		{
			count = 2,
			price = 19974,
			pricePerItem = 9987,
		},
		{
			count = 2,
			price = 19978,
			pricePerItem = 9989,
		},
		{
			count = 4,
			price = 39988,
			pricePerItem = 9997,
		},
		{
			count = 5,
			price = 49940,
			pricePerItem = 9988,
		},
		{
			count = 8,
			price = 79928,
			pricePerItem = 9991,
		},
		{
			count = 10,
			price = 100000,
			pricePerItem = 10000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 1,
			price = 9700,
			pricePerItem = 9700,
		},
		{
			count = 1,
			price = 9982,
			pricePerItem = 9982,
		},
		{
			count = 1,
			price = 9983,
			pricePerItem = 9983,
		},
		{
			count = 1,
			price = 9983,
			pricePerItem = 9983,
		},
		{
			count = 1,
			price = 9983,
			pricePerItem = 9983,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9986,
			pricePerItem = 9986,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 2,
			price = 18504,
			pricePerItem = 9252,
		},
		{
			count = 2,
			price = 18506,
			pricePerItem = 9253,
		},
		{
			count = 2,
			price = 18512,
			pricePerItem = 9256,
		},
		{
			count = 2,
			price = 18518,
			pricePerItem = 9259,
		},
		{
			count = 2,
			price = 18518,
			pricePerItem = 9259,
		},
		{
			count = 2,
			price = 19968,
			pricePerItem = 9984,
		},
		{
			count = 3,
			price = 27774,
			pricePerItem = 9258,
		},
		{
			count = 3,
			price = 27780,
			pricePerItem = 9260,
		},
		{
			count = 4,
			price = 37020,
			pricePerItem = 9255,
		},
		{
			count = 5,
			price = 46285,
			pricePerItem = 9257,
		},
		{
			count = 6,
			price = 55566,
			pricePerItem = 9261,
		},
		{
			count = 10,
			price = 92540,
			pricePerItem = 9254,
		},
		{
			count = 10,
			price = 99820,
			pricePerItem = 9982,
		},
		{
			count = 10,
			price = 99820,
			pricePerItem = 9982,
		},
		{
			count = 10,
			price = 99820,
			pricePerItem = 9982,
		},
		{
			count = 10,
			price = 100000,
			pricePerItem = 10000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
		{
			count = 10,
			price = 130000,
			pricePerItem = 13000,
		},
	},
	["Bolt of Runecloth"] = {
		{
			count = 2,
			price = 11198,
			pricePerItem = 5599,
		},
		{
			count = 10,
			price = 55980,
			pricePerItem = 5598,
		},
		{
			count = 10,
			price = 55980,
			pricePerItem = 5598,
		},
		{
			count = 2,
			price = 11198,
			pricePerItem = 5599,
		},
		{
			count = 3,
			price = 16791,
			pricePerItem = 5597,
		},
		{
			count = 10,
			price = 55960,
			pricePerItem = 5596,
		},
		{
			count = 10,
			price = 55970,
			pricePerItem = 5597,
		},
		{
			count = 10,
			price = 55970,
			pricePerItem = 5597,
		},
		{
			count = 10,
			price = 55980,
			pricePerItem = 5598,
		},
		{
			count = 10,
			price = 55980,
			pricePerItem = 5598,
		},
		{
			count = 1,
			price = 20000,
			pricePerItem = 20000,
		},
		{
			count = 1,
			price = 20000,
			pricePerItem = 20000,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12497,
			pricePerItem = 12497,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12499,
			pricePerItem = 12499,
		},
		{
			count = 1,
			price = 12998,
			pricePerItem = 12998,
		},
		{
			count = 1,
			price = 13000,
			pricePerItem = 13000,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 25990,
			pricePerItem = 12995,
		},
		{
			count = 2,
			price = 35114,
			pricePerItem = 17557,
		},
		{
			count = 3,
			price = 37491,
			pricePerItem = 12497,
		},
		{
			count = 4,
			price = 49988,
			pricePerItem = 12497,
		},
		{
			count = 4,
			price = 49988,
			pricePerItem = 12497,
		},
		{
			count = 4,
			price = 49988,
			pricePerItem = 12497,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 5,
			price = 62490,
			pricePerItem = 12498,
		},
		{
			count = 8,
			price = 99976,
			pricePerItem = 12497,
		},
		{
			count = 8,
			price = 99976,
			pricePerItem = 12497,
		},
		{
			count = 8,
			price = 99976,
			pricePerItem = 12497,
		},
		{
			count = 10,
			price = 195080,
			pricePerItem = 19508,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 24994,
			pricePerItem = 12497,
		},
		{
			count = 2,
			price = 25990,
			pricePerItem = 12995,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 5,
			price = 62490,
			pricePerItem = 12498,
		},
		{
			count = 10,
			price = 70000,
			pricePerItem = 7000,
		},
		{
			count = 6,
			price = 74976,
			pricePerItem = 12496,
		},
		{
			count = 10,
			price = 124960,
			pricePerItem = 12496,
		},
		{
			count = 10,
			price = 195070,
			pricePerItem = 19507,
		},
		{
			count = 1,
			price = 16980,
			pricePerItem = 16980,
		},
		{
			count = 1,
			price = 16980,
			pricePerItem = 16980,
		},
		{
			count = 2,
			price = 33958,
			pricePerItem = 16979,
		},
		{
			count = 10,
			price = 169930,
			pricePerItem = 16993,
		},
		{
			count = 1,
			price = 15600,
			pricePerItem = 15600,
		},
		{
			count = 1,
			price = 15600,
			pricePerItem = 15600,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15697,
			pricePerItem = 15697,
		},
		{
			count = 1,
			price = 15699,
			pricePerItem = 15699,
		},
		{
			count = 1,
			price = 15699,
			pricePerItem = 15699,
		},
		{
			count = 1,
			price = 15699,
			pricePerItem = 15699,
		},
		{
			count = 1,
			price = 15699,
			pricePerItem = 15699,
		},
		{
			count = 1,
			price = 15699,
			pricePerItem = 15699,
		},
		{
			count = 1,
			price = 15700,
			pricePerItem = 15700,
		},
		{
			count = 1,
			price = 15997,
			pricePerItem = 15997,
		},
		{
			count = 1,
			price = 15998,
			pricePerItem = 15998,
		},
		{
			count = 1,
			price = 15998,
			pricePerItem = 15998,
		},
		{
			count = 1,
			price = 15998,
			pricePerItem = 15998,
		},
		{
			count = 1,
			price = 15998,
			pricePerItem = 15998,
		},
		{
			count = 1,
			price = 16000,
			pricePerItem = 16000,
		},
		{
			count = 1,
			price = 16421,
			pricePerItem = 16421,
		},
		{
			count = 1,
			price = 16977,
			pricePerItem = 16977,
		},
		{
			count = 1,
			price = 16978,
			pricePerItem = 16978,
		},
		{
			count = 1,
			price = 16978,
			pricePerItem = 16978,
		},
		{
			count = 1,
			price = 16978,
			pricePerItem = 16978,
		},
		{
			count = 1,
			price = 16978,
			pricePerItem = 16978,
		},
		{
			count = 2,
			price = 33958,
			pricePerItem = 16979,
		},
		{
			count = 9,
			price = 143964,
			pricePerItem = 15996,
		},
		{
			count = 10,
			price = 156980,
			pricePerItem = 15698,
		},
		{
			count = 10,
			price = 159950,
			pricePerItem = 15995,
		},
		{
			count = 10,
			price = 159970,
			pricePerItem = 15997,
		},
		{
			count = 10,
			price = 159990,
			pricePerItem = 15999,
		},
		{
			count = 10,
			price = 164200,
			pricePerItem = 16420,
		},
		{
			count = 10,
			price = 164200,
			pricePerItem = 16420,
		},
		{
			count = 10,
			price = 164200,
			pricePerItem = 16420,
		},
		{
			count = 10,
			price = 169770,
			pricePerItem = 16977,
		},
		{
			count = 10,
			price = 169770,
			pricePerItem = 16977,
		},
		{
			count = 10,
			price = 169770,
			pricePerItem = 16977,
		},
	},
	["Bolt of Silk Cloth"] = {
		{
			count = 1,
			price = 1197,
			pricePerItem = 1197,
		},
		{
			count = 1,
			price = 1198,
			pricePerItem = 1198,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 1,
			price = 1199,
			pricePerItem = 1199,
		},
		{
			count = 2,
			price = 3200,
			pricePerItem = 1600,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 11990,
			pricePerItem = 1199,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 1,
			price = 3749,
			pricePerItem = 3749,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 37500,
			pricePerItem = 3750,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 10,
			price = 40000,
			pricePerItem = 4000,
		},
		{
			count = 1,
			price = 1333,
			pricePerItem = 1333,
		},
		{
			count = 1,
			price = 1334,
			pricePerItem = 1334,
		},
		{
			count = 1,
			price = 1336,
			pricePerItem = 1336,
		},
		{
			count = 1,
			price = 1487,
			pricePerItem = 1487,
		},
		{
			count = 1,
			price = 1490,
			pricePerItem = 1490,
		},
		{
			count = 1,
			price = 1491,
			pricePerItem = 1491,
		},
		{
			count = 2,
			price = 2676,
			pricePerItem = 1338,
		},
		{
			count = 4,
			price = 5344,
			pricePerItem = 1336,
		},
		{
			count = 6,
			price = 8010,
			pricePerItem = 1335,
		},
		{
			count = 10,
			price = 13350,
			pricePerItem = 1335,
		},
		{
			count = 10,
			price = 13350,
			pricePerItem = 1335,
		},
		{
			count = 10,
			price = 13350,
			pricePerItem = 1335,
		},
		{
			count = 1,
			price = 1332,
			pricePerItem = 1332,
		},
		{
			count = 1,
			price = 1332,
			pricePerItem = 1332,
		},
		{
			count = 1,
			price = 1332,
			pricePerItem = 1332,
		},
		{
			count = 1,
			price = 1332,
			pricePerItem = 1332,
		},
		{
			count = 1,
			price = 1332,
			pricePerItem = 1332,
		},
		{
			count = 1,
			price = 1333,
			pricePerItem = 1333,
		},
		{
			count = 1,
			price = 1334,
			pricePerItem = 1334,
		},
		{
			count = 1,
			price = 1336,
			pricePerItem = 1336,
		},
		{
			count = 1,
			price = 1487,
			pricePerItem = 1487,
		},
		{
			count = 1,
			price = 1490,
			pricePerItem = 1490,
		},
		{
			count = 2,
			price = 2676,
			pricePerItem = 1338,
		},
		{
			count = 4,
			price = 5344,
			pricePerItem = 1336,
		},
		{
			count = 6,
			price = 5994,
			pricePerItem = 999,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 7000,
			pricePerItem = 7000,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7996,
			pricePerItem = 7996,
		},
		{
			count = 1,
			price = 7997,
			pricePerItem = 7997,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
		},
		{
			count = 1,
			price = 8000,
			pricePerItem = 8000,
		},
		{
			count = 1,
			price = 19800,
			pricePerItem = 19800,
		},
		{
			count = 1,
			price = 19800,
			pricePerItem = 19800,
		},
		{
			count = 1,
			price = 19899,
			pricePerItem = 19899,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 1,
			price = 4557,
			pricePerItem = 4557,
		},
		{
			count = 1,
			price = 5500,
			pricePerItem = 5500,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5759,
			pricePerItem = 5759,
		},
		{
			count = 1,
			price = 5760,
			pricePerItem = 5760,
		},
		{
			count = 1,
			price = 5760,
			pricePerItem = 5760,
		},
		{
			count = 1,
			price = 5760,
			pricePerItem = 5760,
		},
		{
			count = 1,
			price = 5762,
			pricePerItem = 5762,
		},
		{
			count = 1,
			price = 5762,
			pricePerItem = 5762,
		},
		{
			count = 1,
			price = 5762,
			pricePerItem = 5762,
		},
		{
			count = 1,
			price = 5762,
			pricePerItem = 5762,
		},
		{
			count = 1,
			price = 5762,
			pricePerItem = 5762,
		},
		{
			count = 1,
			price = 6057,
			pricePerItem = 6057,
		},
		{
			count = 1,
			price = 6057,
			pricePerItem = 6057,
		},
		{
			count = 1,
			price = 6058,
			pricePerItem = 6058,
		},
		{
			count = 1,
			price = 6059,
			pricePerItem = 6059,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6998,
			pricePerItem = 6998,
		},
		{
			count = 1,
			price = 6999,
			pricePerItem = 6999,
		},
		{
			count = 1,
			price = 7000,
			pricePerItem = 7000,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
		},
		{
			count = 1,
			price = 8000,
			pricePerItem = 8000,
		},
		{
			count = 2,
			price = 10116,
			pricePerItem = 5058,
		},
		{
			count = 2,
			price = 10116,
			pricePerItem = 5058,
		},
		{
			count = 2,
			price = 12120,
			pricePerItem = 6060,
		},
		{
			count = 1,
			price = 19800,
			pricePerItem = 19800,
		},
		{
			count = 1,
			price = 19800,
			pricePerItem = 19800,
		},
		{
			count = 1,
			price = 19899,
			pricePerItem = 19899,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 5,
			price = 22790,
			pricePerItem = 4558,
		},
		{
			count = 5,
			price = 28805,
			pricePerItem = 5761,
		},
		{
			count = 6,
			price = 34577,
			pricePerItem = 5763,
		},
		{
			count = 10,
			price = 45570,
			pricePerItem = 4557,
		},
		{
			count = 10,
			price = 60606,
			pricePerItem = 6061,
		},
		{
			count = 1,
			price = 979,
			pricePerItem = 979,
		},
		{
			count = 1,
			price = 979,
			pricePerItem = 979,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 1,
			price = 986,
			pricePerItem = 986,
		},
		{
			count = 2,
			price = 1960,
			pricePerItem = 980,
		},
		{
			count = 3,
			price = 2931,
			pricePerItem = 977,
		},
		{
			count = 7,
			price = 6846,
			pricePerItem = 978,
		},
		{
			count = 7,
			price = 6867,
			pricePerItem = 981,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 1,
			price = 6697,
			pricePerItem = 6697,
		},
		{
			count = 1,
			price = 6698,
			pricePerItem = 6698,
		},
		{
			count = 2,
			price = 13396,
			pricePerItem = 6698,
		},
		{
			count = 3,
			price = 20097,
			pricePerItem = 6699,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
		{
			count = 10,
			price = 67000,
			pricePerItem = 6700,
		},
	},
	["Bolt of Woolen Cloth"] = {
		{
			count = 1,
			price = 254,
			pricePerItem = 254,
		},
		{
			count = 1,
			price = 254,
			pricePerItem = 254,
		},
		{
			count = 1,
			price = 254,
			pricePerItem = 254,
		},
		{
			count = 10,
			price = 2543,
			pricePerItem = 255,
		},
		{
			count = 10,
			price = 2543,
			pricePerItem = 255,
		},
		{
			count = 1,
			price = 749,
			pricePerItem = 749,
		},
		{
			count = 1,
			price = 824,
			pricePerItem = 824,
		},
		{
			count = 1,
			price = 873,
			pricePerItem = 873,
		},
		{
			count = 3,
			price = 2246,
			pricePerItem = 749,
		},
		{
			count = 4,
			price = 2995,
			pricePerItem = 749,
		},
		{
			count = 6,
			price = 4404,
			pricePerItem = 734,
		},
		{
			count = 1,
			price = 749,
			pricePerItem = 749,
		},
		{
			count = 1,
			price = 824,
			pricePerItem = 824,
		},
		{
			count = 2,
			price = 1000,
			pricePerItem = 500,
		},
		{
			count = 2,
			price = 1299,
			pricePerItem = 650,
		},
		{
			count = 2,
			price = 1466,
			pricePerItem = 733,
		},
		{
			count = 3,
			price = 2246,
			pricePerItem = 749,
		},
		{
			count = 4,
			price = 2928,
			pricePerItem = 732,
		},
		{
			count = 4,
			price = 2995,
			pricePerItem = 749,
		},
		{
			count = 6,
			price = 4404,
			pricePerItem = 734,
		},
		{
			count = 2,
			price = 1998,
			pricePerItem = 999,
		},
		{
			count = 3,
			price = 2949,
			pricePerItem = 983,
		},
		{
			count = 2,
			price = 3972,
			pricePerItem = 1986,
		},
		{
			count = 5,
			price = 3985,
			pricePerItem = 797,
		},
		{
			count = 5,
			price = 3990,
			pricePerItem = 798,
		},
		{
			count = 5,
			price = 5980,
			pricePerItem = 1196,
		},
		{
			count = 8,
			price = 6360,
			pricePerItem = 795,
		},
		{
			count = 8,
			price = 7872,
			pricePerItem = 984,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7990,
			pricePerItem = 799,
		},
		{
			count = 10,
			price = 9840,
			pricePerItem = 984,
		},
		{
			count = 3,
			price = 10000,
			pricePerItem = 3334,
		},
		{
			count = 1,
			price = 498,
			pricePerItem = 498,
		},
		{
			count = 2,
			price = 600,
			pricePerItem = 300,
		},
		{
			count = 1,
			price = 600,
			pricePerItem = 600,
		},
		{
			count = 1,
			price = 751,
			pricePerItem = 751,
		},
		{
			count = 1,
			price = 751,
			pricePerItem = 751,
		},
		{
			count = 2,
			price = 778,
			pricePerItem = 389,
		},
		{
			count = 1,
			price = 793,
			pricePerItem = 793,
		},
		{
			count = 1,
			price = 793,
			pricePerItem = 793,
		},
		{
			count = 1,
			price = 793,
			pricePerItem = 793,
		},
		{
			count = 1,
			price = 793,
			pricePerItem = 793,
		},
		{
			count = 1,
			price = 793,
			pricePerItem = 793,
		},
		{
			count = 1,
			price = 794,
			pricePerItem = 794,
		},
		{
			count = 3,
			price = 855,
			pricePerItem = 285,
		},
		{
			count = 2,
			price = 1500,
			pricePerItem = 750,
		},
		{
			count = 2,
			price = 1506,
			pricePerItem = 753,
		},
		{
			count = 2,
			price = 1998,
			pricePerItem = 999,
		},
		{
			count = 6,
			price = 2328,
			pricePerItem = 388,
		},
		{
			count = 5,
			price = 2495,
			pricePerItem = 499,
		},
		{
			count = 5,
			price = 2495,
			pricePerItem = 499,
		},
		{
			count = 5,
			price = 2495,
			pricePerItem = 499,
		},
		{
			count = 5,
			price = 2495,
			pricePerItem = 499,
		},
		{
			count = 4,
			price = 2996,
			pricePerItem = 749,
		},
		{
			count = 4,
			price = 3008,
			pricePerItem = 752,
		},
		{
			count = 5,
			price = 3985,
			pricePerItem = 797,
		},
		{
			count = 9,
			price = 4464,
			pricePerItem = 496,
		},
		{
			count = 5,
			price = 5980,
			pricePerItem = 1196,
		},
		{
			count = 8,
			price = 6360,
			pricePerItem = 795,
		},
		{
			count = 9,
			price = 6732,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 6945,
			pricePerItem = 695,
		},
		{
			count = 10,
			price = 7470,
			pricePerItem = 747,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 10,
			price = 7500,
			pricePerItem = 750,
		},
		{
			count = 10,
			price = 7520,
			pricePerItem = 752,
		},
		{
			count = 10,
			price = 7520,
			pricePerItem = 752,
		},
		{
			count = 8,
			price = 7872,
			pricePerItem = 984,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 10,
			price = 9840,
			pricePerItem = 984,
		},
		{
			count = 3,
			price = 10000,
			pricePerItem = 3334,
		},
		{
			count = 1,
			price = 2495,
			pricePerItem = 2495,
		},
		{
			count = 1,
			price = 2498,
			pricePerItem = 2498,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 2,
			price = 4992,
			pricePerItem = 2496,
		},
		{
			count = 2,
			price = 4994,
			pricePerItem = 2497,
		},
		{
			count = 2,
			price = 4998,
			pricePerItem = 2499,
		},
		{
			count = 2,
			price = 5986,
			pricePerItem = 2993,
		},
		{
			count = 3,
			price = 7497,
			pricePerItem = 2499,
		},
		{
			count = 6,
			price = 14964,
			pricePerItem = 2494,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 2,
			price = 775,
			pricePerItem = 388,
		},
		{
			count = 1,
			price = 999,
			pricePerItem = 999,
		},
		{
			count = 1,
			price = 1399,
			pricePerItem = 1399,
		},
		{
			count = 1,
			price = 1499,
			pricePerItem = 1499,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 2449,
			pricePerItem = 2449,
		},
		{
			count = 1,
			price = 2451,
			pricePerItem = 2451,
		},
		{
			count = 1,
			price = 2493,
			pricePerItem = 2493,
		},
		{
			count = 1,
			price = 2495,
			pricePerItem = 2495,
		},
		{
			count = 1,
			price = 2498,
			pricePerItem = 2498,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 2500,
			pricePerItem = 2500,
		},
		{
			count = 2,
			price = 4900,
			pricePerItem = 2450,
		},
		{
			count = 2,
			price = 5986,
			pricePerItem = 2993,
		},
		{
			count = 6,
			price = 8388,
			pricePerItem = 1398,
		},
	},
	["Elemental Air"] = {
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 50000,
			pricePerItem = 50000,
		},
		{
			count = 1,
			price = 50000,
			pricePerItem = 50000,
		},
		{
			count = 1,
			price = 50000,
			pricePerItem = 50000,
		},
		{
			count = 3,
			price = 89991,
			pricePerItem = 29997,
		},
		{
			count = 4,
			price = 199996,
			pricePerItem = 49999,
		},
		{
			count = 1,
			price = 9997,
			pricePerItem = 9997,
		},
		{
			count = 1,
			price = 9998,
			pricePerItem = 9998,
		},
		{
			count = 1,
			price = 9998,
			pricePerItem = 9998,
		},
		{
			count = 1,
			price = 9998,
			pricePerItem = 9998,
		},
		{
			count = 1,
			price = 9999,
			pricePerItem = 9999,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 11499,
			pricePerItem = 11499,
		},
		{
			count = 1,
			price = 12596,
			pricePerItem = 12596,
		},
		{
			count = 1,
			price = 12596,
			pricePerItem = 12596,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 1,
			price = 29998,
			pricePerItem = 29998,
		},
		{
			count = 3,
			price = 89991,
			pricePerItem = 29997,
		},
		{
			count = 4,
			price = 199996,
			pricePerItem = 49999,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1033,
			pricePerItem = 1033,
		},
		{
			count = 1,
			price = 1033,
			pricePerItem = 1033,
		},
		{
			count = 1,
			price = 1034,
			pricePerItem = 1034,
		},
		{
			count = 1,
			price = 1034,
			pricePerItem = 1034,
		},
		{
			count = 1,
			price = 1035,
			pricePerItem = 1035,
		},
		{
			count = 10,
			price = 10320,
			pricePerItem = 1032,
		},
		{
			count = 8,
			price = 20000,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 1013,
			pricePerItem = 1013,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1031,
			pricePerItem = 1031,
		},
		{
			count = 1,
			price = 1033,
			pricePerItem = 1033,
		},
		{
			count = 1,
			price = 1033,
			pricePerItem = 1033,
		},
		{
			count = 1,
			price = 1034,
			pricePerItem = 1034,
		},
		{
			count = 1,
			price = 1034,
			pricePerItem = 1034,
		},
		{
			count = 1,
			price = 1035,
			pricePerItem = 1035,
		},
		{
			count = 3,
			price = 3042,
			pricePerItem = 1014,
		},
		{
			count = 8,
			price = 20000,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 483,
			pricePerItem = 483,
		},
		{
			count = 1,
			price = 484,
			pricePerItem = 484,
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
			count = 3,
			price = 2137,
			pricePerItem = 713,
		},
		{
			count = 3,
			price = 2994,
			pricePerItem = 998,
		},
		{
			count = 6,
			price = 5964,
			pricePerItem = 994,
		},
		{
			count = 1,
			price = 450000,
			pricePerItem = 450000,
		},
		{
			count = 1,
			price = 2000000,
			pricePerItem = 2000000,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 476,
			pricePerItem = 476,
		},
		{
			count = 1,
			price = 477,
			pricePerItem = 477,
		},
		{
			count = 1,
			price = 483,
			pricePerItem = 483,
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
			count = 3,
			price = 1446,
			pricePerItem = 482,
		},
		{
			count = 3,
			price = 2137,
			pricePerItem = 713,
		},
		{
			count = 6,
			price = 5964,
			pricePerItem = 994,
		},
		{
			count = 1,
			price = 450000,
			pricePerItem = 450000,
		},
		{
			count = 1,
			price = 2000000,
			pricePerItem = 2000000,
		},
		{
			count = 1,
			price = 1597,
			pricePerItem = 1597,
		},
		{
			count = 2,
			price = 1800,
			pricePerItem = 900,
		},
		{
			count = 2,
			price = 1990,
			pricePerItem = 995,
		},
		{
			count = 2,
			price = 2000,
			pricePerItem = 1000,
		},
		{
			count = 1,
			price = 2100,
			pricePerItem = 2100,
		},
		{
			count = 5,
			price = 4990,
			pricePerItem = 998,
		},
		{
			count = 2,
			price = 5000,
			pricePerItem = 2500,
		},
		{
			count = 10,
			price = 115950,
			pricePerItem = 11595,
		},
		{
			count = 10,
			price = 115950,
			pricePerItem = 11595,
		},
		{
			count = 1,
			price = 799,
			pricePerItem = 799,
		},
		{
			count = 1,
			price = 897,
			pricePerItem = 897,
		},
		{
			count = 1,
			price = 1597,
			pricePerItem = 1597,
		},
		{
			count = 2,
			price = 2000,
			pricePerItem = 1000,
		},
		{
			count = 1,
			price = 2100,
			pricePerItem = 2100,
		},
		{
			count = 5,
			price = 4490,
			pricePerItem = 898,
		},
		{
			count = 5,
			price = 4495,
			pricePerItem = 899,
		},
		{
			count = 2,
			price = 5000,
			pricePerItem = 2500,
		},
		{
			count = 1,
			price = 11594,
			pricePerItem = 11594,
		},
		{
			count = 10,
			price = 115950,
			pricePerItem = 11595,
		},
		{
			count = 10,
			price = 115950,
			pricePerItem = 11595,
		},
	},
	["Elemental Earth"] = {
		{
			count = 1,
			price = 31292,
			pricePerItem = 31292,
		},
		{
			count = 5,
			price = 156450,
			pricePerItem = 31290,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308860,
			pricePerItem = 30886,
		},
		{
			count = 10,
			price = 308870,
			pricePerItem = 30887,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308880,
			pricePerItem = 30888,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 308930,
			pricePerItem = 30893,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312870,
			pricePerItem = 31287,
		},
		{
			count = 10,
			price = 312900,
			pricePerItem = 31290,
		},
		{
			count = 10,
			price = 312900,
			pricePerItem = 31290,
		},
		{
			count = 10,
			price = 313029,
			pricePerItem = 31303,
		},
		{
			count = 1,
			price = 30591,
			pricePerItem = 30591,
		},
		{
			count = 1,
			price = 30599,
			pricePerItem = 30599,
		},
		{
			count = 1,
			price = 31100,
			pricePerItem = 31100,
		},
		{
			count = 1,
			price = 31292,
			pricePerItem = 31292,
		},
		{
			count = 2,
			price = 61190,
			pricePerItem = 30595,
		},
		{
			count = 3,
			price = 91791,
			pricePerItem = 30597,
		},
		{
			count = 5,
			price = 156450,
			pricePerItem = 31290,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305910,
			pricePerItem = 30591,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305920,
			pricePerItem = 30592,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 305930,
			pricePerItem = 30593,
		},
		{
			count = 10,
			price = 306000,
			pricePerItem = 30600,
		},
		{
			count = 10,
			price = 306000,
			pricePerItem = 30600,
		},
		{
			count = 10,
			price = 306000,
			pricePerItem = 30600,
		},
		{
			count = 10,
			price = 306000,
			pricePerItem = 30600,
		},
		{
			count = 10,
			price = 306000,
			pricePerItem = 30600,
		},
		{
			count = 10,
			price = 312900,
			pricePerItem = 31290,
		},
		{
			count = 10,
			price = 312900,
			pricePerItem = 31290,
		},
		{
			count = 1,
			price = 37983,
			pricePerItem = 37983,
		},
		{
			count = 1,
			price = 37983,
			pricePerItem = 37983,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37987,
			pricePerItem = 37987,
		},
		{
			count = 1,
			price = 37996,
			pricePerItem = 37996,
		},
		{
			count = 1,
			price = 37999,
			pricePerItem = 37999,
		},
		{
			count = 1,
			price = 38000,
			pricePerItem = 38000,
		},
		{
			count = 3,
			price = 119994,
			pricePerItem = 39998,
		},
		{
			count = 4,
			price = 151980,
			pricePerItem = 37995,
		},
		{
			count = 6,
			price = 227934,
			pricePerItem = 37989,
		},
		{
			count = 1,
			price = 37981,
			pricePerItem = 37981,
		},
		{
			count = 1,
			price = 37983,
			pricePerItem = 37983,
		},
		{
			count = 1,
			price = 37983,
			pricePerItem = 37983,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37984,
			pricePerItem = 37984,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37985,
			pricePerItem = 37985,
		},
		{
			count = 1,
			price = 37987,
			pricePerItem = 37987,
		},
		{
			count = 1,
			price = 37996,
			pricePerItem = 37996,
		},
		{
			count = 1,
			price = 37999,
			pricePerItem = 37999,
		},
		{
			count = 1,
			price = 38000,
			pricePerItem = 38000,
		},
		{
			count = 4,
			price = 151980,
			pricePerItem = 37995,
		},
		{
			count = 6,
			price = 227934,
			pricePerItem = 37989,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 62222,
			pricePerItem = 62222,
		},
		{
			count = 1,
			price = 69984,
			pricePerItem = 69984,
		},
		{
			count = 1,
			price = 69984,
			pricePerItem = 69984,
		},
		{
			count = 1,
			price = 69984,
			pricePerItem = 69984,
		},
		{
			count = 1,
			price = 69985,
			pricePerItem = 69985,
		},
		{
			count = 1,
			price = 69987,
			pricePerItem = 69987,
		},
		{
			count = 1,
			price = 69987,
			pricePerItem = 69987,
		},
		{
			count = 1,
			price = 69990,
			pricePerItem = 69990,
		},
		{
			count = 1,
			price = 69994,
			pricePerItem = 69994,
		},
		{
			count = 1,
			price = 69998,
			pricePerItem = 69998,
		},
		{
			count = 1,
			price = 69999,
			pricePerItem = 69999,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 2,
			price = 139980,
			pricePerItem = 69990,
		},
		{
			count = 3,
			price = 209958,
			pricePerItem = 69986,
		},
		{
			count = 4,
			price = 279988,
			pricePerItem = 69997,
		},
		{
			count = 5,
			price = 349975,
			pricePerItem = 69995,
		},
		{
			count = 6,
			price = 419934,
			pricePerItem = 69989,
		},
		{
			count = 10,
			price = 699900,
			pricePerItem = 69990,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 699980,
			pricePerItem = 69998,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 10,
			price = 749920,
			pricePerItem = 74992,
		},
		{
			count = 1,
			price = 69998,
			pricePerItem = 69998,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 1,
			price = 75000,
			pricePerItem = 75000,
		},
		{
			count = 3,
			price = 209988,
			pricePerItem = 69996,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 699970,
			pricePerItem = 69997,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 10,
			price = 749990,
			pricePerItem = 74999,
		},
		{
			count = 1,
			price = 56999,
			pricePerItem = 56999,
		},
		{
			count = 1,
			price = 57000,
			pricePerItem = 57000,
		},
		{
			count = 1,
			price = 59899,
			pricePerItem = 59899,
		},
		{
			count = 1,
			price = 60000,
			pricePerItem = 60000,
		},
		{
			count = 1,
			price = 60000,
			pricePerItem = 60000,
		},
		{
			count = 4,
			price = 379664,
			pricePerItem = 94916,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613060,
			pricePerItem = 61306,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 614890,
			pricePerItem = 61489,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 727840,
			pricePerItem = 72784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 10,
			price = 927840,
			pricePerItem = 92784,
		},
		{
			count = 1,
			price = 57474,
			pricePerItem = 57474,
		},
		{
			count = 1,
			price = 57474,
			pricePerItem = 57474,
		},
		{
			count = 1,
			price = 57474,
			pricePerItem = 57474,
		},
		{
			count = 1,
			price = 57474,
			pricePerItem = 57474,
		},
		{
			count = 1,
			price = 58216,
			pricePerItem = 58216,
		},
		{
			count = 1,
			price = 58218,
			pricePerItem = 58218,
		},
		{
			count = 1,
			price = 58232,
			pricePerItem = 58232,
		},
		{
			count = 1,
			price = 58232,
			pricePerItem = 58232,
		},
		{
			count = 1,
			price = 58232,
			pricePerItem = 58232,
		},
		{
			count = 1,
			price = 58232,
			pricePerItem = 58232,
		},
		{
			count = 1,
			price = 58233,
			pricePerItem = 58233,
		},
		{
			count = 1,
			price = 58234,
			pricePerItem = 58234,
		},
		{
			count = 1,
			price = 61299,
			pricePerItem = 61299,
		},
		{
			count = 1,
			price = 61304,
			pricePerItem = 61304,
		},
		{
			count = 1,
			price = 61304,
			pricePerItem = 61304,
		},
		{
			count = 1,
			price = 65000,
			pricePerItem = 65000,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 66969,
			pricePerItem = 66969,
		},
		{
			count = 1,
			price = 69999,
			pricePerItem = 69999,
		},
		{
			count = 1,
			price = 69999,
			pricePerItem = 69999,
		},
		{
			count = 1,
			price = 69999,
			pricePerItem = 69999,
		},
		{
			count = 1,
			price = 72027,
			pricePerItem = 72027,
		},
		{
			count = 2,
			price = 116462,
			pricePerItem = 58231,
		},
		{
			count = 3,
			price = 183900,
			pricePerItem = 61300,
		},
		{
			count = 4,
			price = 229900,
			pricePerItem = 57475,
		},
		{
			count = 4,
			price = 379664,
			pricePerItem = 94916,
		},
		{
			count = 10,
			price = 574630,
			pricePerItem = 57463,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 574730,
			pricePerItem = 57473,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582170,
			pricePerItem = 58217,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582190,
			pricePerItem = 58219,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582200,
			pricePerItem = 58220,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 582300,
			pricePerItem = 58230,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612690,
			pricePerItem = 61269,
		},
		{
			count = 10,
			price = 612800,
			pricePerItem = 61280,
		},
		{
			count = 10,
			price = 612800,
			pricePerItem = 61280,
		},
		{
			count = 10,
			price = 612800,
			pricePerItem = 61280,
		},
		{
			count = 10,
			price = 612800,
			pricePerItem = 61280,
		},
		{
			count = 10,
			price = 612800,
			pricePerItem = 61280,
		},
		{
			count = 10,
			price = 613000,
			pricePerItem = 61300,
		},
		{
			count = 10,
			price = 613010,
			pricePerItem = 61301,
		},
		{
			count = 10,
			price = 613010,
			pricePerItem = 61301,
		},
		{
			count = 10,
			price = 613020,
			pricePerItem = 61302,
		},
		{
			count = 10,
			price = 613020,
			pricePerItem = 61302,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613050,
			pricePerItem = 61305,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
		{
			count = 10,
			price = 613070,
			pricePerItem = 61307,
		},
	},
	["Elemental Fire"] = {
		{
			count = 1,
			price = 9898,
			pricePerItem = 9898,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9995,
			pricePerItem = 9995,
		},
		{
			count = 1,
			price = 9995,
			pricePerItem = 9995,
		},
		{
			count = 1,
			price = 9995,
			pricePerItem = 9995,
		},
		{
			count = 1,
			price = 9998,
			pricePerItem = 9998,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10645,
			pricePerItem = 10645,
		},
		{
			count = 1,
			price = 10646,
			pricePerItem = 10646,
		},
		{
			count = 1,
			price = 10650,
			pricePerItem = 10650,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 3,
			price = 29997,
			pricePerItem = 9999,
		},
		{
			count = 8,
			price = 85184,
			pricePerItem = 10648,
		},
		{
			count = 10,
			price = 98970,
			pricePerItem = 9897,
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
			price = 4993,
			pricePerItem = 4993,
		},
		{
			count = 1,
			price = 4994,
			pricePerItem = 4994,
		},
		{
			count = 1,
			price = 4995,
			pricePerItem = 4995,
		},
		{
			count = 1,
			price = 4996,
			pricePerItem = 4996,
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
			price = 6596,
			pricePerItem = 6596,
		},
		{
			count = 1,
			price = 6597,
			pricePerItem = 6597,
		},
		{
			count = 1,
			price = 6598,
			pricePerItem = 6598,
		},
		{
			count = 1,
			price = 9096,
			pricePerItem = 9096,
		},
		{
			count = 1,
			price = 9097,
			pricePerItem = 9097,
		},
		{
			count = 1,
			price = 9199,
			pricePerItem = 9199,
		},
		{
			count = 1,
			price = 9200,
			pricePerItem = 9200,
		},
		{
			count = 1,
			price = 9200,
			pricePerItem = 9200,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9899,
			pricePerItem = 9899,
		},
		{
			count = 1,
			price = 9900,
			pricePerItem = 9900,
		},
		{
			count = 1,
			price = 9998,
			pricePerItem = 9998,
		},
		{
			count = 1,
			price = 10645,
			pricePerItem = 10645,
		},
		{
			count = 1,
			price = 10646,
			pricePerItem = 10646,
		},
		{
			count = 1,
			price = 10650,
			pricePerItem = 10650,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 1,
			price = 10651,
			pricePerItem = 10651,
		},
		{
			count = 3,
			price = 14991,
			pricePerItem = 4997,
		},
		{
			count = 10,
			price = 65970,
			pricePerItem = 6597,
		},
		{
			count = 10,
			price = 65970,
			pricePerItem = 6597,
		},
		{
			count = 10,
			price = 65970,
			pricePerItem = 6597,
		},
		{
			count = 8,
			price = 85184,
			pricePerItem = 10648,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
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
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8996,
			pricePerItem = 8996,
		},
		{
			count = 1,
			price = 8997,
			pricePerItem = 8997,
		},
		{
			count = 1,
			price = 8998,
			pricePerItem = 8998,
		},
		{
			count = 1,
			price = 9497,
			pricePerItem = 9497,
		},
		{
			count = 1,
			price = 9497,
			pricePerItem = 9497,
		},
		{
			count = 1,
			price = 9497,
			pricePerItem = 9497,
		},
		{
			count = 1,
			price = 9498,
			pricePerItem = 9498,
		},
		{
			count = 1,
			price = 9499,
			pricePerItem = 9499,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8996,
			pricePerItem = 8996,
		},
		{
			count = 1,
			price = 8997,
			pricePerItem = 8997,
		},
		{
			count = 1,
			price = 8998,
			pricePerItem = 8998,
		},
		{
			count = 9,
			price = 72000,
			pricePerItem = 8000,
		},
		{
			count = 1,
			price = 9781,
			pricePerItem = 9781,
		},
		{
			count = 1,
			price = 9782,
			pricePerItem = 9782,
		},
		{
			count = 1,
			price = 9783,
			pricePerItem = 9783,
		},
		{
			count = 1,
			price = 9787,
			pricePerItem = 9787,
		},
		{
			count = 1,
			price = 9789,
			pricePerItem = 9789,
		},
		{
			count = 1,
			price = 9790,
			pricePerItem = 9790,
		},
		{
			count = 1,
			price = 9790,
			pricePerItem = 9790,
		},
		{
			count = 1,
			price = 9793,
			pricePerItem = 9793,
		},
		{
			count = 1,
			price = 9992,
			pricePerItem = 9992,
		},
		{
			count = 1,
			price = 9993,
			pricePerItem = 9993,
		},
		{
			count = 1,
			price = 9994,
			pricePerItem = 9994,
		},
		{
			count = 1,
			price = 10095,
			pricePerItem = 10095,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10900,
			pricePerItem = 10900,
		},
		{
			count = 1,
			price = 10900,
			pricePerItem = 10900,
		},
		{
			count = 1,
			price = 11330,
			pricePerItem = 11330,
		},
		{
			count = 2,
			price = 20194,
			pricePerItem = 10097,
		},
		{
			count = 3,
			price = 29352,
			pricePerItem = 9784,
		},
		{
			count = 3,
			price = 29355,
			pricePerItem = 9785,
		},
		{
			count = 3,
			price = 29382,
			pricePerItem = 9794,
		},
		{
			count = 3,
			price = 34000,
			pricePerItem = 11334,
		},
		{
			count = 10,
			price = 98000,
			pricePerItem = 9800,
		},
		{
			count = 10,
			price = 98000,
			pricePerItem = 9800,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10100,
			pricePerItem = 10100,
		},
		{
			count = 1,
			price = 10900,
			pricePerItem = 10900,
		},
		{
			count = 1,
			price = 10900,
			pricePerItem = 10900,
		},
		{
			count = 1,
			price = 11330,
			pricePerItem = 11330,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 10,
			price = 150000,
			pricePerItem = 15000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10700,
			pricePerItem = 10700,
		},
		{
			count = 1,
			price = 10700,
			pricePerItem = 10700,
		},
		{
			count = 1,
			price = 14699,
			pricePerItem = 14699,
		},
		{
			count = 1,
			price = 14997,
			pricePerItem = 14997,
		},
		{
			count = 1,
			price = 14997,
			pricePerItem = 14997,
		},
		{
			count = 1,
			price = 14997,
			pricePerItem = 14997,
		},
		{
			count = 1,
			price = 14997,
			pricePerItem = 14997,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 16564,
			pricePerItem = 16564,
		},
		{
			count = 1,
			price = 18600,
			pricePerItem = 18600,
		},
		{
			count = 1,
			price = 19995,
			pricePerItem = 19995,
		},
		{
			count = 1,
			price = 20524,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 20524,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 20524,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 20524,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 20524,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 20538,
			pricePerItem = 20538,
		},
		{
			count = 1,
			price = 20538,
			pricePerItem = 20538,
		},
		{
			count = 2,
			price = 24000,
			pricePerItem = 12000,
		},
		{
			count = 2,
			price = 28998,
			pricePerItem = 14499,
		},
		{
			count = 2,
			price = 38997,
			pricePerItem = 19499,
		},
		{
			count = 2,
			price = 41070,
			pricePerItem = 20535,
		},
		{
			count = 5,
			price = 97500,
			pricePerItem = 19500,
		},
		{
			count = 5,
			price = 100000,
			pricePerItem = 20000,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 10,
			price = 205240,
			pricePerItem = 20524,
		},
		{
			count = 1,
			price = 14997,
			pricePerItem = 14997,
		},
		{
			count = 1,
			price = 14998,
			pricePerItem = 14998,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 14999,
			pricePerItem = 14999,
		},
		{
			count = 1,
			price = 16564,
			pricePerItem = 16564,
		},
		{
			count = 1,
			price = 18600,
			pricePerItem = 18600,
		},
		{
			count = 1,
			price = 19783,
			pricePerItem = 19783,
		},
		{
			count = 1,
			price = 19995,
			pricePerItem = 19995,
		},
		{
			count = 2,
			price = 38997,
			pricePerItem = 19499,
		},
		{
			count = 2,
			price = 39900,
			pricePerItem = 19950,
		},
		{
			count = 5,
			price = 97500,
			pricePerItem = 19500,
		},
		{
			count = 5,
			price = 97500,
			pricePerItem = 19500,
		},
	},
	["Elemental Water"] = {
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 9595,
			pricePerItem = 9595,
		},
		{
			count = 1,
			price = 9900,
			pricePerItem = 9900,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9996,
			pricePerItem = 9996,
		},
		{
			count = 1,
			price = 9999,
			pricePerItem = 9999,
		},
		{
			count = 1,
			price = 12900,
			pricePerItem = 12900,
		},
		{
			count = 1,
			price = 12900,
			pricePerItem = 12900,
		},
		{
			count = 1,
			price = 13998,
			pricePerItem = 13998,
		},
		{
			count = 1,
			price = 13998,
			pricePerItem = 13998,
		},
		{
			count = 1,
			price = 13998,
			pricePerItem = 13998,
		},
		{
			count = 2,
			price = 17662,
			pricePerItem = 8831,
		},
		{
			count = 2,
			price = 17664,
			pricePerItem = 8832,
		},
		{
			count = 1,
			price = 17994,
			pricePerItem = 17994,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18500,
			pricePerItem = 18500,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18994,
			pricePerItem = 18994,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 1,
			price = 19900,
			pricePerItem = 19900,
		},
		{
			count = 4,
			price = 35332,
			pricePerItem = 8833,
		},
		{
			count = 4,
			price = 40000,
			pricePerItem = 10000,
		},
		{
			count = 6,
			price = 53000,
			pricePerItem = 8834,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 10,
			price = 136600,
			pricePerItem = 13660,
		},
		{
			count = 10,
			price = 136600,
			pricePerItem = 13660,
		},
		{
			count = 10,
			price = 136600,
			pricePerItem = 13660,
		},
		{
			count = 10,
			price = 136600,
			pricePerItem = 13660,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
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
			price = 6000,
			pricePerItem = 6000,
		},
		{
			count = 1,
			price = 6000,
			pricePerItem = 6000,
		},
		{
			count = 1,
			price = 6000,
			pricePerItem = 6000,
		},
		{
			count = 1,
			price = 6000,
			pricePerItem = 6000,
		},
		{
			count = 1,
			price = 6000,
			pricePerItem = 6000,
		},
		{
			count = 1,
			price = 6650,
			pricePerItem = 6650,
		},
		{
			count = 1,
			price = 7000,
			pricePerItem = 7000,
		},
		{
			count = 1,
			price = 7000,
			pricePerItem = 7000,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
		},
		{
			count = 1,
			price = 7998,
			pricePerItem = 7998,
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
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 9000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 10000,
			pricePerItem = 10000,
		},
		{
			count = 1,
			price = 11998,
			pricePerItem = 11998,
		},
		{
			count = 1,
			price = 16800,
			pricePerItem = 16800,
		},
		{
			count = 1,
			price = 17800,
			pricePerItem = 17800,
		},
		{
			count = 1,
			price = 17994,
			pricePerItem = 17994,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18496,
			pricePerItem = 18496,
		},
		{
			count = 1,
			price = 18500,
			pricePerItem = 18500,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18833,
			pricePerItem = 18833,
		},
		{
			count = 1,
			price = 18994,
			pricePerItem = 18994,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 1,
			price = 18995,
			pricePerItem = 18995,
		},
		{
			count = 4,
			price = 47996,
			pricePerItem = 11999,
		},
		{
			count = 10,
			price = 99990,
			pricePerItem = 9999,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 1,
			price = 99999,
			pricePerItem = 99999,
		},
		{
			count = 10,
			price = 141100,
			pricePerItem = 14110,
		},
		{
			count = 10,
			price = 141100,
			pricePerItem = 14110,
		},
		{
			count = 10,
			price = 141100,
			pricePerItem = 14110,
		},
		{
			count = 10,
			price = 177990,
			pricePerItem = 17799,
		},
		{
			count = 1,
			price = 8995,
			pricePerItem = 8995,
		},
		{
			count = 1,
			price = 8996,
			pricePerItem = 8996,
		},
		{
			count = 1,
			price = 8997,
			pricePerItem = 8997,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 10,
			price = 90000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 8994,
			pricePerItem = 8994,
		},
		{
			count = 1,
			price = 8995,
			pricePerItem = 8995,
		},
		{
			count = 1,
			price = 8996,
			pricePerItem = 8996,
		},
		{
			count = 1,
			price = 8997,
			pricePerItem = 8997,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 1,
			price = 8999,
			pricePerItem = 8999,
		},
		{
			count = 10,
			price = 90000,
			pricePerItem = 9000,
		},
		{
			count = 1,
			price = 45997,
			pricePerItem = 45997,
		},
		{
			count = 1,
			price = 45999,
			pricePerItem = 45999,
		},
		{
			count = 1,
			price = 45999,
			pricePerItem = 45999,
		},
		{
			count = 1,
			price = 46000,
			pricePerItem = 46000,
		},
		{
			count = 1,
			price = 48994,
			pricePerItem = 48994,
		},
		{
			count = 1,
			price = 48994,
			pricePerItem = 48994,
		},
		{
			count = 1,
			price = 48996,
			pricePerItem = 48996,
		},
		{
			count = 1,
			price = 48997,
			pricePerItem = 48997,
		},
		{
			count = 1,
			price = 48998,
			pricePerItem = 48998,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 51031,
			pricePerItem = 51031,
		},
		{
			count = 1,
			price = 51033,
			pricePerItem = 51033,
		},
		{
			count = 1,
			price = 51040,
			pricePerItem = 51040,
		},
		{
			count = 2,
			price = 91996,
			pricePerItem = 45998,
		},
		{
			count = 3,
			price = 153096,
			pricePerItem = 51032,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 2,
			price = 440000,
			pricePerItem = 220000,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510300,
			pricePerItem = 51030,
		},
		{
			count = 10,
			price = 510420,
			pricePerItem = 51042,
		},
		{
			count = 1,
			price = 42997,
			pricePerItem = 42997,
		},
		{
			count = 1,
			price = 42998,
			pricePerItem = 42998,
		},
		{
			count = 1,
			price = 42998,
			pricePerItem = 42998,
		},
		{
			count = 1,
			price = 42998,
			pricePerItem = 42998,
		},
		{
			count = 1,
			price = 45000,
			pricePerItem = 45000,
		},
		{
			count = 1,
			price = 45000,
			pricePerItem = 45000,
		},
		{
			count = 1,
			price = 45997,
			pricePerItem = 45997,
		},
		{
			count = 1,
			price = 45997,
			pricePerItem = 45997,
		},
		{
			count = 1,
			price = 45997,
			pricePerItem = 45997,
		},
		{
			count = 1,
			price = 45997,
			pricePerItem = 45997,
		},
		{
			count = 1,
			price = 46000,
			pricePerItem = 46000,
		},
		{
			count = 1,
			price = 48994,
			pricePerItem = 48994,
		},
		{
			count = 1,
			price = 48994,
			pricePerItem = 48994,
		},
		{
			count = 1,
			price = 48996,
			pricePerItem = 48996,
		},
		{
			count = 1,
			price = 48997,
			pricePerItem = 48997,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 48999,
			pricePerItem = 48999,
		},
		{
			count = 1,
			price = 51033,
			pricePerItem = 51033,
		},
		{
			count = 1,
			price = 51040,
			pricePerItem = 51040,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91992,
			pricePerItem = 45996,
		},
		{
			count = 2,
			price = 91996,
			pricePerItem = 45998,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 5,
			price = 244975,
			pricePerItem = 48995,
		},
		{
			count = 2,
			price = 440000,
			pricePerItem = 220000,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 489930,
			pricePerItem = 48993,
		},
		{
			count = 10,
			price = 510420,
			pricePerItem = 51042,
		},
		{
			count = 1,
			price = 29973,
			pricePerItem = 29973,
		},
		{
			count = 1,
			price = 29974,
			pricePerItem = 29974,
		},
		{
			count = 1,
			price = 29975,
			pricePerItem = 29975,
		},
		{
			count = 1,
			price = 29975,
			pricePerItem = 29975,
		},
		{
			count = 1,
			price = 29976,
			pricePerItem = 29976,
		},
		{
			count = 1,
			price = 29976,
			pricePerItem = 29976,
		},
		{
			count = 1,
			price = 31000,
			pricePerItem = 31000,
		},
		{
			count = 1,
			price = 31010,
			pricePerItem = 31010,
		},
		{
			count = 1,
			price = 48434,
			pricePerItem = 48434,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 9,
			price = 449775,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 1,
			price = 43000,
			pricePerItem = 43000,
		},
		{
			count = 1,
			price = 43987,
			pricePerItem = 43987,
		},
		{
			count = 1,
			price = 43987,
			pricePerItem = 43987,
		},
		{
			count = 1,
			price = 43988,
			pricePerItem = 43988,
		},
		{
			count = 1,
			price = 43989,
			pricePerItem = 43989,
		},
		{
			count = 1,
			price = 44494,
			pricePerItem = 44494,
		},
		{
			count = 1,
			price = 44494,
			pricePerItem = 44494,
		},
		{
			count = 1,
			price = 44495,
			pricePerItem = 44495,
		},
		{
			count = 1,
			price = 44496,
			pricePerItem = 44496,
		},
		{
			count = 1,
			price = 44497,
			pricePerItem = 44497,
		},
		{
			count = 1,
			price = 44498,
			pricePerItem = 44498,
		},
		{
			count = 1,
			price = 44996,
			pricePerItem = 44996,
		},
		{
			count = 1,
			price = 44997,
			pricePerItem = 44997,
		},
		{
			count = 1,
			price = 44998,
			pricePerItem = 44998,
		},
		{
			count = 1,
			price = 49192,
			pricePerItem = 49192,
		},
		{
			count = 1,
			price = 50000,
			pricePerItem = 50000,
		},
		{
			count = 1,
			price = 50000,
			pricePerItem = 50000,
		},
		{
			count = 2,
			price = 88992,
			pricePerItem = 44496,
		},
		{
			count = 2,
			price = 88992,
			pricePerItem = 44496,
		},
		{
			count = 2,
			price = 88992,
			pricePerItem = 44496,
		},
		{
			count = 2,
			price = 88992,
			pricePerItem = 44496,
		},
		{
			count = 2,
			price = 88998,
			pricePerItem = 44499,
		},
		{
			count = 2,
			price = 89000,
			pricePerItem = 44500,
		},
		{
			count = 2,
			price = 89978,
			pricePerItem = 44989,
		},
		{
			count = 2,
			price = 89978,
			pricePerItem = 44989,
		},
		{
			count = 2,
			price = 89978,
			pricePerItem = 44989,
		},
		{
			count = 2,
			price = 89978,
			pricePerItem = 44989,
		},
		{
			count = 2,
			price = 89978,
			pricePerItem = 44989,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 1,
			price = 119887,
			pricePerItem = 119887,
		},
		{
			count = 4,
			price = 179996,
			pricePerItem = 44999,
		},
		{
			count = 5,
			price = 224945,
			pricePerItem = 44989,
		},
		{
			count = 5,
			price = 224945,
			pricePerItem = 44989,
		},
		{
			count = 5,
			price = 224945,
			pricePerItem = 44989,
		},
		{
			count = 10,
			price = 439900,
			pricePerItem = 43990,
		},
		{
			count = 10,
			price = 439900,
			pricePerItem = 43990,
		},
		{
			count = 10,
			price = 439900,
			pricePerItem = 43990,
		},
		{
			count = 10,
			price = 449700,
			pricePerItem = 44970,
		},
		{
			count = 10,
			price = 449700,
			pricePerItem = 44970,
		},
		{
			count = 9,
			price = 449775,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449800,
			pricePerItem = 44980,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 449900,
			pricePerItem = 44990,
		},
		{
			count = 10,
			price = 450000,
			pricePerItem = 45000,
		},
		{
			count = 10,
			price = 450000,
			pricePerItem = 45000,
		},
		{
			count = 10,
			price = 450000,
			pricePerItem = 45000,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
		{
			count = 10,
			price = 499750,
			pricePerItem = 49975,
		},
	},
	["Elixir of Wisdom"] = {
		{
			count = 5,
			price = 800,
			pricePerItem = 160,
		},
		{
			count = 5,
			price = 900,
			pricePerItem = 180,
		},
		{
			count = 5,
			price = 1000,
			pricePerItem = 200,
		},
		{
			count = 5,
			price = 1000,
			pricePerItem = 200,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 1,
			price = 400,
			pricePerItem = 400,
		},
		{
			count = 5,
			price = 995,
			pricePerItem = 199,
		},
		{
			count = 5,
			price = 995,
			pricePerItem = 199,
		},
		{
			count = 5,
			price = 1000,
			pricePerItem = 200,
		},
		{
			count = 5,
			price = 1000,
			pricePerItem = 200,
		},
		{
			count = 1,
			price = 4999,
			pricePerItem = 4999,
		},
		{
			count = 5,
			price = 24995,
			pricePerItem = 4999,
		},
		{
			count = 5,
			price = 27070,
			pricePerItem = 5414,
		},
		{
			count = 5,
			price = 27070,
			pricePerItem = 5414,
		},
		{
			count = 5,
			price = 27070,
			pricePerItem = 5414,
		},
		{
			count = 3,
			price = 2358,
			pricePerItem = 786,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 1,
			price = 784,
			pricePerItem = 784,
		},
		{
			count = 1,
			price = 785,
			pricePerItem = 785,
		},
		{
			count = 1,
			price = 785,
			pricePerItem = 785,
		},
		{
			count = 2,
			price = 1568,
			pricePerItem = 784,
		},
		{
			count = 2,
			price = 1568,
			pricePerItem = 784,
		},
		{
			count = 3,
			price = 2358,
			pricePerItem = 786,
		},
		{
			count = 5,
			price = 3915,
			pricePerItem = 783,
		},
		{
			count = 5,
			price = 3915,
			pricePerItem = 783,
		},
		{
			count = 5,
			price = 3915,
			pricePerItem = 783,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 5,
			price = 3950,
			pricePerItem = 790,
		},
		{
			count = 1,
			price = 396,
			pricePerItem = 396,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 3,
			price = 1200,
			pricePerItem = 400,
		},
		{
			count = 5,
			price = 1980,
			pricePerItem = 396,
		},
		{
			count = 5,
			price = 1980,
			pricePerItem = 396,
		},
		{
			count = 5,
			price = 1990,
			pricePerItem = 398,
		},
		{
			count = 5,
			price = 2100,
			pricePerItem = 420,
		},
		{
			count = 5,
			price = 2100,
			pricePerItem = 420,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 394,
			pricePerItem = 394,
		},
		{
			count = 1,
			price = 395,
			pricePerItem = 395,
		},
		{
			count = 1,
			price = 395,
			pricePerItem = 395,
		},
		{
			count = 1,
			price = 395,
			pricePerItem = 395,
		},
		{
			count = 1,
			price = 395,
			pricePerItem = 395,
		},
		{
			count = 1,
			price = 395,
			pricePerItem = 395,
		},
		{
			count = 1,
			price = 396,
			pricePerItem = 396,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 1,
			price = 496,
			pricePerItem = 496,
		},
		{
			count = 3,
			price = 1200,
			pricePerItem = 400,
		},
		{
			count = 5,
			price = 1980,
			pricePerItem = 396,
		},
		{
			count = 5,
			price = 1980,
			pricePerItem = 396,
		},
		{
			count = 5,
			price = 2100,
			pricePerItem = 420,
		},
		{
			count = 5,
			price = 2100,
			pricePerItem = 420,
		},
	},
	["Linen Cloth"] = {
		{
			count = 1,
			price = 16,
			pricePerItem = 16,
		},
		{
			count = 2,
			price = 26,
			pricePerItem = 13,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 1,
			price = 28,
			pricePerItem = 28,
		},
		{
			count = 4,
			price = 56,
			pricePerItem = 14,
		},
		{
			count = 2,
			price = 62,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 6,
			price = 90,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 260,
			pricePerItem = 13,
		},
		{
			count = 20,
			price = 260,
			pricePerItem = 13,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 13,
			price = 429,
			pricePerItem = 33,
		},
		{
			count = 19,
			price = 499,
			pricePerItem = 27,
		},
		{
			count = 20,
			price = 600,
			pricePerItem = 30,
		},
		{
			count = 10,
			price = 600,
			pricePerItem = 60,
		},
		{
			count = 20,
			price = 600,
			pricePerItem = 30,
		},
		{
			count = 20,
			price = 600,
			pricePerItem = 30,
		},
		{
			count = 20,
			price = 600,
			pricePerItem = 30,
		},
		{
			count = 20,
			price = 600,
			pricePerItem = 30,
		},
		{
			count = 10,
			price = 600,
			pricePerItem = 60,
		},
		{
			count = 20,
			price = 660,
			pricePerItem = 33,
		},
		{
			count = 20,
			price = 660,
			pricePerItem = 33,
		},
		{
			count = 20,
			price = 660,
			pricePerItem = 33,
		},
		{
			count = 19,
			price = 1000,
			pricePerItem = 53,
		},
		{
			count = 20,
			price = 1200,
			pricePerItem = 60,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 1,
			price = 66,
			pricePerItem = 66,
		},
		{
			count = 3,
			price = 138,
			pricePerItem = 46,
		},
		{
			count = 5,
			price = 180,
			pricePerItem = 36,
		},
		{
			count = 5,
			price = 225,
			pricePerItem = 45,
		},
		{
			count = 7,
			price = 259,
			pricePerItem = 37,
		},
		{
			count = 11,
			price = 385,
			pricePerItem = 35,
		},
		{
			count = 12,
			price = 456,
			pricePerItem = 38,
		},
		{
			count = 13,
			price = 572,
			pricePerItem = 44,
		},
		{
			count = 10,
			price = 600,
			pricePerItem = 60,
		},
		{
			count = 10,
			price = 600,
			pricePerItem = 60,
		},
		{
			count = 20,
			price = 760,
			pricePerItem = 38,
		},
		{
			count = 20,
			price = 800,
			pricePerItem = 40,
		},
		{
			count = 17,
			price = 867,
			pricePerItem = 51,
		},
		{
			count = 20,
			price = 950,
			pricePerItem = 48,
		},
		{
			count = 19,
			price = 988,
			pricePerItem = 52,
		},
		{
			count = 20,
			price = 1020,
			pricePerItem = 51,
		},
		{
			count = 20,
			price = 1320,
			pricePerItem = 66,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 9,
			price = 117,
			pricePerItem = 13,
		},
		{
			count = 8,
			price = 160,
			pricePerItem = 20,
		},
		{
			count = 6,
			price = 162,
			pricePerItem = 27,
		},
		{
			count = 10,
			price = 170,
			pricePerItem = 17,
		},
		{
			count = 7,
			price = 189,
			pricePerItem = 27,
		},
		{
			count = 15,
			price = 195,
			pricePerItem = 13,
		},
		{
			count = 14,
			price = 196,
			pricePerItem = 14,
		},
		{
			count = 10,
			price = 210,
			pricePerItem = 21,
		},
		{
			count = 10,
			price = 210,
			pricePerItem = 21,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 13,
			price = 299,
			pricePerItem = 23,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 15,
			price = 300,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 440,
			pricePerItem = 22,
		},
		{
			count = 20,
			price = 460,
			pricePerItem = 23,
		},
		{
			count = 20,
			price = 460,
			pricePerItem = 23,
		},
		{
			count = 3,
			price = 468,
			pricePerItem = 156,
		},
		{
			count = 20,
			price = 500,
			pricePerItem = 25,
		},
		{
			count = 20,
			price = 500,
			pricePerItem = 25,
		},
		{
			count = 20,
			price = 540,
			pricePerItem = 27,
		},
		{
			count = 20,
			price = 540,
			pricePerItem = 27,
		},
		{
			count = 20,
			price = 540,
			pricePerItem = 27,
		},
		{
			count = 20,
			price = 850,
			pricePerItem = 43,
		},
		{
			count = 20,
			price = 855,
			pricePerItem = 43,
		},
		{
			count = 20,
			price = 860,
			pricePerItem = 43,
		},
		{
			count = 20,
			price = 2800,
			pricePerItem = 140,
		},
		{
			count = 20,
			price = 2800,
			pricePerItem = 140,
		},
		{
			count = 20,
			price = 2800,
			pricePerItem = 140,
		},
		{
			count = 20,
			price = 2800,
			pricePerItem = 140,
		},
		{
			count = 1,
			price = 60,
			pricePerItem = 60,
		},
		{
			count = 1,
			price = 60,
			pricePerItem = 60,
		},
		{
			count = 1,
			price = 60,
			pricePerItem = 60,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 5,
			price = 69,
			pricePerItem = 14,
		},
		{
			count = 4,
			price = 100,
			pricePerItem = 25,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 8,
			price = 160,
			pricePerItem = 20,
		},
		{
			count = 10,
			price = 170,
			pricePerItem = 17,
		},
		{
			count = 13,
			price = 253,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 20,
			price = 280,
			pricePerItem = 14,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 20,
			price = 300,
			pricePerItem = 15,
		},
		{
			count = 15,
			price = 300,
			pricePerItem = 20,
		},
		{
			count = 5,
			price = 300,
			pricePerItem = 60,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 325,
			pricePerItem = 17,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 390,
			pricePerItem = 20,
		},
		{
			count = 20,
			price = 440,
			pricePerItem = 22,
		},
		{
			count = 20,
			price = 440,
			pricePerItem = 22,
		},
		{
			count = 20,
			price = 460,
			pricePerItem = 23,
		},
		{
			count = 20,
			price = 460,
			pricePerItem = 23,
		},
		{
			count = 3,
			price = 468,
			pricePerItem = 156,
		},
		{
			count = 20,
			price = 500,
			pricePerItem = 25,
		},
		{
			count = 20,
			price = 500,
			pricePerItem = 25,
		},
		{
			count = 10,
			price = 600,
			pricePerItem = 60,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 20,
			price = 6260,
			pricePerItem = 313,
		},
		{
			count = 2,
			price = 120,
			pricePerItem = 60,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 1,
			price = 204,
			pricePerItem = 204,
		},
		{
			count = 5,
			price = 495,
			pricePerItem = 99,
		},
		{
			count = 4,
			price = 500,
			pricePerItem = 125,
		},
		{
			count = 11,
			price = 517,
			pricePerItem = 47,
		},
		{
			count = 3,
			price = 573,
			pricePerItem = 191,
		},
		{
			count = 6,
			price = 600,
			pricePerItem = 100,
		},
		{
			count = 4,
			price = 888,
			pricePerItem = 222,
		},
		{
			count = 9,
			price = 891,
			pricePerItem = 99,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1880,
			pricePerItem = 94,
		},
		{
			count = 20,
			price = 1880,
			pricePerItem = 94,
		},
		{
			count = 20,
			price = 1900,
			pricePerItem = 95,
		},
		{
			count = 20,
			price = 1980,
			pricePerItem = 99,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 10,
			price = 2030,
			pricePerItem = 203,
		},
		{
			count = 18,
			price = 2200,
			pricePerItem = 123,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 2900,
			pricePerItem = 145,
		},
		{
			count = 20,
			price = 3400,
			pricePerItem = 170,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 1,
			price = 54,
			pricePerItem = 54,
		},
		{
			count = 1,
			price = 54,
			pricePerItem = 54,
		},
		{
			count = 1,
			price = 54,
			pricePerItem = 54,
		},
		{
			count = 3,
			price = 156,
			pricePerItem = 52,
		},
		{
			count = 4,
			price = 204,
			pricePerItem = 51,
		},
		{
			count = 5,
			price = 495,
			pricePerItem = 99,
		},
		{
			count = 3,
			price = 501,
			pricePerItem = 167,
		},
		{
			count = 10,
			price = 530,
			pricePerItem = 53,
		},
		{
			count = 9,
			price = 891,
			pricePerItem = 99,
		},
		{
			count = 20,
			price = 1440,
			pricePerItem = 72,
		},
		{
			count = 20,
			price = 1440,
			pricePerItem = 72,
		},
		{
			count = 20,
			price = 1440,
			pricePerItem = 72,
		},
		{
			count = 20,
			price = 1440,
			pricePerItem = 72,
		},
		{
			count = 20,
			price = 1440,
			pricePerItem = 72,
		},
		{
			count = 20,
			price = 1460,
			pricePerItem = 73,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1480,
			pricePerItem = 74,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 20,
			price = 1500,
			pricePerItem = 75,
		},
		{
			count = 15,
			price = 1500,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 1555,
			pricePerItem = 78,
		},
		{
			count = 20,
			price = 1860,
			pricePerItem = 93,
		},
		{
			count = 20,
			price = 1880,
			pricePerItem = 94,
		},
		{
			count = 20,
			price = 1880,
			pricePerItem = 94,
		},
		{
			count = 20,
			price = 1980,
			pricePerItem = 99,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 2000,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 3400,
			pricePerItem = 170,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 100156,
			pricePerItem = 5008,
		},
		{
			count = 1,
			price = 17,
			pricePerItem = 17,
		},
		{
			count = 1,
			price = 17,
			pricePerItem = 17,
		},
		{
			count = 1,
			price = 17,
			pricePerItem = 17,
		},
		{
			count = 1,
			price = 17,
			pricePerItem = 17,
		},
		{
			count = 1,
			price = 17,
			pricePerItem = 17,
		},
		{
			count = 1,
			price = 20,
			pricePerItem = 20,
		},
		{
			count = 1,
			price = 20,
			pricePerItem = 20,
		},
		{
			count = 1,
			price = 20,
			pricePerItem = 20,
		},
		{
			count = 1,
			price = 20,
			pricePerItem = 20,
		},
		{
			count = 1,
			price = 20,
			pricePerItem = 20,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 25,
			pricePerItem = 25,
		},
		{
			count = 1,
			price = 26,
			pricePerItem = 26,
		},
		{
			count = 1,
			price = 27,
			pricePerItem = 27,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 31,
			pricePerItem = 31,
		},
		{
			count = 1,
			price = 33,
			pricePerItem = 33,
		},
		{
			count = 1,
			price = 33,
			pricePerItem = 33,
		},
		{
			count = 1,
			price = 33,
			pricePerItem = 33,
		},
		{
			count = 1,
			price = 33,
			pricePerItem = 33,
		},
		{
			count = 1,
			price = 33,
			pricePerItem = 33,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 38,
			pricePerItem = 38,
		},
		{
			count = 1,
			price = 38,
			pricePerItem = 38,
		},
		{
			count = 1,
			price = 38,
			pricePerItem = 38,
		},
		{
			count = 1,
			price = 38,
			pricePerItem = 38,
		},
		{
			count = 1,
			price = 38,
			pricePerItem = 38,
		},
		{
			count = 2,
			price = 44,
			pricePerItem = 22,
		},
		{
			count = 2,
			price = 70,
			pricePerItem = 35,
		},
		{
			count = 3,
			price = 72,
			pricePerItem = 24,
		},
		{
			count = 2,
			price = 80,
			pricePerItem = 40,
		},
		{
			count = 3,
			price = 87,
			pricePerItem = 29,
		},
		{
			count = 5,
			price = 95,
			pricePerItem = 19,
		},
		{
			count = 3,
			price = 96,
			pricePerItem = 32,
		},
		{
			count = 6,
			price = 138,
			pricePerItem = 23,
		},
		{
			count = 13,
			price = 208,
			pricePerItem = 16,
		},
		{
			count = 7,
			price = 210,
			pricePerItem = 30,
		},
		{
			count = 6,
			price = 216,
			pricePerItem = 36,
		},
		{
			count = 20,
			price = 320,
			pricePerItem = 16,
		},
		{
			count = 20,
			price = 320,
			pricePerItem = 16,
		},
		{
			count = 10,
			price = 340,
			pricePerItem = 34,
		},
		{
			count = 20,
			price = 440,
			pricePerItem = 22,
		},
		{
			count = 20,
			price = 480,
			pricePerItem = 24,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 520,
			pricePerItem = 26,
		},
		{
			count = 20,
			price = 540,
			pricePerItem = 27,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 20,
			price = 560,
			pricePerItem = 28,
		},
		{
			count = 6,
			price = 600,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 700,
			pricePerItem = 35,
		},
		{
			count = 20,
			price = 700,
			pricePerItem = 35,
		},
		{
			count = 20,
			price = 2500,
			pricePerItem = 125,
		},
		{
			count = 20,
			price = 2500,
			pricePerItem = 125,
		},
		{
			count = 20,
			price = 2500,
			pricePerItem = 125,
		},
		{
			count = 20,
			price = 3000,
			pricePerItem = 150,
		},
		{
			count = 20,
			price = 3500,
			pricePerItem = 175,
		},
		{
			count = 20,
			price = 3500,
			pricePerItem = 175,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 10,
			price = 14000,
			pricePerItem = 1400,
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
			count = 1,
			price = 29,
			pricePerItem = 29,
		},
		{
			count = 1,
			price = 30,
			pricePerItem = 30,
		},
		{
			count = 1,
			price = 36,
			pricePerItem = 36,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 1,
			price = 37,
			pricePerItem = 37,
		},
		{
			count = 2,
			price = 68,
			pricePerItem = 34,
		},
		{
			count = 2,
			price = 80,
			pricePerItem = 40,
		},
		{
			count = 3,
			price = 93,
			pricePerItem = 31,
		},
		{
			count = 3,
			price = 99,
			pricePerItem = 33,
		},
		{
			count = 5,
			price = 175,
			pricePerItem = 35,
		},
		{
			count = 6,
			price = 192,
			pricePerItem = 32,
		},
		{
			count = 6,
			price = 600,
			pricePerItem = 100,
		},
		{
			count = 20,
			price = 640,
			pricePerItem = 32,
		},
		{
			count = 20,
			price = 640,
			pricePerItem = 32,
		},
		{
			count = 20,
			price = 640,
			pricePerItem = 32,
		},
		{
			count = 20,
			price = 660,
			pricePerItem = 33,
		},
		{
			count = 20,
			price = 660,
			pricePerItem = 33,
		},
		{
			count = 20,
			price = 680,
			pricePerItem = 34,
		},
		{
			count = 16,
			price = 2384,
			pricePerItem = 149,
		},
		{
			count = 20,
			price = 2980,
			pricePerItem = 149,
		},
		{
			count = 20,
			price = 2980,
			pricePerItem = 149,
		},
		{
			count = 20,
			price = 3000,
			pricePerItem = 150,
		},
		{
			count = 20,
			price = 3500,
			pricePerItem = 175,
		},
		{
			count = 20,
			price = 3500,
			pricePerItem = 175,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 10,
			price = 14000,
			pricePerItem = 1400,
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
	},
	["Mageweave Cloth"] = {
		{
			count = 1,
			price = 536,
			pricePerItem = 536,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 538,
			pricePerItem = 538,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 1,
			price = 542,
			pricePerItem = 542,
		},
		{
			count = 2,
			price = 1082,
			pricePerItem = 541,
		},
		{
			count = 3,
			price = 1611,
			pricePerItem = 537,
		},
		{
			count = 4,
			price = 2184,
			pricePerItem = 546,
		},
		{
			count = 4,
			price = 2200,
			pricePerItem = 550,
		},
		{
			count = 6,
			price = 3264,
			pricePerItem = 544,
		},
		{
			count = 5,
			price = 3333,
			pricePerItem = 667,
		},
		{
			count = 8,
			price = 4384,
			pricePerItem = 548,
		},
		{
			count = 10,
			price = 5390,
			pricePerItem = 539,
		},
		{
			count = 10,
			price = 5430,
			pricePerItem = 543,
		},
		{
			count = 11,
			price = 5797,
			pricePerItem = 527,
		},
		{
			count = 11,
			price = 5800,
			pricePerItem = 528,
		},
		{
			count = 17,
			price = 10100,
			pricePerItem = 595,
		},
		{
			count = 20,
			price = 10700,
			pricePerItem = 535,
		},
		{
			count = 20,
			price = 10700,
			pricePerItem = 535,
		},
		{
			count = 20,
			price = 10700,
			pricePerItem = 535,
		},
		{
			count = 20,
			price = 10900,
			pricePerItem = 545,
		},
		{
			count = 20,
			price = 10900,
			pricePerItem = 545,
		},
		{
			count = 20,
			price = 10980,
			pricePerItem = 549,
		},
		{
			count = 20,
			price = 10980,
			pricePerItem = 549,
		},
		{
			count = 1,
			price = 648,
			pricePerItem = 648,
		},
		{
			count = 1,
			price = 650,
			pricePerItem = 650,
		},
		{
			count = 1,
			price = 650,
			pricePerItem = 650,
		},
		{
			count = 1,
			price = 650,
			pricePerItem = 650,
		},
		{
			count = 1,
			price = 650,
			pricePerItem = 650,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 777,
			pricePerItem = 777,
		},
		{
			count = 1,
			price = 779,
			pricePerItem = 779,
		},
		{
			count = 1,
			price = 779,
			pricePerItem = 779,
		},
		{
			count = 1,
			price = 779,
			pricePerItem = 779,
		},
		{
			count = 1,
			price = 779,
			pricePerItem = 779,
		},
		{
			count = 1,
			price = 779,
			pricePerItem = 779,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 3,
			price = 1896,
			pricePerItem = 632,
		},
		{
			count = 4,
			price = 2569,
			pricePerItem = 643,
		},
		{
			count = 5,
			price = 3180,
			pricePerItem = 636,
		},
		{
			count = 3,
			price = 3294,
			pricePerItem = 1098,
		},
		{
			count = 6,
			price = 3876,
			pricePerItem = 646,
		},
		{
			count = 5,
			price = 3880,
			pricePerItem = 776,
		},
		{
			count = 8,
			price = 5128,
			pricePerItem = 641,
		},
		{
			count = 10,
			price = 6490,
			pricePerItem = 649,
		},
		{
			count = 11,
			price = 7029,
			pricePerItem = 639,
		},
		{
			count = 14,
			price = 8960,
			pricePerItem = 640,
		},
		{
			count = 14,
			price = 9044,
			pricePerItem = 646,
		},
		{
			count = 18,
			price = 11430,
			pricePerItem = 635,
		},
		{
			count = 20,
			price = 12620,
			pricePerItem = 631,
		},
		{
			count = 20,
			price = 12620,
			pricePerItem = 631,
		},
		{
			count = 20,
			price = 12640,
			pricePerItem = 632,
		},
		{
			count = 20,
			price = 12700,
			pricePerItem = 635,
		},
		{
			count = 20,
			price = 12700,
			pricePerItem = 635,
		},
		{
			count = 20,
			price = 12700,
			pricePerItem = 635,
		},
		{
			count = 20,
			price = 12939,
			pricePerItem = 647,
		},
		{
			count = 20,
			price = 12939,
			pricePerItem = 647,
		},
		{
			count = 20,
			price = 12980,
			pricePerItem = 649,
		},
		{
			count = 20,
			price = 12980,
			pricePerItem = 649,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 20,
			price = 15500,
			pricePerItem = 775,
		},
		{
			count = 1,
			price = 749,
			pricePerItem = 749,
		},
		{
			count = 2,
			price = 1482,
			pricePerItem = 741,
		},
		{
			count = 3,
			price = 2229,
			pricePerItem = 743,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 6,
			price = 4476,
			pricePerItem = 746,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 17,
			price = 12699,
			pricePerItem = 747,
		},
		{
			count = 18,
			price = 13428,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14840,
			pricePerItem = 742,
		},
		{
			count = 20,
			price = 14840,
			pricePerItem = 742,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 1,
			price = 749,
			pricePerItem = 749,
		},
		{
			count = 2,
			price = 1482,
			pricePerItem = 741,
		},
		{
			count = 3,
			price = 2217,
			pricePerItem = 739,
		},
		{
			count = 3,
			price = 2217,
			pricePerItem = 739,
		},
		{
			count = 3,
			price = 2217,
			pricePerItem = 739,
		},
		{
			count = 3,
			price = 2229,
			pricePerItem = 743,
		},
		{
			count = 4,
			price = 2948,
			pricePerItem = 737,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 5,
			price = 3690,
			pricePerItem = 738,
		},
		{
			count = 4,
			price = 3952,
			pricePerItem = 988,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 5,
			price = 4475,
			pricePerItem = 895,
		},
		{
			count = 6,
			price = 4476,
			pricePerItem = 746,
		},
		{
			count = 10,
			price = 7480,
			pricePerItem = 748,
		},
		{
			count = 11,
			price = 8096,
			pricePerItem = 736,
		},
		{
			count = 17,
			price = 12699,
			pricePerItem = 747,
		},
		{
			count = 18,
			price = 13428,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 13980,
			pricePerItem = 699,
		},
		{
			count = 20,
			price = 13980,
			pricePerItem = 699,
		},
		{
			count = 20,
			price = 13980,
			pricePerItem = 699,
		},
		{
			count = 20,
			price = 14000,
			pricePerItem = 700,
		},
		{
			count = 20,
			price = 14000,
			pricePerItem = 700,
		},
		{
			count = 20,
			price = 14000,
			pricePerItem = 700,
		},
		{
			count = 20,
			price = 14000,
			pricePerItem = 700,
		},
		{
			count = 20,
			price = 14720,
			pricePerItem = 736,
		},
		{
			count = 20,
			price = 14720,
			pricePerItem = 736,
		},
		{
			count = 20,
			price = 14720,
			pricePerItem = 736,
		},
		{
			count = 20,
			price = 14720,
			pricePerItem = 736,
		},
		{
			count = 20,
			price = 14720,
			pricePerItem = 736,
		},
		{
			count = 20,
			price = 14780,
			pricePerItem = 739,
		},
		{
			count = 20,
			price = 14800,
			pricePerItem = 740,
		},
		{
			count = 20,
			price = 14800,
			pricePerItem = 740,
		},
		{
			count = 20,
			price = 14800,
			pricePerItem = 740,
		},
		{
			count = 20,
			price = 14840,
			pricePerItem = 742,
		},
		{
			count = 20,
			price = 14840,
			pricePerItem = 742,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 20,
			price = 14920,
			pricePerItem = 746,
		},
		{
			count = 1,
			price = 792,
			pricePerItem = 792,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 933,
			pricePerItem = 933,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 975,
			pricePerItem = 975,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 977,
			pricePerItem = 977,
		},
		{
			count = 1,
			price = 980,
			pricePerItem = 980,
		},
		{
			count = 2,
			price = 1600,
			pricePerItem = 800,
		},
		{
			count = 3,
			price = 2394,
			pricePerItem = 798,
		},
		{
			count = 4,
			price = 3904,
			pricePerItem = 976,
		},
		{
			count = 9,
			price = 7146,
			pricePerItem = 794,
		},
		{
			count = 9,
			price = 7800,
			pricePerItem = 867,
		},
		{
			count = 10,
			price = 7950,
			pricePerItem = 795,
		},
		{
			count = 14,
			price = 11648,
			pricePerItem = 832,
		},
		{
			count = 14,
			price = 11662,
			pricePerItem = 833,
		},
		{
			count = 15,
			price = 11895,
			pricePerItem = 793,
		},
		{
			count = 16,
			price = 13296,
			pricePerItem = 831,
		},
		{
			count = 19,
			price = 15181,
			pricePerItem = 799,
		},
		{
			count = 17,
			price = 16031,
			pricePerItem = 943,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 16760,
			pricePerItem = 838,
		},
		{
			count = 20,
			price = 18800,
			pricePerItem = 940,
		},
		{
			count = 1,
			price = 4172,
			pricePerItem = 4172,
		},
		{
			count = 1,
			price = 4172,
			pricePerItem = 4172,
		},
		{
			count = 1,
			price = 4172,
			pricePerItem = 4172,
		},
		{
			count = 1,
			price = 4180,
			pricePerItem = 4180,
		},
		{
			count = 1,
			price = 4182,
			pricePerItem = 4182,
		},
		{
			count = 1,
			price = 4189,
			pricePerItem = 4189,
		},
		{
			count = 2,
			price = 8358,
			pricePerItem = 4179,
		},
		{
			count = 4,
			price = 16696,
			pricePerItem = 4174,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20875,
			pricePerItem = 4175,
		},
		{
			count = 5,
			price = 20905,
			pricePerItem = 4181,
		},
		{
			count = 7,
			price = 29239,
			pricePerItem = 4177,
		},
		{
			count = 7,
			price = 30000,
			pricePerItem = 4286,
		},
		{
			count = 9,
			price = 37602,
			pricePerItem = 4178,
		},
		{
			count = 10,
			price = 41730,
			pricePerItem = 4173,
		},
		{
			count = 10,
			price = 41750,
			pricePerItem = 4175,
		},
		{
			count = 10,
			price = 41750,
			pricePerItem = 4175,
		},
		{
			count = 10,
			price = 41750,
			pricePerItem = 4175,
		},
		{
			count = 12,
			price = 50112,
			pricePerItem = 4176,
		},
		{
			count = 20,
			price = 83460,
			pricePerItem = 4173,
		},
		{
			count = 20,
			price = 83460,
			pricePerItem = 4173,
		},
		{
			count = 20,
			price = 83460,
			pricePerItem = 4173,
		},
		{
			count = 20,
			price = 83460,
			pricePerItem = 4173,
		},
		{
			count = 20,
			price = 83460,
			pricePerItem = 4173,
		},
		{
			count = 20,
			price = 83560,
			pricePerItem = 4178,
		},
		{
			count = 20,
			price = 83860,
			pricePerItem = 4193,
		},
		{
			count = 1,
			price = 886,
			pricePerItem = 886,
		},
		{
			count = 1,
			price = 886,
			pricePerItem = 886,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 891,
			pricePerItem = 891,
		},
		{
			count = 1,
			price = 893,
			pricePerItem = 893,
		},
		{
			count = 2,
			price = 1934,
			pricePerItem = 967,
		},
		{
			count = 3,
			price = 2688,
			pricePerItem = 896,
		},
		{
			count = 3,
			price = 2922,
			pricePerItem = 974,
		},
		{
			count = 6,
			price = 5394,
			pricePerItem = 899,
		},
		{
			count = 8,
			price = 7096,
			pricePerItem = 887,
		},
		{
			count = 8,
			price = 7104,
			pricePerItem = 888,
		},
		{
			count = 10,
			price = 8970,
			pricePerItem = 897,
		},
		{
			count = 7,
			price = 9051,
			pricePerItem = 1293,
		},
		{
			count = 11,
			price = 9812,
			pricePerItem = 892,
		},
		{
			count = 7,
			price = 10883,
			pricePerItem = 1555,
		},
		{
			count = 13,
			price = 11622,
			pricePerItem = 894,
		},
		{
			count = 15,
			price = 14520,
			pricePerItem = 968,
		},
		{
			count = 18,
			price = 15930,
			pricePerItem = 885,
		},
		{
			count = 19,
			price = 17005,
			pricePerItem = 895,
		},
		{
			count = 15,
			price = 17430,
			pricePerItem = 1162,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17780,
			pricePerItem = 889,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17880,
			pricePerItem = 894,
		},
		{
			count = 20,
			price = 17880,
			pricePerItem = 894,
		},
		{
			count = 20,
			price = 17880,
			pricePerItem = 894,
		},
		{
			count = 20,
			price = 17880,
			pricePerItem = 894,
		},
		{
			count = 20,
			price = 17900,
			pricePerItem = 895,
		},
		{
			count = 20,
			price = 17940,
			pricePerItem = 897,
		},
		{
			count = 20,
			price = 17940,
			pricePerItem = 897,
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
			price = 18000,
			pricePerItem = 900,
		},
		{
			count = 20,
			price = 18000,
			pricePerItem = 900,
		},
		{
			count = 20,
			price = 18000,
			pricePerItem = 900,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
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
			count = 12,
			price = 20232,
			pricePerItem = 1686,
		},
		{
			count = 13,
			price = 21918,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 25860,
			pricePerItem = 1293,
		},
		{
			count = 3,
			price = 28500,
			pricePerItem = 9500,
		},
		{
			count = 3,
			price = 28500,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 31840,
			pricePerItem = 1592,
		},
		{
			count = 20,
			price = 31840,
			pricePerItem = 1592,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 4,
			price = 38000,
			pricePerItem = 9500,
		},
		{
			count = 4,
			price = 38000,
			pricePerItem = 9500,
		},
		{
			count = 5,
			price = 47500,
			pricePerItem = 9500,
		},
		{
			count = 5,
			price = 47500,
			pricePerItem = 9500,
		},
		{
			count = 14,
			price = 50890,
			pricePerItem = 3635,
		},
		{
			count = 6,
			price = 57000,
			pricePerItem = 9500,
		},
		{
			count = 7,
			price = 66500,
			pricePerItem = 9500,
		},
		{
			count = 8,
			price = 76000,
			pricePerItem = 9500,
		},
		{
			count = 9,
			price = 85500,
			pricePerItem = 9500,
		},
		{
			count = 10,
			price = 95000,
			pricePerItem = 9500,
		},
		{
			count = 9,
			price = 98064,
			pricePerItem = 10896,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
		{
			count = 1,
			price = 1630,
			pricePerItem = 1630,
		},
		{
			count = 2,
			price = 3296,
			pricePerItem = 1648,
		},
		{
			count = 4,
			price = 6588,
			pricePerItem = 1647,
		},
		{
			count = 4,
			price = 6596,
			pricePerItem = 1649,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
		},
		{
			count = 2,
			price = 19000,
			pricePerItem = 9500,
		},
		{
			count = 12,
			price = 20232,
			pricePerItem = 1686,
		},
		{
			count = 13,
			price = 21918,
			pricePerItem = 1686,
		},
		{
			count = 15,
			price = 24420,
			pricePerItem = 1628,
		},
		{
			count = 15,
			price = 25275,
			pricePerItem = 1685,
		},
		{
			count = 16,
			price = 26064,
			pricePerItem = 1629,
		},
		{
			count = 17,
			price = 27700,
			pricePerItem = 1630,
		},
		{
			count = 3,
			price = 28500,
			pricePerItem = 9500,
		},
		{
			count = 3,
			price = 28500,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 32540,
			pricePerItem = 1627,
		},
		{
			count = 20,
			price = 32540,
			pricePerItem = 1627,
		},
		{
			count = 20,
			price = 33000,
			pricePerItem = 1650,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 20,
			price = 33720,
			pricePerItem = 1686,
		},
		{
			count = 4,
			price = 38000,
			pricePerItem = 9500,
		},
		{
			count = 4,
			price = 38000,
			pricePerItem = 9500,
		},
		{
			count = 5,
			price = 47500,
			pricePerItem = 9500,
		},
		{
			count = 5,
			price = 47500,
			pricePerItem = 9500,
		},
		{
			count = 14,
			price = 50890,
			pricePerItem = 3635,
		},
		{
			count = 6,
			price = 57000,
			pricePerItem = 9500,
		},
		{
			count = 7,
			price = 66500,
			pricePerItem = 9500,
		},
		{
			count = 8,
			price = 76000,
			pricePerItem = 9500,
		},
		{
			count = 9,
			price = 85500,
			pricePerItem = 9500,
		},
		{
			count = 10,
			price = 94490,
			pricePerItem = 9449,
		},
		{
			count = 10,
			price = 95000,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 188980,
			pricePerItem = 9449,
		},
		{
			count = 20,
			price = 188980,
			pricePerItem = 9449,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 189000,
			pricePerItem = 9450,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
		{
			count = 20,
			price = 190000,
			pricePerItem = 9500,
		},
	},
	["Runecloth"] = {
		{
			count = 2,
			price = 1932,
			pricePerItem = 966,
		},
		{
			count = 3,
			price = 3000,
			pricePerItem = 1000,
		},
		{
			count = 4,
			price = 3856,
			pricePerItem = 964,
		},
		{
			count = 6,
			price = 5760,
			pricePerItem = 960,
		},
		{
			count = 7,
			price = 6769,
			pricePerItem = 967,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 10,
			price = 9730,
			pricePerItem = 973,
		},
		{
			count = 14,
			price = 13636,
			pricePerItem = 974,
		},
		{
			count = 20,
			price = 19180,
			pricePerItem = 959,
		},
		{
			count = 20,
			price = 19180,
			pricePerItem = 959,
		},
		{
			count = 20,
			price = 19220,
			pricePerItem = 961,
		},
		{
			count = 20,
			price = 19240,
			pricePerItem = 962,
		},
		{
			count = 20,
			price = 19240,
			pricePerItem = 962,
		},
		{
			count = 20,
			price = 19260,
			pricePerItem = 963,
		},
		{
			count = 20,
			price = 19280,
			pricePerItem = 964,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
		},
		{
			count = 20,
			price = 19300,
			pricePerItem = 965,
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
			price = 19380,
			pricePerItem = 969,
		},
		{
			count = 20,
			price = 19380,
			pricePerItem = 969,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19420,
			pricePerItem = 971,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19440,
			pricePerItem = 972,
		},
		{
			count = 20,
			price = 19480,
			pricePerItem = 974,
		},
		{
			count = 20,
			price = 19500,
			pricePerItem = 975,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19980,
			pricePerItem = 999,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 21900,
			pricePerItem = 1095,
		},
		{
			count = 15,
			price = 26370,
			pricePerItem = 1758,
		},
		{
			count = 20,
			price = 35160,
			pricePerItem = 1758,
		},
		{
			count = 20,
			price = 35160,
			pricePerItem = 1758,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 1,
			price = 899,
			pricePerItem = 899,
		},
		{
			count = 3,
			price = 2682,
			pricePerItem = 894,
		},
		{
			count = 5,
			price = 4480,
			pricePerItem = 896,
		},
		{
			count = 6,
			price = 5760,
			pricePerItem = 960,
		},
		{
			count = 7,
			price = 6447,
			pricePerItem = 921,
		},
		{
			count = 7,
			price = 6769,
			pricePerItem = 967,
		},
		{
			count = 9,
			price = 8316,
			pricePerItem = 924,
		},
		{
			count = 14,
			price = 12488,
			pricePerItem = 892,
		},
		{
			count = 17,
			price = 15215,
			pricePerItem = 895,
		},
		{
			count = 19,
			price = 16967,
			pricePerItem = 893,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17800,
			pricePerItem = 890,
		},
		{
			count = 20,
			price = 17820,
			pricePerItem = 891,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 18500,
			pricePerItem = 925,
		},
		{
			count = 20,
			price = 19080,
			pricePerItem = 954,
		},
		{
			count = 20,
			price = 19100,
			pricePerItem = 955,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19160,
			pricePerItem = 958,
		},
		{
			count = 20,
			price = 19180,
			pricePerItem = 959,
		},
		{
			count = 20,
			price = 19180,
			pricePerItem = 959,
		},
		{
			count = 20,
			price = 19220,
			pricePerItem = 961,
		},
		{
			count = 20,
			price = 19240,
			pricePerItem = 962,
		},
		{
			count = 20,
			price = 19240,
			pricePerItem = 962,
		},
		{
			count = 20,
			price = 19260,
			pricePerItem = 963,
		},
		{
			count = 20,
			price = 19280,
			pricePerItem = 964,
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
			price = 19500,
			pricePerItem = 975,
		},
		{
			count = 20,
			price = 19980,
			pricePerItem = 999,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 19999,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 21900,
			pricePerItem = 1095,
		},
		{
			count = 15,
			price = 26370,
			pricePerItem = 1758,
		},
		{
			count = 20,
			price = 35160,
			pricePerItem = 1758,
		},
		{
			count = 20,
			price = 35160,
			pricePerItem = 1758,
		},
		{
			count = 1,
			price = 1590,
			pricePerItem = 1590,
		},
		{
			count = 3,
			price = 4767,
			pricePerItem = 1589,
		},
		{
			count = 7,
			price = 11109,
			pricePerItem = 1587,
		},
		{
			count = 8,
			price = 12712,
			pricePerItem = 1589,
		},
		{
			count = 8,
			price = 12728,
			pricePerItem = 1591,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 12,
			price = 19056,
			pricePerItem = 1588,
		},
		{
			count = 14,
			price = 22246,
			pricePerItem = 1589,
		},
		{
			count = 16,
			price = 25456,
			pricePerItem = 1591,
		},
		{
			count = 17,
			price = 25500,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 29899,
			pricePerItem = 1495,
		},
		{
			count = 20,
			price = 29899,
			pricePerItem = 1495,
		},
		{
			count = 20,
			price = 29900,
			pricePerItem = 1495,
		},
		{
			count = 20,
			price = 29900,
			pricePerItem = 1495,
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
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31840,
			pricePerItem = 1592,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 34480,
			pricePerItem = 1724,
		},
		{
			count = 20,
			price = 34480,
			pricePerItem = 1724,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 8,
			price = 12728,
			pricePerItem = 1591,
		},
		{
			count = 10,
			price = 15880,
			pricePerItem = 1588,
		},
		{
			count = 10,
			price = 15910,
			pricePerItem = 1591,
		},
		{
			count = 12,
			price = 20000,
			pricePerItem = 1667,
		},
		{
			count = 16,
			price = 25456,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31760,
			pricePerItem = 1588,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31780,
			pricePerItem = 1589,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31800,
			pricePerItem = 1590,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31820,
			pricePerItem = 1591,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 31940,
			pricePerItem = 1597,
		},
		{
			count = 20,
			price = 34480,
			pricePerItem = 1724,
		},
		{
			count = 20,
			price = 34480,
			pricePerItem = 1724,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 20,
			price = 67940,
			pricePerItem = 3397,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 1874,
			pricePerItem = 1874,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 2,
			price = 3742,
			pricePerItem = 1871,
		},
		{
			count = 2,
			price = 3748,
			pricePerItem = 1874,
		},
		{
			count = 2,
			price = 3748,
			pricePerItem = 1874,
		},
		{
			count = 2,
			price = 3748,
			pricePerItem = 1874,
		},
		{
			count = 2,
			price = 3748,
			pricePerItem = 1874,
		},
		{
			count = 2,
			price = 3800,
			pricePerItem = 1900,
		},
		{
			count = 2,
			price = 3966,
			pricePerItem = 1983,
		},
		{
			count = 1,
			price = 3998,
			pricePerItem = 3998,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 1,
			price = 4444,
			pricePerItem = 4444,
		},
		{
			count = 3,
			price = 5607,
			pricePerItem = 1869,
		},
		{
			count = 3,
			price = 5634,
			pricePerItem = 1878,
		},
		{
			count = 3,
			price = 5973,
			pricePerItem = 1991,
		},
		{
			count = 3,
			price = 5985,
			pricePerItem = 1995,
		},
		{
			count = 4,
			price = 7496,
			pricePerItem = 1874,
		},
		{
			count = 4,
			price = 7496,
			pricePerItem = 1874,
		},
		{
			count = 4,
			price = 7496,
			pricePerItem = 1874,
		},
		{
			count = 5,
			price = 9380,
			pricePerItem = 1876,
		},
		{
			count = 5,
			price = 9410,
			pricePerItem = 1882,
		},
		{
			count = 5,
			price = 9415,
			pricePerItem = 1883,
		},
		{
			count = 5,
			price = 9925,
			pricePerItem = 1985,
		},
		{
			count = 6,
			price = 11196,
			pricePerItem = 1866,
		},
		{
			count = 6,
			price = 11958,
			pricePerItem = 1993,
		},
		{
			count = 7,
			price = 13118,
			pricePerItem = 1874,
		},
		{
			count = 5,
			price = 14695,
			pricePerItem = 2939,
		},
		{
			count = 8,
			price = 14992,
			pricePerItem = 1874,
		},
		{
			count = 8,
			price = 15032,
			pricePerItem = 1879,
		},
		{
			count = 8,
			price = 15952,
			pricePerItem = 1994,
		},
		{
			count = 8,
			price = 16000,
			pricePerItem = 2000,
		},
		{
			count = 9,
			price = 16857,
			pricePerItem = 1873,
		},
		{
			count = 6,
			price = 17616,
			pricePerItem = 2936,
		},
		{
			count = 10,
			price = 18680,
			pricePerItem = 1868,
		},
		{
			count = 10,
			price = 19920,
			pricePerItem = 1992,
		},
		{
			count = 5,
			price = 19935,
			pricePerItem = 3987,
		},
		{
			count = 10,
			price = 19960,
			pricePerItem = 1996,
		},
		{
			count = 10,
			price = 19990,
			pricePerItem = 1999,
		},
		{
			count = 11,
			price = 21868,
			pricePerItem = 1988,
		},
		{
			count = 13,
			price = 25870,
			pricePerItem = 1990,
		},
		{
			count = 13,
			price = 25961,
			pricePerItem = 1997,
		},
		{
			count = 9,
			price = 26487,
			pricePerItem = 2943,
		},
		{
			count = 7,
			price = 27916,
			pricePerItem = 3988,
		},
		{
			count = 15,
			price = 28005,
			pricePerItem = 1867,
		},
		{
			count = 10,
			price = 29380,
			pricePerItem = 2938,
		},
		{
			count = 16,
			price = 30144,
			pricePerItem = 1884,
		},
		{
			count = 17,
			price = 31875,
			pricePerItem = 1875,
		},
		{
			count = 20,
			price = 37340,
			pricePerItem = 1867,
		},
		{
			count = 20,
			price = 37340,
			pricePerItem = 1867,
		},
		{
			count = 20,
			price = 37340,
			pricePerItem = 1867,
		},
		{
			count = 20,
			price = 37340,
			pricePerItem = 1867,
		},
		{
			count = 20,
			price = 37340,
			pricePerItem = 1867,
		},
		{
			count = 20,
			price = 37700,
			pricePerItem = 1885,
		},
		{
			count = 20,
			price = 37700,
			pricePerItem = 1885,
		},
		{
			count = 20,
			price = 39640,
			pricePerItem = 1982,
		},
		{
			count = 20,
			price = 39640,
			pricePerItem = 1982,
		},
		{
			count = 20,
			price = 39640,
			pricePerItem = 1982,
		},
		{
			count = 20,
			price = 39640,
			pricePerItem = 1982,
		},
		{
			count = 20,
			price = 39659,
			pricePerItem = 1983,
		},
		{
			count = 20,
			price = 39659,
			pricePerItem = 1983,
		},
		{
			count = 20,
			price = 39660,
			pricePerItem = 1983,
		},
		{
			count = 20,
			price = 39660,
			pricePerItem = 1983,
		},
		{
			count = 20,
			price = 39700,
			pricePerItem = 1985,
		},
		{
			count = 20,
			price = 39700,
			pricePerItem = 1985,
		},
		{
			count = 20,
			price = 39840,
			pricePerItem = 1992,
		},
		{
			count = 20,
			price = 39840,
			pricePerItem = 1992,
		},
		{
			count = 20,
			price = 39880,
			pricePerItem = 1994,
		},
		{
			count = 20,
			price = 39880,
			pricePerItem = 1994,
		},
		{
			count = 20,
			price = 39880,
			pricePerItem = 1994,
		},
		{
			count = 20,
			price = 39880,
			pricePerItem = 1994,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 20,
			price = 39980,
			pricePerItem = 1999,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58700,
			pricePerItem = 2935,
		},
		{
			count = 20,
			price = 58780,
			pricePerItem = 2939,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58800,
			pricePerItem = 2940,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 19,
			price = 127777,
			pricePerItem = 6726,
		},
		{
			count = 20,
			price = 149999,
			pricePerItem = 7500,
		},
		{
			count = 20,
			price = 149999,
			pricePerItem = 7500,
		},
		{
			count = 1,
			price = 2359,
			pricePerItem = 2359,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2933,
			pricePerItem = 2933,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 2946,
			pricePerItem = 2946,
		},
		{
			count = 1,
			price = 3998,
			pricePerItem = 3998,
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
			count = 5,
			price = 14695,
			pricePerItem = 2939,
		},
		{
			count = 5,
			price = 19935,
			pricePerItem = 3987,
		},
		{
			count = 9,
			price = 26487,
			pricePerItem = 2943,
		},
		{
			count = 7,
			price = 27916,
			pricePerItem = 3988,
		},
		{
			count = 11,
			price = 29678,
			pricePerItem = 2698,
		},
		{
			count = 15,
			price = 35340,
			pricePerItem = 2356,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 10,
			price = 39890,
			pricePerItem = 3989,
		},
		{
			count = 20,
			price = 47140,
			pricePerItem = 2357,
		},
		{
			count = 20,
			price = 47140,
			pricePerItem = 2357,
		},
		{
			count = 20,
			price = 47140,
			pricePerItem = 2357,
		},
		{
			count = 19,
			price = 47462,
			pricePerItem = 2498,
		},
		{
			count = 20,
			price = 55000,
			pricePerItem = 2750,
		},
		{
			count = 20,
			price = 55000,
			pricePerItem = 2750,
		},
		{
			count = 19,
			price = 55689,
			pricePerItem = 2931,
		},
		{
			count = 20,
			price = 58680,
			pricePerItem = 2934,
		},
		{
			count = 20,
			price = 58780,
			pricePerItem = 2939,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 58860,
			pricePerItem = 2943,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 67800,
			pricePerItem = 3390,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 70000,
			pricePerItem = 3500,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 79980,
			pricePerItem = 3999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 20,
			price = 99980,
			pricePerItem = 4999,
		},
		{
			count = 19,
			price = 127777,
			pricePerItem = 6726,
		},
		{
			count = 20,
			price = 149999,
			pricePerItem = 7500,
		},
		{
			count = 20,
			price = 149999,
			pricePerItem = 7500,
		},
		{
			count = 2,
			price = 8926,
			pricePerItem = 4463,
		},
		{
			count = 4,
			price = 17868,
			pricePerItem = 4467,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 7,
			price = 31220,
			pricePerItem = 4460,
		},
		{
			count = 7,
			price = 32144,
			pricePerItem = 4592,
		},
		{
			count = 3,
			price = 37500,
			pricePerItem = 12500,
		},
		{
			count = 3,
			price = 37500,
			pricePerItem = 12500,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 12,
			price = 53436,
			pricePerItem = 4453,
		},
		{
			count = 13,
			price = 58071,
			pricePerItem = 4467,
		},
		{
			count = 5,
			price = 62500,
			pricePerItem = 12500,
		},
		{
			count = 5,
			price = 62500,
			pricePerItem = 12500,
		},
		{
			count = 15,
			price = 66090,
			pricePerItem = 4406,
		},
		{
			count = 15,
			price = 66960,
			pricePerItem = 4464,
		},
		{
			count = 6,
			price = 75000,
			pricePerItem = 12500,
		},
		{
			count = 18,
			price = 80172,
			pricePerItem = 4454,
		},
		{
			count = 7,
			price = 87500,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 88120,
			pricePerItem = 4406,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89040,
			pricePerItem = 4452,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89200,
			pricePerItem = 4460,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89220,
			pricePerItem = 4461,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89240,
			pricePerItem = 4462,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89300,
			pricePerItem = 4465,
		},
		{
			count = 20,
			price = 89320,
			pricePerItem = 4466,
		},
		{
			count = 20,
			price = 89340,
			pricePerItem = 4467,
		},
		{
			count = 20,
			price = 89340,
			pricePerItem = 4467,
		},
		{
			count = 20,
			price = 89340,
			pricePerItem = 4467,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 8,
			price = 100000,
			pricePerItem = 12500,
		},
		{
			count = 9,
			price = 112500,
			pricePerItem = 12500,
		},
		{
			count = 10,
			price = 125000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 154000,
			pricePerItem = 7700,
		},
		{
			count = 20,
			price = 154000,
			pricePerItem = 7700,
		},
		{
			count = 20,
			price = 154000,
			pricePerItem = 7700,
		},
		{
			count = 20,
			price = 154000,
			pricePerItem = 7700,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 1,
			price = 1273,
			pricePerItem = 1273,
		},
		{
			count = 1,
			price = 1274,
			pricePerItem = 1274,
		},
		{
			count = 1,
			price = 3144,
			pricePerItem = 3144,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3145,
			pricePerItem = 3145,
		},
		{
			count = 1,
			price = 3148,
			pricePerItem = 3148,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3183,
			pricePerItem = 3183,
		},
		{
			count = 1,
			price = 3184,
			pricePerItem = 3184,
		},
		{
			count = 1,
			price = 3184,
			pricePerItem = 3184,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3185,
			pricePerItem = 3185,
		},
		{
			count = 1,
			price = 3491,
			pricePerItem = 3491,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 1,
			price = 4404,
			pricePerItem = 4404,
		},
		{
			count = 2,
			price = 4996,
			pricePerItem = 2498,
		},
		{
			count = 2,
			price = 6982,
			pricePerItem = 3491,
		},
		{
			count = 2,
			price = 6982,
			pricePerItem = 3491,
		},
		{
			count = 2,
			price = 6982,
			pricePerItem = 3491,
		},
		{
			count = 2,
			price = 6982,
			pricePerItem = 3491,
		},
		{
			count = 2,
			price = 6982,
			pricePerItem = 3491,
		},
		{
			count = 2,
			price = 8300,
			pricePerItem = 4150,
		},
		{
			count = 3,
			price = 9441,
			pricePerItem = 3147,
		},
		{
			count = 7,
			price = 24486,
			pricePerItem = 3498,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 2,
			price = 25000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 25460,
			pricePerItem = 1273,
		},
		{
			count = 20,
			price = 25460,
			pricePerItem = 1273,
		},
		{
			count = 12,
			price = 28200,
			pricePerItem = 2350,
		},
		{
			count = 10,
			price = 31430,
			pricePerItem = 3143,
		},
		{
			count = 10,
			price = 31430,
			pricePerItem = 3143,
		},
		{
			count = 9,
			price = 31446,
			pricePerItem = 3494,
		},
		{
			count = 10,
			price = 31460,
			pricePerItem = 3146,
		},
		{
			count = 10,
			price = 31830,
			pricePerItem = 3183,
		},
		{
			count = 10,
			price = 31830,
			pricePerItem = 3183,
		},
		{
			count = 10,
			price = 31830,
			pricePerItem = 3183,
		},
		{
			count = 10,
			price = 31830,
			pricePerItem = 3183,
		},
		{
			count = 7,
			price = 32144,
			pricePerItem = 4592,
		},
		{
			count = 11,
			price = 34562,
			pricePerItem = 3142,
		},
		{
			count = 10,
			price = 34900,
			pricePerItem = 3490,
		},
		{
			count = 3,
			price = 37500,
			pricePerItem = 12500,
		},
		{
			count = 3,
			price = 37500,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 39980,
			pricePerItem = 1999,
		},
		{
			count = 20,
			price = 39980,
			pricePerItem = 1999,
		},
		{
			count = 20,
			price = 39980,
			pricePerItem = 1999,
		},
		{
			count = 12,
			price = 41904,
			pricePerItem = 3492,
		},
		{
			count = 12,
			price = 41916,
			pricePerItem = 3493,
		},
		{
			count = 12,
			price = 41952,
			pricePerItem = 3496,
		},
		{
			count = 14,
			price = 44058,
			pricePerItem = 3147,
		},
		{
			count = 20,
			price = 47480,
			pricePerItem = 2374,
		},
		{
			count = 20,
			price = 47500,
			pricePerItem = 2375,
		},
		{
			count = 20,
			price = 47500,
			pricePerItem = 2375,
		},
		{
			count = 20,
			price = 50000,
			pricePerItem = 2500,
		},
		{
			count = 20,
			price = 50000,
			pricePerItem = 2500,
		},
		{
			count = 20,
			price = 50000,
			pricePerItem = 2500,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 4,
			price = 50000,
			pricePerItem = 12500,
		},
		{
			count = 15,
			price = 52335,
			pricePerItem = 3489,
		},
		{
			count = 12,
			price = 53436,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 20,
			price = 60000,
			pricePerItem = 3000,
		},
		{
			count = 5,
			price = 62500,
			pricePerItem = 12500,
		},
		{
			count = 5,
			price = 62500,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 62920,
			pricePerItem = 3146,
		},
		{
			count = 20,
			price = 62920,
			pricePerItem = 3146,
		},
		{
			count = 20,
			price = 62920,
			pricePerItem = 3146,
		},
		{
			count = 20,
			price = 62980,
			pricePerItem = 3149,
		},
		{
			count = 20,
			price = 62980,
			pricePerItem = 3149,
		},
		{
			count = 20,
			price = 63000,
			pricePerItem = 3150,
		},
		{
			count = 20,
			price = 63000,
			pricePerItem = 3150,
		},
		{
			count = 20,
			price = 63000,
			pricePerItem = 3150,
		},
		{
			count = 15,
			price = 66090,
			pricePerItem = 4406,
		},
		{
			count = 20,
			price = 69980,
			pricePerItem = 3499,
		},
		{
			count = 6,
			price = 75000,
			pricePerItem = 12500,
		},
		{
			count = 18,
			price = 80172,
			pricePerItem = 4454,
		},
		{
			count = 7,
			price = 87500,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 88100,
			pricePerItem = 4405,
		},
		{
			count = 20,
			price = 88100,
			pricePerItem = 4405,
		},
		{
			count = 20,
			price = 88100,
			pricePerItem = 4405,
		},
		{
			count = 20,
			price = 88100,
			pricePerItem = 4405,
		},
		{
			count = 20,
			price = 88120,
			pricePerItem = 4406,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89020,
			pricePerItem = 4451,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89060,
			pricePerItem = 4453,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89080,
			pricePerItem = 4454,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 89100,
			pricePerItem = 4455,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 20,
			price = 91840,
			pricePerItem = 4592,
		},
		{
			count = 8,
			price = 100000,
			pricePerItem = 12500,
		},
		{
			count = 9,
			price = 112500,
			pricePerItem = 12500,
		},
		{
			count = 10,
			price = 125000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
		{
			count = 20,
			price = 250000,
			pricePerItem = 12500,
		},
	},
	["Silk Cloth"] = {
		{
			count = 1,
			price = 188,
			pricePerItem = 188,
		},
		{
			count = 1,
			price = 189,
			pricePerItem = 189,
		},
		{
			count = 1,
			price = 189,
			pricePerItem = 189,
		},
		{
			count = 1,
			price = 189,
			pricePerItem = 189,
		},
		{
			count = 1,
			price = 189,
			pricePerItem = 189,
		},
		{
			count = 1,
			price = 200,
			pricePerItem = 200,
		},
		{
			count = 2,
			price = 396,
			pricePerItem = 198,
		},
		{
			count = 3,
			price = 588,
			pricePerItem = 196,
		},
		{
			count = 3,
			price = 600,
			pricePerItem = 200,
		},
		{
			count = 2,
			price = 908,
			pricePerItem = 454,
		},
		{
			count = 8,
			price = 1600,
			pricePerItem = 200,
		},
		{
			count = 9,
			price = 1800,
			pricePerItem = 200,
		},
		{
			count = 6,
			price = 2136,
			pricePerItem = 356,
		},
		{
			count = 10,
			price = 2400,
			pricePerItem = 240,
		},
		{
			count = 13,
			price = 2600,
			pricePerItem = 200,
		},
		{
			count = 19,
			price = 3572,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3760,
			pricePerItem = 188,
		},
		{
			count = 20,
			price = 3860,
			pricePerItem = 193,
		},
		{
			count = 20,
			price = 3880,
			pricePerItem = 194,
		},
		{
			count = 20,
			price = 4000,
			pricePerItem = 200,
		},
		{
			count = 18,
			price = 4200,
			pricePerItem = 234,
		},
		{
			count = 20,
			price = 4400,
			pricePerItem = 220,
		},
		{
			count = 20,
			price = 4400,
			pricePerItem = 220,
		},
		{
			count = 20,
			price = 4440,
			pricePerItem = 222,
		},
		{
			count = 8,
			price = 4576,
			pricePerItem = 572,
		},
		{
			count = 20,
			price = 4599,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4599,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4599,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 4600,
			pricePerItem = 230,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 1,
			price = 843,
			pricePerItem = 843,
		},
		{
			count = 1,
			price = 855,
			pricePerItem = 855,
		},
		{
			count = 1,
			price = 855,
			pricePerItem = 855,
		},
		{
			count = 1,
			price = 855,
			pricePerItem = 855,
		},
		{
			count = 2,
			price = 1690,
			pricePerItem = 845,
		},
		{
			count = 2,
			price = 1696,
			pricePerItem = 848,
		},
		{
			count = 3,
			price = 2562,
			pricePerItem = 854,
		},
		{
			count = 4,
			price = 3400,
			pricePerItem = 850,
		},
		{
			count = 5,
			price = 4275,
			pricePerItem = 855,
		},
		{
			count = 5,
			price = 4275,
			pricePerItem = 855,
		},
		{
			count = 5,
			price = 4275,
			pricePerItem = 855,
		},
		{
			count = 5,
			price = 4280,
			pricePerItem = 856,
		},
		{
			count = 13,
			price = 4836,
			pricePerItem = 372,
		},
		{
			count = 13,
			price = 4875,
			pricePerItem = 375,
		},
		{
			count = 6,
			price = 5154,
			pricePerItem = 859,
		},
		{
			count = 7,
			price = 5922,
			pricePerItem = 846,
		},
		{
			count = 17,
			price = 6341,
			pricePerItem = 373,
		},
		{
			count = 16,
			price = 6600,
			pricePerItem = 413,
		},
		{
			count = 16,
			price = 6600,
			pricePerItem = 413,
		},
		{
			count = 20,
			price = 7420,
			pricePerItem = 371,
		},
		{
			count = 20,
			price = 7420,
			pricePerItem = 371,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 20,
			price = 7480,
			pricePerItem = 374,
		},
		{
			count = 9,
			price = 7641,
			pricePerItem = 849,
		},
		{
			count = 20,
			price = 7700,
			pricePerItem = 385,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 10,
			price = 8480,
			pricePerItem = 848,
		},
		{
			count = 20,
			price = 9000,
			pricePerItem = 450,
		},
		{
			count = 20,
			price = 9000,
			pricePerItem = 450,
		},
		{
			count = 20,
			price = 9080,
			pricePerItem = 454,
		},
		{
			count = 20,
			price = 9080,
			pricePerItem = 454,
		},
		{
			count = 20,
			price = 9080,
			pricePerItem = 454,
		},
		{
			count = 11,
			price = 9317,
			pricePerItem = 847,
		},
		{
			count = 11,
			price = 9328,
			pricePerItem = 848,
		},
		{
			count = 11,
			price = 9372,
			pricePerItem = 852,
		},
		{
			count = 12,
			price = 10236,
			pricePerItem = 853,
		},
		{
			count = 14,
			price = 11998,
			pricePerItem = 857,
		},
		{
			count = 15,
			price = 12870,
			pricePerItem = 858,
		},
		{
			count = 18,
			price = 15318,
			pricePerItem = 851,
		},
		{
			count = 19,
			price = 16036,
			pricePerItem = 844,
		},
		{
			count = 20,
			price = 16940,
			pricePerItem = 847,
		},
		{
			count = 20,
			price = 16980,
			pricePerItem = 849,
		},
		{
			count = 20,
			price = 17000,
			pricePerItem = 850,
		},
		{
			count = 20,
			price = 17000,
			pricePerItem = 850,
		},
		{
			count = 20,
			price = 17000,
			pricePerItem = 850,
		},
		{
			count = 1,
			price = 217,
			pricePerItem = 217,
		},
		{
			count = 1,
			price = 413,
			pricePerItem = 413,
		},
		{
			count = 1,
			price = 413,
			pricePerItem = 413,
		},
		{
			count = 1,
			price = 413,
			pricePerItem = 413,
		},
		{
			count = 1,
			price = 413,
			pricePerItem = 413,
		},
		{
			count = 3,
			price = 645,
			pricePerItem = 215,
		},
		{
			count = 5,
			price = 1180,
			pricePerItem = 236,
		},
		{
			count = 6,
			price = 1296,
			pricePerItem = 216,
		},
		{
			count = 5,
			price = 1550,
			pricePerItem = 310,
		},
		{
			count = 6,
			price = 2484,
			pricePerItem = 414,
		},
		{
			count = 14,
			price = 3024,
			pricePerItem = 216,
		},
		{
			count = 13,
			price = 3107,
			pricePerItem = 239,
		},
		{
			count = 16,
			price = 3504,
			pricePerItem = 219,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4340,
			pricePerItem = 217,
		},
		{
			count = 16,
			price = 4368,
			pricePerItem = 273,
		},
		{
			count = 20,
			price = 4720,
			pricePerItem = 236,
		},
		{
			count = 20,
			price = 4720,
			pricePerItem = 236,
		},
		{
			count = 19,
			price = 5290,
			pricePerItem = 279,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 7880,
			pricePerItem = 394,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8220,
			pricePerItem = 411,
		},
		{
			count = 20,
			price = 8220,
			pricePerItem = 411,
		},
		{
			count = 20,
			price = 8220,
			pricePerItem = 411,
		},
		{
			count = 20,
			price = 8280,
			pricePerItem = 414,
		},
		{
			count = 20,
			price = 8300,
			pricePerItem = 415,
		},
		{
			count = 20,
			price = 8300,
			pricePerItem = 415,
		},
		{
			count = 20,
			price = 8300,
			pricePerItem = 415,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 1,
			price = 208,
			pricePerItem = 208,
		},
		{
			count = 1,
			price = 210,
			pricePerItem = 210,
		},
		{
			count = 1,
			price = 210,
			pricePerItem = 210,
		},
		{
			count = 1,
			price = 210,
			pricePerItem = 210,
		},
		{
			count = 2,
			price = 428,
			pricePerItem = 214,
		},
		{
			count = 3,
			price = 645,
			pricePerItem = 215,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1055,
			pricePerItem = 211,
		},
		{
			count = 5,
			price = 1065,
			pricePerItem = 213,
		},
		{
			count = 5,
			price = 1070,
			pricePerItem = 214,
		},
		{
			count = 5,
			price = 1070,
			pricePerItem = 214,
		},
		{
			count = 5,
			price = 1180,
			pricePerItem = 236,
		},
		{
			count = 6,
			price = 1254,
			pricePerItem = 209,
		},
		{
			count = 6,
			price = 1296,
			pricePerItem = 216,
		},
		{
			count = 5,
			price = 1550,
			pricePerItem = 310,
		},
		{
			count = 10,
			price = 2129,
			pricePerItem = 213,
		},
		{
			count = 14,
			price = 3024,
			pricePerItem = 216,
		},
		{
			count = 13,
			price = 3107,
			pricePerItem = 239,
		},
		{
			count = 16,
			price = 3504,
			pricePerItem = 219,
		},
		{
			count = 18,
			price = 3816,
			pricePerItem = 212,
		},
		{
			count = 19,
			price = 3876,
			pricePerItem = 204,
		},
		{
			count = 15,
			price = 4000,
			pricePerItem = 267,
		},
		{
			count = 20,
			price = 4100,
			pricePerItem = 205,
		},
		{
			count = 20,
			price = 4180,
			pricePerItem = 209,
		},
		{
			count = 20,
			price = 4240,
			pricePerItem = 212,
		},
		{
			count = 20,
			price = 4259,
			pricePerItem = 213,
		},
		{
			count = 20,
			price = 4259,
			pricePerItem = 213,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 20,
			price = 4320,
			pricePerItem = 216,
		},
		{
			count = 16,
			price = 4368,
			pricePerItem = 273,
		},
		{
			count = 20,
			price = 4720,
			pricePerItem = 236,
		},
		{
			count = 20,
			price = 4720,
			pricePerItem = 236,
		},
		{
			count = 19,
			price = 5290,
			pricePerItem = 279,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 5900,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 20,
			price = 6500,
			pricePerItem = 325,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 6999,
			pricePerItem = 350,
		},
		{
			count = 20,
			price = 7880,
			pricePerItem = 394,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 8200,
			pricePerItem = 410,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 20,
			price = 9600,
			pricePerItem = 480,
		},
		{
			count = 1,
			price = 549,
			pricePerItem = 549,
		},
		{
			count = 1,
			price = 549,
			pricePerItem = 549,
		},
		{
			count = 1,
			price = 549,
			pricePerItem = 549,
		},
		{
			count = 1,
			price = 549,
			pricePerItem = 549,
		},
		{
			count = 1,
			price = 694,
			pricePerItem = 694,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 3,
			price = 2073,
			pricePerItem = 691,
		},
		{
			count = 2,
			price = 2192,
			pricePerItem = 1096,
		},
		{
			count = 4,
			price = 4392,
			pricePerItem = 1098,
		},
		{
			count = 7,
			price = 4879,
			pricePerItem = 697,
		},
		{
			count = 12,
			price = 8304,
			pricePerItem = 692,
		},
		{
			count = 12,
			price = 8388,
			pricePerItem = 699,
		},
		{
			count = 16,
			price = 11040,
			pricePerItem = 690,
		},
		{
			count = 17,
			price = 11832,
			pricePerItem = 696,
		},
		{
			count = 20,
			price = 13860,
			pricePerItem = 693,
		},
		{
			count = 20,
			price = 13860,
			pricePerItem = 693,
		},
		{
			count = 20,
			price = 13900,
			pricePerItem = 695,
		},
		{
			count = 20,
			price = 13900,
			pricePerItem = 695,
		},
		{
			count = 20,
			price = 13900,
			pricePerItem = 695,
		},
		{
			count = 20,
			price = 13900,
			pricePerItem = 695,
		},
		{
			count = 20,
			price = 13940,
			pricePerItem = 697,
		},
		{
			count = 20,
			price = 13940,
			pricePerItem = 697,
		},
		{
			count = 20,
			price = 13940,
			pricePerItem = 697,
		},
		{
			count = 20,
			price = 13960,
			pricePerItem = 698,
		},
		{
			count = 20,
			price = 13960,
			pricePerItem = 698,
		},
		{
			count = 20,
			price = 13980,
			pricePerItem = 699,
		},
		{
			count = 20,
			price = 13980,
			pricePerItem = 699,
		},
		{
			count = 20,
			price = 14000,
			pricePerItem = 700,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
		},
		{
			count = 1,
			price = 519,
			pricePerItem = 519,
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
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 1,
			price = 629,
			pricePerItem = 629,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 2,
			price = 791,
			pricePerItem = 396,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1097,
			pricePerItem = 1097,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1099,
			pricePerItem = 1099,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 3,
			price = 1566,
			pricePerItem = 522,
		},
		{
			count = 5,
			price = 1965,
			pricePerItem = 393,
		},
		{
			count = 2,
			price = 2192,
			pricePerItem = 1096,
		},
		{
			count = 11,
			price = 4290,
			pricePerItem = 390,
		},
		{
			count = 4,
			price = 4392,
			pricePerItem = 1098,
		},
		{
			count = 12,
			price = 4692,
			pricePerItem = 391,
		},
		{
			count = 7,
			price = 4879,
			pricePerItem = 697,
		},
		{
			count = 14,
			price = 5488,
			pricePerItem = 392,
		},
		{
			count = 11,
			price = 5753,
			pricePerItem = 523,
		},
		{
			count = 17,
			price = 6698,
			pricePerItem = 394,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 8000,
			pricePerItem = 400,
		},
		{
			count = 20,
			price = 8000,
			pricePerItem = 400,
		},
		{
			count = 20,
			price = 8000,
			pricePerItem = 400,
		},
		{
			count = 20,
			price = 8000,
			pricePerItem = 400,
		},
		{
			count = 20,
			price = 10340,
			pricePerItem = 517,
		},
		{
			count = 20,
			price = 10340,
			pricePerItem = 517,
		},
		{
			count = 20,
			price = 10340,
			pricePerItem = 517,
		},
		{
			count = 20,
			price = 10360,
			pricePerItem = 518,
		},
		{
			count = 20,
			price = 10360,
			pricePerItem = 518,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10420,
			pricePerItem = 521,
		},
		{
			count = 20,
			price = 10440,
			pricePerItem = 522,
		},
		{
			count = 20,
			price = 10460,
			pricePerItem = 523,
		},
		{
			count = 20,
			price = 10460,
			pricePerItem = 523,
		},
		{
			count = 20,
			price = 10460,
			pricePerItem = 523,
		},
		{
			count = 20,
			price = 10500,
			pricePerItem = 525,
		},
		{
			count = 20,
			price = 10500,
			pricePerItem = 525,
		},
		{
			count = 20,
			price = 10500,
			pricePerItem = 525,
		},
		{
			count = 20,
			price = 10500,
			pricePerItem = 525,
		},
		{
			count = 20,
			price = 11500,
			pricePerItem = 575,
		},
		{
			count = 20,
			price = 11500,
			pricePerItem = 575,
		},
		{
			count = 20,
			price = 11500,
			pricePerItem = 575,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12520,
			pricePerItem = 626,
		},
		{
			count = 20,
			price = 12540,
			pricePerItem = 627,
		},
		{
			count = 20,
			price = 12540,
			pricePerItem = 627,
		},
		{
			count = 20,
			price = 12560,
			pricePerItem = 628,
		},
		{
			count = 20,
			price = 19980,
			pricePerItem = 999,
		},
		{
			count = 20,
			price = 19980,
			pricePerItem = 999,
		},
		{
			count = 20,
			price = 19980,
			pricePerItem = 999,
		},
		{
			count = 20,
			price = 30000,
			pricePerItem = 1500,
		},
		{
			count = 7,
			price = 45000,
			pricePerItem = 6429,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 254,
			pricePerItem = 254,
		},
		{
			count = 2,
			price = 500,
			pricePerItem = 250,
		},
		{
			count = 2,
			price = 528,
			pricePerItem = 264,
		},
		{
			count = 2,
			price = 534,
			pricePerItem = 267,
		},
		{
			count = 3,
			price = 756,
			pricePerItem = 252,
		},
		{
			count = 5,
			price = 1245,
			pricePerItem = 249,
		},
		{
			count = 5,
			price = 2100,
			pricePerItem = 420,
		},
		{
			count = 9,
			price = 2277,
			pricePerItem = 253,
		},
		{
			count = 9,
			price = 2367,
			pricePerItem = 263,
		},
		{
			count = 10,
			price = 2610,
			pricePerItem = 261,
		},
		{
			count = 10,
			price = 2660,
			pricePerItem = 266,
		},
		{
			count = 11,
			price = 2948,
			pricePerItem = 268,
		},
		{
			count = 11,
			price = 3000,
			pricePerItem = 273,
		},
		{
			count = 12,
			price = 3180,
			pricePerItem = 265,
		},
		{
			count = 13,
			price = 3211,
			pricePerItem = 247,
		},
		{
			count = 13,
			price = 3536,
			pricePerItem = 272,
		},
		{
			count = 15,
			price = 3720,
			pricePerItem = 248,
		},
		{
			count = 16,
			price = 4192,
			pricePerItem = 262,
		},
		{
			count = 18,
			price = 4590,
			pricePerItem = 255,
		},
		{
			count = 19,
			price = 4883,
			pricePerItem = 257,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4960,
			pricePerItem = 248,
		},
		{
			count = 20,
			price = 5020,
			pricePerItem = 251,
		},
		{
			count = 20,
			price = 5020,
			pricePerItem = 251,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 19,
			price = 5111,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5180,
			pricePerItem = 259,
		},
		{
			count = 20,
			price = 5180,
			pricePerItem = 259,
		},
		{
			count = 20,
			price = 5180,
			pricePerItem = 259,
		},
		{
			count = 20,
			price = 5200,
			pricePerItem = 260,
		},
		{
			count = 20,
			price = 5200,
			pricePerItem = 260,
		},
		{
			count = 20,
			price = 5260,
			pricePerItem = 263,
		},
		{
			count = 20,
			price = 5260,
			pricePerItem = 263,
		},
		{
			count = 20,
			price = 5260,
			pricePerItem = 263,
		},
		{
			count = 20,
			price = 5280,
			pricePerItem = 264,
		},
		{
			count = 20,
			price = 5280,
			pricePerItem = 264,
		},
		{
			count = 20,
			price = 5360,
			pricePerItem = 268,
		},
		{
			count = 20,
			price = 5380,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5380,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5380,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5380,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5380,
			pricePerItem = 269,
		},
		{
			count = 20,
			price = 5400,
			pricePerItem = 270,
		},
		{
			count = 20,
			price = 5400,
			pricePerItem = 270,
		},
		{
			count = 20,
			price = 5400,
			pricePerItem = 270,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5420,
			pricePerItem = 271,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 5860,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 10,
			price = 10600,
			pricePerItem = 1060,
		},
		{
			count = 16,
			price = 15000,
			pricePerItem = 938,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 10,
			price = 18990,
			pricePerItem = 1899,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 20000,
			pricePerItem = 1000,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 1,
			price = 187,
			pricePerItem = 187,
		},
		{
			count = 1,
			price = 187,
			pricePerItem = 187,
		},
		{
			count = 1,
			price = 188,
			pricePerItem = 188,
		},
		{
			count = 1,
			price = 194,
			pricePerItem = 194,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 227,
			pricePerItem = 227,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 228,
			pricePerItem = 228,
		},
		{
			count = 1,
			price = 229,
			pricePerItem = 229,
		},
		{
			count = 1,
			price = 236,
			pricePerItem = 236,
		},
		{
			count = 1,
			price = 236,
			pricePerItem = 236,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 246,
			pricePerItem = 246,
		},
		{
			count = 1,
			price = 254,
			pricePerItem = 254,
		},
		{
			count = 2,
			price = 386,
			pricePerItem = 193,
		},
		{
			count = 2,
			price = 422,
			pricePerItem = 211,
		},
		{
			count = 2,
			price = 500,
			pricePerItem = 250,
		},
		{
			count = 2,
			price = 534,
			pricePerItem = 267,
		},
		{
			count = 3,
			price = 714,
			pricePerItem = 238,
		},
		{
			count = 3,
			price = 756,
			pricePerItem = 252,
		},
		{
			count = 5,
			price = 935,
			pricePerItem = 187,
		},
		{
			count = 5,
			price = 935,
			pricePerItem = 187,
		},
		{
			count = 5,
			price = 935,
			pricePerItem = 187,
		},
		{
			count = 5,
			price = 935,
			pricePerItem = 187,
		},
		{
			count = 5,
			price = 1245,
			pricePerItem = 249,
		},
		{
			count = 6,
			price = 1422,
			pricePerItem = 237,
		},
		{
			count = 8,
			price = 1560,
			pricePerItem = 195,
		},
		{
			count = 8,
			price = 1576,
			pricePerItem = 197,
		},
		{
			count = 9,
			price = 1782,
			pricePerItem = 198,
		},
		{
			count = 9,
			price = 2277,
			pricePerItem = 253,
		},
		{
			count = 12,
			price = 2292,
			pricePerItem = 191,
		},
		{
			count = 12,
			price = 2376,
			pricePerItem = 198,
		},
		{
			count = 13,
			price = 2470,
			pricePerItem = 190,
		},
		{
			count = 10,
			price = 2610,
			pricePerItem = 261,
		},
		{
			count = 11,
			price = 2695,
			pricePerItem = 245,
		},
		{
			count = 14,
			price = 2964,
			pricePerItem = 212,
		},
		{
			count = 16,
			price = 2975,
			pricePerItem = 186,
		},
		{
			count = 11,
			price = 3000,
			pricePerItem = 273,
		},
		{
			count = 12,
			price = 3180,
			pricePerItem = 265,
		},
		{
			count = 18,
			price = 3348,
			pricePerItem = 186,
		},
		{
			count = 18,
			price = 3528,
			pricePerItem = 196,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 20,
			price = 3700,
			pricePerItem = 185,
		},
		{
			count = 15,
			price = 3720,
			pricePerItem = 248,
		},
		{
			count = 20,
			price = 3780,
			pricePerItem = 189,
		},
		{
			count = 20,
			price = 3780,
			pricePerItem = 189,
		},
		{
			count = 20,
			price = 3780,
			pricePerItem = 189,
		},
		{
			count = 20,
			price = 3780,
			pricePerItem = 189,
		},
		{
			count = 20,
			price = 4140,
			pricePerItem = 207,
		},
		{
			count = 20,
			price = 4140,
			pricePerItem = 207,
		},
		{
			count = 16,
			price = 4192,
			pricePerItem = 262,
		},
		{
			count = 18,
			price = 4300,
			pricePerItem = 239,
		},
		{
			count = 20,
			price = 4500,
			pricePerItem = 225,
		},
		{
			count = 20,
			price = 4500,
			pricePerItem = 225,
		},
		{
			count = 20,
			price = 4500,
			pricePerItem = 225,
		},
		{
			count = 20,
			price = 4500,
			pricePerItem = 225,
		},
		{
			count = 18,
			price = 4590,
			pricePerItem = 255,
		},
		{
			count = 20,
			price = 4800,
			pricePerItem = 240,
		},
		{
			count = 20,
			price = 5020,
			pricePerItem = 251,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5040,
			pricePerItem = 252,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5120,
			pricePerItem = 256,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5160,
			pricePerItem = 258,
		},
		{
			count = 20,
			price = 5200,
			pricePerItem = 260,
		},
		{
			count = 20,
			price = 5200,
			pricePerItem = 260,
		},
		{
			count = 20,
			price = 5560,
			pricePerItem = 278,
		},
		{
			count = 20,
			price = 5560,
			pricePerItem = 278,
		},
		{
			count = 20,
			price = 6000,
			pricePerItem = 300,
		},
		{
			count = 10,
			price = 10600,
			pricePerItem = 1060,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 20,
			price = 15580,
			pricePerItem = 779,
		},
		{
			count = 10,
			price = 18990,
			pricePerItem = 1899,
		},
		{
			count = 15,
			price = 19320,
			pricePerItem = 1288,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
		{
			count = 20,
			price = 23200,
			pricePerItem = 1160,
		},
	},
	["Wool Cloth"] = {
		{
			count = 1,
			price = 145,
			pricePerItem = 145,
		},
		{
			count = 1,
			price = 292,
			pricePerItem = 292,
		},
		{
			count = 1,
			price = 292,
			pricePerItem = 292,
		},
		{
			count = 1,
			price = 292,
			pricePerItem = 292,
		},
		{
			count = 1,
			price = 292,
			pricePerItem = 292,
		},
		{
			count = 2,
			price = 294,
			pricePerItem = 147,
		},
		{
			count = 2,
			price = 400,
			pricePerItem = 200,
		},
		{
			count = 4,
			price = 552,
			pricePerItem = 138,
		},
		{
			count = 5,
			price = 695,
			pricePerItem = 139,
		},
		{
			count = 6,
			price = 774,
			pricePerItem = 129,
		},
		{
			count = 4,
			price = 816,
			pricePerItem = 204,
		},
		{
			count = 4,
			price = 844,
			pricePerItem = 211,
		},
		{
			count = 7,
			price = 980,
			pricePerItem = 140,
		},
		{
			count = 5,
			price = 995,
			pricePerItem = 199,
		},
		{
			count = 10,
			price = 1280,
			pricePerItem = 128,
		},
		{
			count = 9,
			price = 1340,
			pricePerItem = 149,
		},
		{
			count = 9,
			price = 1340,
			pricePerItem = 149,
		},
		{
			count = 12,
			price = 1524,
			pricePerItem = 127,
		},
		{
			count = 5,
			price = 1560,
			pricePerItem = 312,
		},
		{
			count = 8,
			price = 1664,
			pricePerItem = 208,
		},
		{
			count = 9,
			price = 1863,
			pricePerItem = 207,
		},
		{
			count = 8,
			price = 2344,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 2540,
			pricePerItem = 127,
		},
		{
			count = 20,
			price = 2560,
			pricePerItem = 128,
		},
		{
			count = 20,
			price = 2580,
			pricePerItem = 129,
		},
		{
			count = 20,
			price = 2580,
			pricePerItem = 129,
		},
		{
			count = 20,
			price = 2580,
			pricePerItem = 129,
		},
		{
			count = 20,
			price = 2600,
			pricePerItem = 130,
		},
		{
			count = 20,
			price = 2600,
			pricePerItem = 130,
		},
		{
			count = 9,
			price = 2619,
			pricePerItem = 291,
		},
		{
			count = 11,
			price = 3190,
			pricePerItem = 290,
		},
		{
			count = 20,
			price = 5460,
			pricePerItem = 273,
		},
		{
			count = 20,
			price = 5460,
			pricePerItem = 273,
		},
		{
			count = 20,
			price = 5460,
			pricePerItem = 273,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 19,
			price = 5500,
			pricePerItem = 290,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 2,
			price = 238,
			pricePerItem = 119,
		},
		{
			count = 3,
			price = 300,
			pricePerItem = 100,
		},
		{
			count = 5,
			price = 950,
			pricePerItem = 190,
		},
		{
			count = 5,
			price = 995,
			pricePerItem = 199,
		},
		{
			count = 6,
			price = 1152,
			pricePerItem = 192,
		},
		{
			count = 6,
			price = 1188,
			pricePerItem = 198,
		},
		{
			count = 7,
			price = 1358,
			pricePerItem = 194,
		},
		{
			count = 9,
			price = 1476,
			pricePerItem = 164,
		},
		{
			count = 5,
			price = 1560,
			pricePerItem = 312,
		},
		{
			count = 11,
			price = 1617,
			pricePerItem = 147,
		},
		{
			count = 8,
			price = 1664,
			pricePerItem = 208,
		},
		{
			count = 9,
			price = 1863,
			pricePerItem = 207,
		},
		{
			count = 8,
			price = 2344,
			pricePerItem = 293,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2380,
			pricePerItem = 119,
		},
		{
			count = 20,
			price = 2400,
			pricePerItem = 120,
		},
		{
			count = 9,
			price = 2619,
			pricePerItem = 291,
		},
		{
			count = 20,
			price = 2920,
			pricePerItem = 146,
		},
		{
			count = 20,
			price = 2920,
			pricePerItem = 146,
		},
		{
			count = 20,
			price = 2940,
			pricePerItem = 147,
		},
		{
			count = 20,
			price = 2940,
			pricePerItem = 147,
		},
		{
			count = 20,
			price = 2940,
			pricePerItem = 147,
		},
		{
			count = 20,
			price = 2940,
			pricePerItem = 147,
		},
		{
			count = 20,
			price = 2940,
			pricePerItem = 147,
		},
		{
			count = 20,
			price = 3000,
			pricePerItem = 150,
		},
		{
			count = 20,
			price = 3000,
			pricePerItem = 150,
		},
		{
			count = 20,
			price = 3000,
			pricePerItem = 150,
		},
		{
			count = 11,
			price = 3190,
			pricePerItem = 290,
		},
		{
			count = 20,
			price = 3299,
			pricePerItem = 165,
		},
		{
			count = 20,
			price = 3299,
			pricePerItem = 165,
		},
		{
			count = 20,
			price = 3940,
			pricePerItem = 197,
		},
		{
			count = 20,
			price = 3960,
			pricePerItem = 198,
		},
		{
			count = 20,
			price = 3960,
			pricePerItem = 198,
		},
		{
			count = 20,
			price = 3960,
			pricePerItem = 198,
		},
		{
			count = 20,
			price = 3960,
			pricePerItem = 198,
		},
		{
			count = 20,
			price = 4500,
			pricePerItem = 225,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5480,
			pricePerItem = 274,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 20,
			price = 5500,
			pricePerItem = 275,
		},
		{
			count = 19,
			price = 5500,
			pricePerItem = 290,
		},
		{
			count = 20,
			price = 6220,
			pricePerItem = 311,
		},
		{
			count = 20,
			price = 6220,
			pricePerItem = 311,
		},
		{
			count = 20,
			price = 6220,
			pricePerItem = 311,
		},
		{
			count = 20,
			price = 6220,
			pricePerItem = 311,
		},
		{
			count = 20,
			price = 6220,
			pricePerItem = 311,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 20,
			price = 9980,
			pricePerItem = 499,
		},
		{
			count = 3,
			price = 882,
			pricePerItem = 294,
		},
		{
			count = 3,
			price = 888,
			pricePerItem = 296,
		},
		{
			count = 3,
			price = 891,
			pricePerItem = 297,
		},
		{
			count = 7,
			price = 2044,
			pricePerItem = 292,
		},
		{
			count = 11,
			price = 4004,
			pricePerItem = 364,
		},
		{
			count = 15,
			price = 4470,
			pricePerItem = 298,
		},
		{
			count = 16,
			price = 4720,
			pricePerItem = 295,
		},
		{
			count = 20,
			price = 5840,
			pricePerItem = 292,
		},
		{
			count = 20,
			price = 5840,
			pricePerItem = 292,
		},
		{
			count = 16,
			price = 8000,
			pricePerItem = 500,
		},
		{
			count = 15,
			price = 9000,
			pricePerItem = 600,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 6,
			price = 1740,
			pricePerItem = 290,
		},
		{
			count = 7,
			price = 2044,
			pricePerItem = 292,
		},
		{
			count = 20,
			price = 5820,
			pricePerItem = 291,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 20,
			price = 15000,
			pricePerItem = 750,
		},
		{
			count = 1,
			price = 248,
			pricePerItem = 248,
		},
		{
			count = 1,
			price = 248,
			pricePerItem = 248,
		},
		{
			count = 1,
			price = 248,
			pricePerItem = 248,
		},
		{
			count = 1,
			price = 248,
			pricePerItem = 248,
		},
		{
			count = 1,
			price = 249,
			pricePerItem = 249,
		},
		{
			count = 1,
			price = 249,
			pricePerItem = 249,
		},
		{
			count = 2,
			price = 578,
			pricePerItem = 289,
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
			price = 635,
			pricePerItem = 318,
		},
		{
			count = 3,
			price = 738,
			pricePerItem = 246,
		},
		{
			count = 5,
			price = 1240,
			pricePerItem = 248,
		},
		{
			count = 7,
			price = 2086,
			pricePerItem = 298,
		},
		{
			count = 9,
			price = 2241,
			pricePerItem = 249,
		},
		{
			count = 8,
			price = 2392,
			pricePerItem = 299,
		},
		{
			count = 17,
			price = 4199,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4920,
			pricePerItem = 246,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 4940,
			pricePerItem = 247,
		},
		{
			count = 20,
			price = 5000,
			pricePerItem = 250,
		},
		{
			count = 17,
			price = 5032,
			pricePerItem = 296,
		},
		{
			count = 17,
			price = 5406,
			pricePerItem = 318,
		},
		{
			count = 20,
			price = 6600,
			pricePerItem = 330,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 20,
			price = 9900,
			pricePerItem = 495,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 385,
			pricePerItem = 385,
		},
		{
			count = 1,
			price = 390,
			pricePerItem = 390,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 397,
			pricePerItem = 397,
		},
		{
			count = 1,
			price = 399,
			pricePerItem = 399,
		},
		{
			count = 1,
			price = 399,
			pricePerItem = 399,
		},
		{
			count = 1,
			price = 399,
			pricePerItem = 399,
		},
		{
			count = 2,
			price = 838,
			pricePerItem = 419,
		},
		{
			count = 3,
			price = 1185,
			pricePerItem = 395,
		},
		{
			count = 3,
			price = 1194,
			pricePerItem = 398,
		},
		{
			count = 3,
			price = 1260,
			pricePerItem = 420,
		},
		{
			count = 5,
			price = 1965,
			pricePerItem = 393,
		},
		{
			count = 6,
			price = 2352,
			pricePerItem = 392,
		},
		{
			count = 7,
			price = 2758,
			pricePerItem = 394,
		},
		{
			count = 7,
			price = 2968,
			pricePerItem = 424,
		},
		{
			count = 14,
			price = 5474,
			pricePerItem = 391,
		},
		{
			count = 14,
			price = 5544,
			pricePerItem = 396,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 7840,
			pricePerItem = 392,
		},
		{
			count = 20,
			price = 7860,
			pricePerItem = 393,
		},
		{
			count = 20,
			price = 8380,
			pricePerItem = 419,
		},
		{
			count = 20,
			price = 10000,
			pricePerItem = 500,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12460,
			pricePerItem = 623,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12480,
			pricePerItem = 624,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 12500,
			pricePerItem = 625,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 20,
			price = 19900,
			pricePerItem = 995,
		},
		{
			count = 1,
			price = 1483,
			pricePerItem = 1483,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1718,
			pricePerItem = 1718,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 2,
			price = 2958,
			pricePerItem = 1479,
		},
		{
			count = 2,
			price = 2968,
			pricePerItem = 1484,
		},
		{
			count = 2,
			price = 3434,
			pricePerItem = 1717,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 2,
			price = 3440,
			pricePerItem = 1720,
		},
		{
			count = 3,
			price = 4440,
			pricePerItem = 1480,
		},
		{
			count = 3,
			price = 5157,
			pricePerItem = 1719,
		},
		{
			count = 5,
			price = 7440,
			pricePerItem = 1488,
		},
		{
			count = 5,
			price = 7455,
			pricePerItem = 1491,
		},
		{
			count = 5,
			price = 8585,
			pricePerItem = 1717,
		},
		{
			count = 5,
			price = 8585,
			pricePerItem = 1717,
		},
		{
			count = 5,
			price = 8585,
			pricePerItem = 1717,
		},
		{
			count = 5,
			price = 8585,
			pricePerItem = 1717,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 6,
			price = 8952,
			pricePerItem = 1492,
		},
		{
			count = 6,
			price = 8970,
			pricePerItem = 1495,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 7,
			price = 10367,
			pricePerItem = 1481,
		},
		{
			count = 6,
			price = 10398,
			pricePerItem = 1733,
		},
		{
			count = 7,
			price = 10430,
			pricePerItem = 1490,
		},
		{
			count = 7,
			price = 12005,
			pricePerItem = 1715,
		},
		{
			count = 7,
			price = 12131,
			pricePerItem = 1733,
		},
		{
			count = 9,
			price = 13374,
			pricePerItem = 1486,
		},
		{
			count = 9,
			price = 13473,
			pricePerItem = 1497,
		},
		{
			count = 10,
			price = 14930,
			pricePerItem = 1493,
		},
		{
			count = 8,
			price = 15000,
			pricePerItem = 1875,
		},
		{
			count = 12,
			price = 17868,
			pricePerItem = 1489,
		},
		{
			count = 11,
			price = 19041,
			pricePerItem = 1731,
		},
		{
			count = 13,
			price = 19474,
			pricePerItem = 1498,
		},
		{
			count = 15,
			price = 22275,
			pricePerItem = 1485,
		},
		{
			count = 16,
			price = 23792,
			pricePerItem = 1487,
		},
		{
			count = 16,
			price = 23984,
			pricePerItem = 1499,
		},
		{
			count = 18,
			price = 26586,
			pricePerItem = 1477,
		},
		{
			count = 20,
			price = 29540,
			pricePerItem = 1477,
		},
		{
			count = 20,
			price = 29540,
			pricePerItem = 1477,
		},
		{
			count = 20,
			price = 29540,
			pricePerItem = 1477,
		},
		{
			count = 20,
			price = 29540,
			pricePerItem = 1477,
		},
		{
			count = 20,
			price = 29560,
			pricePerItem = 1478,
		},
		{
			count = 20,
			price = 29560,
			pricePerItem = 1478,
		},
		{
			count = 20,
			price = 29560,
			pricePerItem = 1478,
		},
		{
			count = 20,
			price = 29560,
			pricePerItem = 1478,
		},
		{
			count = 20,
			price = 29560,
			pricePerItem = 1478,
		},
		{
			count = 20,
			price = 34420,
			pricePerItem = 1721,
		},
		{
			count = 20,
			price = 34420,
			pricePerItem = 1721,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 37500,
			pricePerItem = 1875,
		},
		{
			count = 20,
			price = 37500,
			pricePerItem = 1875,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 39000,
			pricePerItem = 1950,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 20,
			price = 130000,
			pricePerItem = 6500,
		},
		{
			count = 1,
			price = 1474,
			pricePerItem = 1474,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1475,
			pricePerItem = 1475,
		},
		{
			count = 1,
			price = 1476,
			pricePerItem = 1476,
		},
		{
			count = 1,
			price = 1476,
			pricePerItem = 1476,
		},
		{
			count = 1,
			price = 1476,
			pricePerItem = 1476,
		},
		{
			count = 1,
			price = 1476,
			pricePerItem = 1476,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1494,
			pricePerItem = 1494,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1500,
			pricePerItem = 1500,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1900,
			pricePerItem = 1900,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 1,
			price = 1999,
			pricePerItem = 1999,
		},
		{
			count = 2,
			price = 2492,
			pricePerItem = 1246,
		},
		{
			count = 2,
			price = 2492,
			pricePerItem = 1246,
		},
		{
			count = 2,
			price = 2492,
			pricePerItem = 1246,
		},
		{
			count = 2,
			price = 2492,
			pricePerItem = 1246,
		},
		{
			count = 3,
			price = 4440,
			pricePerItem = 1480,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 5,
			price = 8625,
			pricePerItem = 1725,
		},
		{
			count = 7,
			price = 8729,
			pricePerItem = 1247,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 5,
			price = 9475,
			pricePerItem = 1895,
		},
		{
			count = 7,
			price = 10367,
			pricePerItem = 1481,
		},
		{
			count = 6,
			price = 10398,
			pricePerItem = 1733,
		},
		{
			count = 7,
			price = 10430,
			pricePerItem = 1490,
		},
		{
			count = 8,
			price = 11360,
			pricePerItem = 1420,
		},
		{
			count = 7,
			price = 12131,
			pricePerItem = 1733,
		},
		{
			count = 10,
			price = 12440,
			pricePerItem = 1244,
		},
		{
			count = 11,
			price = 13728,
			pricePerItem = 1248,
		},
		{
			count = 9,
			price = 15000,
			pricePerItem = 1667,
		},
		{
			count = 8,
			price = 15000,
			pricePerItem = 1875,
		},
		{
			count = 13,
			price = 18473,
			pricePerItem = 1421,
		},
		{
			count = 11,
			price = 19041,
			pricePerItem = 1731,
		},
		{
			count = 13,
			price = 19474,
			pricePerItem = 1498,
		},
		{
			count = 14,
			price = 19894,
			pricePerItem = 1421,
		},
		{
			count = 20,
			price = 24740,
			pricePerItem = 1237,
		},
		{
			count = 20,
			price = 24740,
			pricePerItem = 1237,
		},
		{
			count = 20,
			price = 24740,
			pricePerItem = 1237,
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
			price = 24920,
			pricePerItem = 1246,
		},
		{
			count = 20,
			price = 24940,
			pricePerItem = 1247,
		},
		{
			count = 20,
			price = 24960,
			pricePerItem = 1248,
		},
		{
			count = 20,
			price = 24980,
			pricePerItem = 1249,
		},
		{
			count = 20,
			price = 24980,
			pricePerItem = 1249,
		},
		{
			count = 20,
			price = 25000,
			pricePerItem = 1250,
		},
		{
			count = 20,
			price = 25000,
			pricePerItem = 1250,
		},
		{
			count = 16,
			price = 27728,
			pricePerItem = 1733,
		},
		{
			count = 20,
			price = 28400,
			pricePerItem = 1420,
		},
		{
			count = 20,
			price = 28400,
			pricePerItem = 1420,
		},
		{
			count = 20,
			price = 28400,
			pricePerItem = 1420,
		},
		{
			count = 20,
			price = 28400,
			pricePerItem = 1420,
		},
		{
			count = 20,
			price = 28420,
			pricePerItem = 1421,
		},
		{
			count = 20,
			price = 34420,
			pricePerItem = 1721,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 34540,
			pricePerItem = 1727,
		},
		{
			count = 20,
			price = 37500,
			pricePerItem = 1875,
		},
		{
			count = 20,
			price = 37500,
			pricePerItem = 1875,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 38000,
			pricePerItem = 1900,
		},
		{
			count = 20,
			price = 39000,
			pricePerItem = 1950,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 48500,
			pricePerItem = 2425,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
		{
			count = 20,
			price = 49500,
			pricePerItem = 2475,
		},
	},
}