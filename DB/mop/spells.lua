
local _,addon = ...

if addon.game ~= "CATA" then return end
local s = {}
addon.defaultSpellList = s

s["DEATHKNIGHT"] = {

	[56] = {
        49998, --Death Strike [Rank 1]
        50842, --Pestilence
        46584 --Raise Dead
    },
	[57] = {
        48263, --Frost Presence
        47528 --Mind Freeze
    },
	[58] = {
        48721, --Blood Boil [Rank 1]
        45524 --Chains of Ice
    },
	[59] = {
        49926, --Blood Strike [Rank 2]
        47476 --Strangulate
    },
	[60] = {
        43265, --Death and Decay [Rank 1]
        49917, --Plague Strike [Rank 2]
		49158, --Corpse Explosion r2
    },
	[61] = {
        49896, --Icy Touch [Rank 2]
        49020, --Obliterate [Rank 1]
		3714 -- Path of Frost
    },
	[62] = {
        49892, --Death Coil [Rank 2]
        48792 --Icebound Fortitude
    },
	[63] = {
        49999, --Death Strike [Rank 2]
    },
	[64] = {
        49927, --Blood Strike [Rank 3]
        45529 --Blood Tap
    },
	[65] = {
        56222, --Dark Command
        57330, --Horn of Winter
        49918 --Plague Strike [Rank 3]
    },
	[66] = {
        49939, --Blood Boil [Rank 2]
        48743 --Death Pact
    },
    [67] = {
        49939, --Death and Decay [Rank 2]
        49903, --Icy Touch [Rank 3]
        51423, --Obliterate [Rank 2]
        56815, --Rune Strike
		55265 -- scourge strike r2
    },
    [68] = {
        62902, --Death Coil
        49893, --Death Coil
        48707, --AMS
    },
    [69] = {
        49928, --Blood Strike
        55260, --Heart Strike
    },
    [70] = {
        48265, --Unholy Presence
        49919, --Plague strike
        45463, --Death strike
        51409, --howling blast
        51418, --frost strike
        51326, --corpse explosion
    },
    [72] = {
        49940, --blood boil
        61999, --raise ally
    },
    [73] = {
        55270, --scourge strike
        49937, --Death and Decay
        49904, --Icy Touch
        51424, --Obliterate
    },
    [74] = {
        55261, --Heart Strike
        49929, --Blood Strike
    },
    [75] = {
        51327, --Corpse Explosion
        51419, --Frost Strike
        51410, --Howling Blast
        49923, --Death Strike
        47568, --Empower Rune Weapon
        57623, --Horn of Winter
        49920, --Plague Strike
    },
    [76] = {
        49894, --Death Coil
        62903, --Death Coil
    },
    [78] = {
        49941, --Blood Boil
        49909, --Icy Touch
    },
    [79] = {
        55271, --Scourge Strike
        51425, --Obliterate
    },
}
s["DRUID"] = {
    [4] = {
        8921, -- moonfire
        774 -- rejuvenation
    },
    [6] = {
        467, -- thorns
        5177 -- wrath r2
    },
    [8] = {
        339, -- entangling roots
        5186 -- healing touch r2
    },
    [10] = {
        5232, -- mark of the wild
        1058, -- rejuvenation r2
        99 -- demoralizing roar
    },
    [12] = {
        5229, -- enrage
        8936 -- regrowth
    },
    [14] = {
        5211, -- bash
        782, -- thorns r2
        5187 -- healing touch r3
    },
    [16] = {
        1430, -- rejuvenation r3
        779, -- swipe
        783 -- travel form
    },
    [18] = {
        770, -- faerie fire
        6808, -- maul r2
        8938, -- regrowth
        16857 -- Faerie Fire (Feral)
    },
    [20] = {
        768, -- cat form
        1082, -- claw
        5188, -- healing touch r4
        6756, -- mark of the wild r3
        5215, -- prowl
        1079 -- rip
    },
    [22] = {
        2090 -- rejuvenation r4
    },
    [24] = {
        1822, -- rake
        8939, -- regrowth r3
        1075, -- thorns r3
        5217 -- tigers fury
    },
    [26] = {
        1850, -- dash
        5189, -- healing touch r5
        3029 -- claw r2
    },
    [28] = {
        2091, -- rejuvenation r5
        9492 -- rip r2
    },
    [30] = {
        17390, -- faerie fire feral r2
        778, -- faerie fire r2
        5234, -- mark of the wild
        8940, -- regrowth r4
    },
    [32] = {
        22568, -- ferocious bite
        6778, -- healing touch r6
        6785, -- ravage
        1823 -- rake r2
    },
    [34] = {
        1823, -- rake r2
        3627, -- rejuvenation r6
        8914 -- thorns r4
    },
    [36] = {
        9005, -- pounce
        8941, -- regrowth r5
        9493, -- rip
        6793 -- tigers fury
    },
    [38] = {
        5201, -- claw r3
        5196, -- entangling roots r4
        8903 -- healing touch r7
    },
    [40] = {
        20719, -- feline grace
        22827, -- ferocious bite r2
        29166, -- inntervate
        8907, -- mark of the wild r5
        8910, -- rejuvenation r7
        6783, -- prowl r2
        9634 -- dire bear
    },
    [42] = {
        17391, -- faerie fire feral r3
        9749, -- faerie fire r3
        6787, -- ravage r2
        9750 -- regrowth r6
    },
    [44] = {
        22812, -- barkskin
        9758, -- healing touch r8
        1824, -- rake r3
        9752, -- rip r4
        9756 -- thorns r5
    },
    [46] = {
        9821, -- dash r2
        9823, -- pounce r2
        9839 -- rejuvenation r8
    },
    [48] = {
        9849, -- claw r4
        22828, -- ferocious bite r3
        9856, -- regrowth r7
        9845 -- tigers fury r3
    },
    [50] = {
        9888, -- healing touch r9
        9884, -- mark of the wild r6
        9866 -- ravage r3
    },
    [52] = {
        9840, -- rejuvenation r9
        9894 -- rip r5
    },
    [54] = {
        17392, -- faerie fire feral r4
        9907, -- faerie fire f4
        9857, -- regrowth r8
        9910 -- throns r6
    },
    [56] = {
        22829, -- ferocious bite r4
        9889, -- healing touch r10
        9827 -- pounce r3
    },
    [58] = {
        9857, -- ravage r4
        9841, -- rejuvenation r10
        33982 -- mangle r2
    },
    [60] = {
        31018, -- ferocious bite r5
        25297, -- healing touch r11
        9885, -- mark of the wild r7
        9913, -- prowl r3
        9858, -- regrowth r9
        25299, -- rejuvenation r11
        9868, -- rip r6
        9846 -- tigers fury r4
    },
    [62] = {
        26978, -- healing touch r12
        22570 -- maim
    },
    [63] = {
        24248, -- ferocious bite r6
        26981 -- rejuvenation r12
    },
    [64] = {
        33763, -- lifebloom
        26992 -- thorns r7
    },
    [65] = {
        33357, -- dash r3
        26980 -- regrowth
    },
    [66] = {
        27011, -- faerie fire feral r5
        26993, -- faerie fire r5
        27006, -- pounce r4
        27005 -- ravage r5
    },

    [68] = {
        33987, --Mangle (Bear)
        27009, --Nature's Grasp
        33983, --Mangle (Cat)
    },
    [69] = {
        26979, --Healing Touch
        26982, --Rejuvenation
        50764, --Revive
        26994, --Rebirth
    },
    [70] = {
        40120, --Swift Flight Form
        33786, --Cyclone
        26988, --Moonfire
        26990, --Mark of the Wild
        26991, --Gift of the Wild
        27002, --Shred
        26983, --Tranquility
        27012, --Hurricane
    },
    [71] = {
        62078, --Swipe (Cat)
        49799, --Rip
        50212, --Tiger's Fury
        48442, --Regrowth
    },
    [72] = {
        48450, --Lifebloom
        48561, --Swipe (Bear)
        48573, --Rake
        48464, --Starfire
        48576, --Ferocious Bite
    },
    [73] = {
        48567, --Lacerate
        48569, --Claw
        48479, --Maul
        48578, --Ravage
    },
    [74] = {
        48459, --Wrath
        53307, --Thorns
        48377, --Healing Touch
    },
    [75] = {
        52610, --Savage Roar
        48440, --Rejuvenation
        48446, --Tranquility
        48642, --Moonfire
        48563, --Mangle (Bear)
        48565, --Mangle (Cat)
        48571, --Shred
    },
    [77] = {
        48562, --Swipe (Bear)
        48443, --Regrowth
    },
    [78] = {
        48574, --Rake
        53308, --Entangling Roots
        48465, --Starfire
        53312, --Nature's Grasp
    },
    [79] = {
        48378, --Healing Touch
        50213, --Tiger's Fury
        48461, --Wrath
        48579, --Ravage
        48477, --Rebirth
        48480, --Maul
    },
}

s["PALADIN"] = {
    [1] = {
        465 -- Devotion Aura
    },
    [4] = {
        20271, -- Judgement of Light
        19740 -- Blessing of might
    },
    [6] = {
        498, -- Divine protection
        639, -- Holy Light R2
        3127 -- parry
    },
    [8] = {
        853 -- Hammer of Justice
    },
    [10] = {
        663, -- Lay on Hands
        1022, -- Blessing of Protection
        10290, -- Devotion Aura R2
        1152 -- Purify
    },
    [12] = {
        19834, -- Blessing of Might R2
        53408, -- Judgement of Wisdom
    },
    [14] = {
        19742, -- Blessing of Wisdom
        647, -- Holy Light R3
    },
    [16] = {
        7294, -- Retribution Aura
    },
    [18] = {
        5573, -- Divine Protection R2
	1044, -- Hand of freedom
    },
    [20] = {
        26573, -- Consecration
        19750, -- Flash of Light
        879, -- Exorcism
        --643 -- Devotion Aura R3
        34769, -- summon warhorse (belf)
        13819, -- summon warhorse (alliance)
    },
    [22] = {
        1026, -- Holy Light R4
        19835, -- blessing of might r3
    },
    [24] = {
        19850, -- blessing of wisdom r2
        5588, -- hammer of justice r2
        5599 -- blessing of pretection r2
    },
    [26] = {
        19939, -- flash of light r2
        10298 -- retribution aura r2
    },
    [28] = {
        5614 -- exorcism r2
    },
    [30] = {
        20116, -- consecration r2
        1042, -- holy light r5
        --10291, -- devotion aura r4
        2800, -- lay of hands r2
    },
    [32] = {
        19836, -- blessing of might r4
    },
    [34] = {
        642, -- divine shield
        19940, -- flash of light r3
        19852 -- blessing of wisdom r3
    },
    [36] = {
        5615, -- exorcism r3
        10299 -- retribution aura r3
    },
    [38] = {
        10278, -- blessing of protection r3
        3472, -- holy light
        20166 -- seal of wisdom
    },
    [40] = {
        20922, -- consecration r3
        5589, -- hammer of justice r3
        --1032, -- devotion aura r5
    },
    [42] = {
        4987, -- cleanse
        19837, --  blessing of might r5
        19941, -- flash of light r4
    },
    [44] = {
        24275, -- hammer of wrath
        10312, -- exorcism r4
        19853 -- blessing of wisdom r4
    },
    [46] = {
        10300, -- retribution aura r4
        10328, -- holy light r7
        20356 -- seal of wisdom r2
    },
    [50] = {
        1020, -- divine shield r2
        2812, -- holy wrath
        19942, -- flash of light r5
        10310, -- lay of hands r3
        10292, -- devotion aura r6
        20923, -- consecration r4
    },
    [52] = {
        19838, -- blessing of might r6
        24274, -- hammer of wrath r2
        10313, -- exorcism r5
    },
    [54] = {
        10308, -- hammer of justice r4
        10329, -- holy light r8
        19854 -- blessing of wisdom r5
    },
    [56] = {
        10301 -- retribution aura r5
    },
    [58] = {
        19943, -- flash of light r6
        20357 -- seal of widom r3
    },
    [60] = {
        20954, -- consecration r5
        25291, -- blessing of might r7
        10314, -- exorcism r6
        25294, -- holy light r9
        10318, -- holy wrath r2
        10293, -- devotion aura r7
        25290, -- blessing of wisdom r6
        24239, -- hammer of wrath r3
    },
    [62] = {
        32223, -- crusader aura
        27135 -- holy light r10
    },
    [64] = {
        31892, -- seal of blood
        31801 -- seal of vengeance
    },
    [65] = {
        27142 -- blessing of wisdom
    },
    [66] = {
        33776, -- spiritual attunement
        27137, -- flash of light r7
        27150, -- retribution aura
        27166 -- seal of wisdom r4
    },

    [68] = {
        27138, --Exorcism (Rank 7)
        27180, --Hammer of Wrath (Rank 4)
    },
    [69] = {
        27154, --Lay on Hands (Rank 4)
        27139, --Holy Wrath (Rank 3)
    },
    [70] = {
        27173, --Consecration
        31884, --Avenging Wrath
        27136, --Holy Light
        27140, --Blessing of Might
        27141, --Greater Blessing of Might
    },
    [71] = {
        48937, --Blessing of Wisdom
        48935, --Greater Blessing of Wisdom
        54428, --Divine Plea
    },
    [72] = {
        48816, --Holy Wrath
        48949, --Redemption
    },
    [73] = {
        48931, --Blessing of Might
        48933, --Greater Blessing of Might
        48800, --Exorcism
    },
    [74] = {
        48941, --Devotion Aura
        48784, --Flash of Light
        48805, --Hammer of Wrath
    },
    [75] = {
        53600, --Shield of Righteousness
        48818, --Consecration
        48781, --Holy Light
    },
    [76] = {
        54043, --Retribution Aura
    },
    [77] = {
        48938, --Blessing of Wisdom
        48938, --Greater Blessing of Wisdom
    },
    [78] = {
        48817, --Holy Wrath
        48788, --Lay on Hands
    },
    [79] = {
        48801, --Exorcism
        48932, --Blessing of Might
        48934, --Greater Blessing of Might
        48785, --Flash of Light
        48950, --Redemption
        48942, --Devotion Aura
    },
}

s["SHAMAN"] = {
    [1] = {
        8017 -- Rockbiter weapon
    },
    [4] = {
        8042 -- earth shock
    },
    [6] = {
        2484, -- earthbind totem
        332 -- healing wave r2
    },
    [8] = {
        8044, -- earth shock r2
        324, -- lightning shield
        5730, -- stoneclaw totem
        8018 -- rockbiter weapon r2
    },
    [10] = {
        850, -- flame shock
        8075, -- strength of earth totem
        529, -- Lightning Bolt r2 (10 instead of 8 to save money)
        8024 -- Flametongue Weapon
    },
    [12] = {
        1535, -- fire nova totem
        547, -- healing wave r3
        370 -- Purge
    },
    [14] = {
        8045, -- earth shock r3
        548 -- Lightning Bolt r3
    },
    [16] = {
        526, -- cure poison
        325, -- lightning shield r2
        8019 -- rockbiter weapon r3
    },
    [18] = {
        8052, -- flame shock r2
        913, -- healing wave r4
        6390, -- stoneclaw totem r2
        8143, -- Tremor Totem
        8027 -- Flametongue Weapon r2
    },
    [20] = {
        8056, -- frost shock
        2645, -- ghost wolf
        8004, -- lesser healing wave
        6363, -- searing totem r2
        915 -- Lightning Bolt r4
    },
    [22] = {
        131, -- Water Breathing
        2870, -- cure disease
        8498, -- fire nova totem r2
        8166 -- Poison Cleansing Totem
    },
    [24] = {
        8046, -- earth shock r4
        939, -- healing wave r5
        905, -- lightning shield r3
        10399, -- rockbiter e4
        8160, -- strength of earth totem r2
        8181 -- Frost resistance totem
    },
    [26] = {
        943, -- Lightning Bolt r5
        5675, -- Mana Spring Totem
        6196, -- far sight
        8030, -- Flametongue Weapon r3
        8190 -- Magma Totem r1
    },
    [28] = {
        8053, -- flame shock r3
        8008, -- lesser healing wave r2
        6391, -- stoneclaw totem r3
        546, -- water walking
        8184 -- Fire resistance totem
    },
    [30] = {
        556, -- astral recall
        8177, -- grounding totem
        20608, -- reincarnation
        6364, -- searing totem r3
        36936, -- totemic call
        8232 -- windfury weapon
    },
    [32] = {
        8499, -- fire nova totem r3
        421, -- Chain Lightning
        959, -- healing wave r6
        945, -- lightning shield r4
        8012, -- Purge r2
        6041 -- Lightning Bolt r6
    },
    [34] = {
        8058, -- frost shock r2
        16314 -- rockbiter weapon r5
    },
    [36] = {
        8010, -- lesser healing wave r3
        10412, -- earth shock r5
        10495, -- Mana Spring Totem r2
        16339 -- Flametongue Weapon r4
    },
    [38] = {
        6392, -- stoneclaw totem r4
        8161, -- strength of earth totem r3
        10391, -- Lightning Bolt r7
        8170 -- Disease Cleansing Totem
    },
    [40] = {
        8737, -- Mail
        10447, -- flame shock r4
        8005, -- healing wave r7
        8134, -- lightning shield r5
        6365, -- searing totem r4
        8235, -- windfury weapon r2
        930 -- Chain Lightning r2
    },
    [42] = {
        11314, -- fire nova totem r4
        8835 -- Grace of Air Totem
    },
    [44] = {
        10466, -- lesser healing wave r4
        10392 -- Lightning Bolt r8
    },
    [46] = {
        10472, -- frost shock r3
        10496, -- Mana Spring Totem r3
        10585, -- Magma Totem r2
        10586 -- Magma Totem r3
    },
    [48] = {
        10413, -- earth shock r6
        10395, -- healing wave r8
        10431, -- lightning shield r6
        10427, -- stoneclaw totem r5
        2860 -- Chain Lightning r3
    },
    [50] = {
        10437, -- searing totem r5
        10486, -- windfury weapon r3
        15207 -- Lightning Bolt r9
    },
    [52] = {
        11315, -- fire nova totem r5
        10448, -- flame shock r5
        10467, -- lesser healing wave r5
        10442 -- strength of earth totem r4
    },
    [54] = {
        10408 -- stoneskin totem r6
    },
    [56] = {
        10396, -- healing wave r9
        10432, -- lightning shield r7
        10497, -- Mana Spring Totem r4
        10627, -- Grace of Air Totem r2
        15208, -- Lightning Bolt r10
        10605 -- Chain Lightning r4
    },
    [58] = {
        10473, -- frost shock r4
        10428 -- stoneclaw totem r6
    },
    [60] = {
        10414, -- earthshock r7
        29228, -- flame shock r6
        25357, -- healing wave r10
        10468, -- lesser healing wave r6
        10438, -- searing totem r6
        25361, -- strength of earth totem r5
        16362, -- windfury weapon r4
        25359 -- Grace of Air Totem r3
    },
    [61] = {
        25546 -- fire nova totem r6
    },
    [62] = {
        24398, -- water shield
        25448 -- Lightning Bolt r11
    },
    [63] = {
        25469, -- lightning shield r8
        25391, -- healing wave r11
        25439 -- Chain Lightning r5
    },
    [64] = {
        3738 -- wrath of air totem
    },
    [65] = {
        25528, -- strength of earth totem r6
        25570 -- Mana Spring Totem r5
    },
    [66] = {
        2062, -- earth elemental totem
        25320, -- lesser healing wave r7
        25525 -- stoneclaw totem r7
    },
    [67] = {
        25525, -- stoneclaw totem r7
        25449 -- Lightning Bolt r12
    },
    [68] = {
        25563, --Fire Resistance Totem
        25464, --Frost Shock
        25505, --Windfury Weapon
        25423, --Chain Heal
        2894, --Fire Elemental Totem
    },
    [69] = {
        25590, --Ancestral Spirit
        25533, --Searing Totem
        25574, --Nature Resistance Totem
        33736, --Water Shield
        25567, --Healing Stream Totem
        25454, --Earth Shock
    },
    [70] = {
        25509, --Stoneskin Totem
        25537, --Fire Nova
        25457, --Flame Shock
        25442, --Chain Lightning
        25396, --Healing Wave
        25547, --Fire Nova
        25472, --Lightning Shield
        51993, --Earthliving Weapon
        32182, --Heroism
        2825, --Bloodlust
    },
    [71] = {
        58794, --Frostbrand Weapon
        58785, --Flametongue Weapon
        58699, --Searing Totem
        58649, --Flametongue Totem
        58771, --Mana Spring Totem
        58801, --Windfury Weapon
        58755, --Healing Stream Totem
        58580, --Stoneclaw Totem
    },
    [72] = {
        49275, --Lesser Healing Wave
    },
    [73] = {
        58731, --Magma Totem
        49237, --Lightning Bolt
        49235, --Frost Shock
        58751, --Stoneskin Totem
    },
    [74] = {
        49270, --Chain Lightning
        55458, --Chain Heal
        49230, --Earth Shock
    },
    [75] = {
        61649, --Fire Nova
        58746, --Nature Resistance Totem
        58737, --Fire Resistance Totem
        58652, --Flametongue Totem
        57622, --Strength of Earth Totem
        49272, --Healing Wave
        49232, --Flame Shock
        58741, --Frost Resistance Totem
        58703, --Searing Totem
        61650, --Fire Nova
        58581, --Stoneclaw Totem
        49280, --Lightning Shield
        51505, --Lava Burst
    },
    [76] = {
        58795, --Frostbrand Weapon
        58773, --Mana Spring Totem
        58803, --Windfury Weapon
        58789, --Flametongue Weapon
        58756, --Healing Stream Totem
        57960, --Water Shield
    },
    [77] = {
        49276, --Lesser Healing Wave
    },
    [78] = {
        49236, --Frost Shock
        58753, --Stoneskin Totem
        58582, --Stoneclaw Totem
        58734, --Magma Totem
    },
    [79] = {
        49238, --Lightning Bolt
        49231, --Earth Shock
    },
}

s["HUNTER"] = {
    [4] = {
        1979 -- serpent sting
    },
    [6] = {
        3044 -- arcane shot
    },
    [8] = {
        5116, -- concussive shot
        --14260, -- raptor strike r2
        1130, -- hunter's mark
        13163, -- aspect of the monkey
        3127 -- parry
    },
    [10] = {
        13165, -- aspect of the hawk
        13549, -- serpent string r2
    },
    [12] = {
        136, -- mend pet
        2974, -- wing clip
        14281, --arcane 2
    },
    [14] = {
        1513 -- scare beast
    },
    [16] = {
        13795, -- immolation trap
        5118, -- cheetah
        1495, -- mongoose 1
    },
    [18] = {
        14318, -- aspect of the hawk r2
        13550, -- serpent sting r3
    },
    [20] = {
        3111, -- mend pet r2
        781, -- disengage
        2643, -- multishot
        14282 -- arcane shot r3
    },
    [22] = {
        14323 -- hunters mark r2
    },
    [26] = {
        3045, -- rapid fire
        13551, -- serpent sting r4
        1499, -- freezing trap
    },
    [28] = {
        14319, -- aspect of the hawk r3
        13809, -- frost trap
        3661, -- mend pet r3
        20900, -- aimed 2
        14283, -- arcane 4
    },
    [30] = {
        5384, -- feign death
        14269, -- mongoose 2
    },
    [34] = {
        13552 -- serpent sting r5
    },
    [36] = {
        3662, -- mend pet r4
        3034, -- viper sting
        20901, --aimed 3
        14284, -- arcane shot r5
    },
    [38] = {
        14320 -- aspect of the hawk r4
    },
    [40] = {
        14324, -- hunter's mark r3
        1510, --volley
    },
    [42] = {
        13553, -- serpentsting r6
    },
    [44] = {
        14285, -- arcaneshot r6
        20902, --aimed 4
    },
    [46] = {
        14384 -- arcane shot r5
    },
    [48] = {
        13542, -- mend pet r5
        14321, -- aspect of the hawk r5
        56641, -- steady 1
    },
    [50] = {
        13554, -- serpent sting r7
        14290, -- multishot 2
        14290, -- multishot 3
        14294, --volley 2
        13813, --explosive trap 1
        14316, --explosive trap 2
    },
    [52] = {
        13543, -- mend pet r6
        20903, -- aimed 5
        14286, -- arcaneshot 7
    },
    [54] = {
        14290, -- multishot 4
        14317, --explosive trap 3
        14290, --multishot 4
    },

    [58] = {
        14322, -- aspect of the hawk r6
        14325, -- hunter's mark r4
        13555, -- serpent sting r8
        14295, -- volley 3
    },
    [60] = {
        14287, -- arcaneshot r8
        25296, -- aspect of the hawk r7
        14311, -- freezing trap r3
        13544, -- mend pet r7
        25295, -- serpentsting r9
        20904, --aimed 6
        19263, --Deterrence
        27025, --explosive trap 4
        25294, --multi-shot 5
    },
    [62] = {
        34120 -- steady shot 2
    },
    [64] = {
        34074 -- aspect of the viper
    },
    [66] = {
        34026 -- kill command
    },
    [67] = {
        27016, -- serpentsting r10
        27021, -- multishot 6
        27022, -- volley 4
    },
    [68] = {
        27044, --Aspect of the Hawk
        27046, --Mend Pet
        34600, --Snake Trap
    },
    [69] = {
        63670, --Black Arrow
        27019, --Arcane Shot
    },
    [70] = {
        27065, --Aimed Shot
        60051, --Explosive Shot
        27068, --Wyvern Sting
        34477, --Misdirection
        36916, --Mongoose Bite
    },
    [71] = {
        49066, --Explosive Trap
        53351, --Kill Shot
        48995, --Raptor Strike
        49051, --Steady Shot
    },
    [72] = {
        48998, --Counterattack
        49055, --Immolation Trap
    },
    [73] = {
        49044, --Arcane Shot
        49000, --Serpent Sting
    },
    [74] = {
        61846, --Aspect of the Dragonhawk
        48989, --Mend Pet
        49047, --Multi-Shot
        58431, --Volley
    },
    [75] = {
        49049, --Aimed Shot
        63671, --Black Arrow
        60052, --Explosive Shot
        49011, --Wyvern Sting
        61005, --Kill Shot
        53271, --Master's Call
    },
    [76] = {
        53338, --Hunter's Mark
    },
    [77] = {
        49067, --Explosive Trap
        48996, --Raptor Strike
        49052, --Steady Shot
    },
    [78] = {
        48999, --Counterattack
        49056, --Immolation Trap
    },
    [79] = {
        49045, --Arcane Shot
        49001, --Serpent Sting
    },
}

s["WARRIOR"] = {
    [1] = {
        6673 -- battle shout r1
    },
    [4] = {
        100, -- charge
        772, -- rend
        3127 -- parry
    },
    [8] = {
        1715, -- hamstring
        284 -- heroic strike r2
    },
    [10] = {
        6546 -- rend 2
    },
    [12] = {
        5242, -- battle shout r2
        7384 -- overpower
    },
    [14] = {
        1160 -- demoralizing shout r1
    },
    [16] = {
        285 -- heroic strike r3
    },
    [20] = {
        845, -- cleave
        6547, -- rend r3
        20230 -- retaliation
    },
    [22] = {
        6192, -- battle shout r3
        5246, -- intimidating shout
        7405 -- sunder armor
    },
    [24] = {
        6190, -- demoralizing shout
        5309, -- execute
        1608 -- heroic strike r4
    },
    [26] = {
        6178 -- charge
    },
    [28] = {
        7887 -- overpower r2
    },
    [30] = {
        7368, -- cleave r2
        20252 -- intercept
    },
    [32] = {
        11549, -- battle shout
        18499, -- berserker rage
        20658, -- execute r2
        7372, -- hamstring r2
        11564 -- heroic strike r5
    },
    [34] = {
        11554, -- demoralizing shout
        8340 -- sunder armor r3
    },
    [36] = {
        1680 -- whirlwind
    },
    [38] = {
        6552 -- pummel
    },
    [40] = {
        20660 -- execute r3
    },
    [42] = {
        11550 -- battle shout r5
    },
    [44] = {
        11555, -- demoralizing shout
        11584 -- overpower r3
    },
    [46] = {
        11578, -- charge r3
        11596 -- sunder armor r4
    },
    [48] = {
        21551, -- mortal strike r2
        20661 -- execute r4
    },
    [50] = {
        1719 -- recklessness
    },
    [52] = {
        11551 -- battle shout 46
    },
    [54] = {
        21552, -- mortal strike r3
        11556, -- demoralizing shout r5
        7373 -- hamstring
    },
    [56] = {
        20662 -- execute r5
    },
    [58] = {
        11597 -- sunder armor r5
    },
    [60] = {
        21553, -- mortal strike r4
        25289, -- battle shout r7
        11585 -- overpower r4
    },
    [62] = {
        25202, -- demoralizing shout r6
        34428 -- victory rush
    },
    [64] = {
        23920 -- spell reflection
    },
    [65] = {
        25234 -- execute r6
    },
    [66] = {
        25248 -- mortal strike r5
    },
    [67] = {
        25212, -- hamstring r4
        25225 -- sunder armor r6
    },

    [68] = {
        25208, --Rend
        25231, --Cleave
        469, --Commanding Shout
    },
    [69] = {
        25242, --Slam
        2048, --Battle Shout
    },
    [70] = {
        3411, --Intervene
        30356, --Shield Slam
        30324, --Heroic Strike
        25203, --Demoralizing Shout
        25236, --Execute
        30357, --Revenge
    },
    [71] = {
        46845, --Rend
        64382, --Shattering Throw
    },
    [72] = {
        47519, --Cleave
        47449, --Heroic Strike
    },
    [73] = {
        47470, --Execute
        47501, --Thunder Clap
    },
    [74] = {
        47439, --Commanding Shout
        47474, --Slam
    },
    [75] = {
        47487, --Shield Slam
        55694, --Enraged Regeneration
    },
    [76] = {
        47450, --Heroic Strike
        47465, --Rend
    },
    [77] = {
        47520, --Cleave
    },
    [78] = {
        47502, --Thunder Clap
        47436, --Battle Shout
    },
    [79] = {
        47437, --Demoralizing Shout
        47475, --Slam
    },
}

s["ROGUE"] = {
    [6] = {
        1776, -- gouge
        1757, -- sinister strike r2
        3127 -- parry
    },
    [8] = {
        5277, -- evasion
        6760 -- eviscerate r2
    },
    [10] = {
        5171, -- slice and dice
        2983 -- sprint
    },
    [12] = {
        1766 -- kick
    },
    [14] = {
        1758 -- sinister strike r3
    },
    [16] = {
        6761 -- eviscerate r3
    },
    [20] = {
        1785 -- stealth r2
    },
    [22] = {
        1725, -- distract
        1759, -- sinister strike r4
        1856 -- vanish
    },
    [24] = {
        6762 -- eviscerate r4
    },
    [26] = {
        1833 -- cheap shot
    },
    [28] = {

    },
    [30] = {
        408, -- kidney shot
        1760 -- sinister strike
    },
    [32] = {
        8623 -- eviscerate
    },
    [34] = {
        2094, -- blind
        8696 -- sprint r2
    },
    [36] = {

    },
    [38] = {
        8621 -- sinister strike r6
    },
    [40] = {
        8624, -- eviscerate r6
        1860, -- safe fall
        1726 -- stealth r3
    },
    [42] = {
        6774, -- slice and dice r2
        1857 -- vanish r2
    },
    [44] = {

    },
    [46] = {
        11293 -- sinister strike r7
    },
    [48] = {
        11299 -- eviscerate r7
    },
    [50] = {
        26669, -- evasion r2
        8643 -- kidney shot r2
    },
    [52] = {

    },
    [54] = {
        11294 -- sinister strike r8
    },
    [56] = {
        11300 -- eviscerate r8
    },
    [58] = {
        11305 -- sprint r3
    },
    [60] = {
        31016, -- eviscerate r9

        1787 -- stealth r4
    },
    [62] = {
        26861, -- sinister strike r9
        26889 -- vanish r3
    },
    [64] = {
        26679, -- deadly throw
        26865 -- eviscerate r10
    },
    [66] = {
        31224 -- cloak of shadows
    },
    [68] = {
        26863, --Backstab
        26867, --Rupture

    },
    [69] = {
        32684, --Envenom
    },
    [70] = {
        48689, --Ambush
        26884, --Garrote
        26862, --Sinister Strike
    },
    [71] = {
        51724, --Sap
    },
    [73] = {
        48667, --Eviscerate
    },
    [74] = {
        57992, --Envenom
        48656, --Backstab
        48671, --Rupture
    },
    [75] = {
        48690, --Ambush
        48675, --Garrote
        57934, --Tricks of the Trade
    },
    [76] = {
        48637, --Sinister Strike
    },
    [79] = {
        48672, --Rupture
        48668, --Eviscerate
    },
}

s["WARLOCK"] = {
    [1] = {
        348, -- immolate
        688,
    },
    [4] = {
        172 -- corruption
    },
    [6] = {
        1454, -- life tap
        695 -- shadow bolt r2
    },
    [8] = {
        980, -- curse of agony
        5782 -- fear
    },
    [10] = {
        6201, -- create healthstone
        696, -- demon skin r2
        1120, -- drain soul
        707 -- immolate r2
    },
    [12] = {
        755, -- health funnel
        705 -- shadow bolt r3
    },
    [14] = {
        6222, -- corruption r2
        689 -- drain life
    },
    [16] = {
        1455 -- life tap r2
    },
    [18] = {
        1014, -- curse of agony r2
        5676, -- searing pain r1
    },
    [20] = {
        706, -- demon armor
        3698, -- health funnel r2
        1094, -- immolate r3
        1088, -- shadowbolt r4
        5784, -- summon felsteed
    },
    [22] = {
        6202, -- create healthstone r2
        699, -- drain life r2
        8288, --drain soul 2
        5740, -- rain of fire r1
    },
    [26] = {
        1714, -- curse of tongues
        1456 -- life tap r3
    },
    [28] = {
        710, -- banish
        6217, -- curse of agony r3
        --3699, -- health funnel r3
        --1106 -- shadow bolt r5
    },
    [30] = {
        20752, -- create soulstone r2
        1086, -- demon armor r2
        709, -- drain life r3
        2941, -- immolate r4
        1949, -- hellfire 1
    },
    [32] = {
        6213, -- fear r2
        6229 -- Shadow ward
    },
    [34] = {
        7684, -- corruption r4
        5699 -- create healthstone r3
    },
    [36] = {
        2362, -- create spellstone
        3700, -- health funnel
        11687, -- life tap r4
        --7641 -- shadow bolt r6
    },
    [38] = {
        --18879, -- siphon life r2
        11711, -- curse of agony r4
        7651, -- drain life r4
        8289 --drain soul 3
    },
    [40] = {
        20755, -- create soulstone r3
        11733, -- demon armor r3
        5484, -- howl of terror
        11655 -- immolate r5
    },
    [42] = {
        6789 -- death coil
    },
    [44] = {
        11671, -- corruption r5
        11693, -- health funnel r5
        --11659 -- shadowbolt r7
    },
    [46] = {
        11729, -- create healthstone
        11699, -- drain life r5
        11688 -- life tap r5
    },
    [48] = {
        --18880, -- siphon life r3
        --18647, -- banish r2
        11712, -- curse of agony r5
        17727, -- spellstone 2
        7641,
        11659,
    },
    [50] = {
        18937, -- dark pact r2
        20756, -- create soulstone r4
        17925, -- death coil r2
        11734, -- demon armor r4
        --11667, -- immolate r6
        11739 -- Shadow Ward 2
    },
    [52] = {
        11694, -- health funnel r6
        11660, -- shadow bolt r8
        11740, -- shadow ward 3
        11675, -- Drain soul 4
    },
    [54] = {
        11672, -- corruption r6
        11700, -- drain life r6
        17928 -- howl of terror r2
    },
    [56] = {
        6215, -- fear r3
        11689, -- life tap r6
        --18881, -- siphon life r4
        11730 -- create healthstone r5
    },
    [58] = {
        11713, -- curse of agony r6
        17926 -- death coil r3
    },
    [60] = {
        30404, -- unstable affliction r2
        25311, -- corruption r7
        20757, -- create soulstone r5
        11735, -- demon armor r5
        11696, -- health funnel r7
        --11668, -- immolate r7
        --25309, -- immolate r8
        --11661, -- shadow bolt r9
        --25307, -- shadow bolt r10
        18938, -- dark pact r3
        25311, -- corruption r7
        17728, -- spellstone 3
    },
    [62] = {
        27219, -- drain life r7
        28176 -- fel armor
    },
    [65] = {
        27216, -- corruption r8
        28172, -- spellstone
    },
    [67] = {
        27218, -- curse of agony r7
        --27259 -- health funnel r8
    },
    [68] = {
        27230, --Create Healthstone (Rank 6)
        27222, --Lifetap (Rank 7)
        27223, --Death Coil (Rank 4)
        27213, --Hellfire (Rank 4)
        29893, --Ritual of Souls
    },
    [69] = {
        27212, --Rain of Fire (Rank 5)
        27209, --Shadow Bolt
        27220, --Drain Life
        27215, --Immolate
        30909, --Curse of Weakness
        27228, --Curse of Elements
        28189, --Fel Armor
    },
    [70] = {
        27260, --Demon Armor
        27238, --Create Soulstone
        30545, --Soul Fire
        30459, --Searing Pain
        30910, --Curse of Doom
        32231, --Incinerate
        27243, --Seed of Corruption
        50511, --Curse of Weakness
    },
    [71] = {
        47812, --Corruption
    },
    [72] = {
        47890, --Shadow Ward
        47819, --Rain of Fire
        47886, --Create Spellstone
    },
    [73] = {
        47863, --Curse of Agony
        47859, --Death Coil (Rank 4)
        47871, --Create Healthstone (Rank 6)
    },
    [74] = {
        47814, --Searing Pain
        47808, --Shadow Bolt
        47892, --Fel Armor
        60219, --Create Firestone
        47837, --Incinerate
    },
    [75] = {
        47835, --Seed of Corruption
        47810, --Immolate
        47824, --Soul Fire
        47897, --Shadowflame
    },
    [76] = {
        47856, --Health Funnel
        47793, --Demon Armor
        47884, --Create Soulstone
    },
    [77] = {
        47855, --Drain Soul
        47813, --Corruption
    },
    [78] = {
        47823, --Hellfire
        47857, --Drain Life
        47860, --Death Coil
        47865, --Curse of Elements
        47888, --Create Spellstone
        47891, --Shadow Ward
    },
    [79] = {
        47878, --Create Healthstone
        47815, --Searing Pain
        47820, --Rain of Fire
        47864, --Curse of Agony
        47893, --Fel Armor
        47809, --Shadow Bolt
    },
}

s["MAGE"] = {

    [1] = {
        1459, --Arcane Intellect [Rank 1]
    },
    [4] = {
        5504, --Conjure Water [Rank 1]
        116, --Frostbolt [Rank 1]
    },
    [6] = {
        587, --Conjure Food [Rank 1]
        2136, --Fire Blast [Rank 1]
        143, --Fireball [Rank 2]
    },
    [8] = {
        5143, --Arcane Missiles [Rank 1]
        205, --Frostbolt [Rank 2]
        118, --Polymorph [Rank 1]
    },
    [10] = {
        5505, --Conjure Water [Rank 2]
        7300, --Frost Armor [Rank 2]
        122, --Frost Nova [Rank 1]
    },
    [12] = {
        597, --Conjure Food [Rank 2]
        604, --Dampen Magic [Rank 1]
        145, --Fireball [Rank 3]
        130, --Slow Fall
    },
    [14] = {
        1449, --Arcane Explosion [Rank 1]
        1460, --Arcane Intellect [Rank 2]
        2137, --Fire Blast [Rank 2]
        837, --Frostbolt [Rank 3]
    },
    [16] = {
        5144, --Arcane Missiles [Rank 2]
        2120, --Flamestrike [Rank 1]
    },
    [18] = {
        1008, --Amplify Magic [Rank 1]
        3140, --Fireball [Rank 4]
        475, --Remove Curse
    },
    [20] = {
        1953, --Blink
        10, --Blizzard [Rank 1]
        5506, --Conjure Water [Rank 3]
        12051, --Evocation
        543, --Fire Ward [Rank 1]
        7301, --Frost Armor [Rank 3]
        7322, --Frostbolt [Rank 4]
        1463, --Mana Shield [Rank 1]
        12824, --Polymorph [Rank 2]
        32271, --Teleport: Exodar
        3562, --Teleport: Ironforge
        3567, --Teleport: Orgrimmar
        32272, --Teleport: Silvermoon
        3561, --Teleport: Stormwind
        3563, --Teleport: Undercity
    },
    [22] = {
        8437, --Arcane Explosion [Rank 2]
        990, --Conjure Food [Rank 3]
        2138, --Fire Blast [Rank 3]
        6143, --Frost Ward [Rank 1]
        2948, --Scorch [Rank 1]
    },
    [24] = {
        5145, --Arcane Missiles [Rank 3]
        2139, --Counterspell
        8450, --Dampen Magic [Rank 2]
        8400, --Fireball [Rank 5]
        2121, --Flamestrike [Rank 2]
        12505, --Pyroblast [Rank 2]
    },
    [26] = {
        120, --Cone of Cold [Rank 1]
        865, --Frost Nova [Rank 2]
        8406, --Frostbolt [Rank 5]
    },
    [28] = {
        1461, --Arcane Intellect [Rank 3]
        6141, --Blizzard [Rank 1]
        759, --Conjure Mana Gem [Rank 1]
        8494, --Mana Shield [Rank 2]
        8444, --Scorch [Rank 2]
    },
    [30] = {
        8455, --Amplify Magic [Rank 2]
        8438, --Arcane Explosion [Rank 3]
        6127, --Conjure Water [Rank 4]
        8412, --Fire Blast [Rank 4]
        8457, --Fire Ward [Rank 2]
        8401, --Fireball [Rank 6]
        7302, --Ice Armor [Rank 1]
        45438, --Ice Block
        3565, --Teleport: Darnassus
        3566, --Teleport: Thunder Bluff
        12522, --Pyroblast [Rank 3]
    },
    [32] = {
        8416, --Arcane Missiles [Rank 4]
        6129, --Conjure Food [Rank 2]
        8422, --Flamestrike [Rank 3]
        8461, --Frost Ward [Rank 2]
        8407, --Frostbolt [Rank 6]
    },
    [34] = {
        8492, --Cone of Cold [Rank 2]
        6117, --Mage Armor [Rank 1]
        8445, --Scorch [Rank 3]
    },
    [35] = {
        49361, --Portal: Stonard
        49360, --Portal: Theramore
        49358, --Teleport: Stonard
        49359, --Teleport: Theramore
    },
    [36] = {
        8427, --Blizzard [Rank 3]
        8451, --Dampen Magic [Rank 3]
        8402, --Fireball [Rank 7]
        8495, --Mana Shield [Rank 3]
        13018, --Blast Wave [Rank 2]
        12523, --Pyroblast [Rank 4]
    },
    [38] = {
        8439, --Arcane Explosion [Rank 4]
        3552, --Conjure Mana Gem [Rank 2]
        8413, --Fire Blast [Rank 5]
        8408, --Frostbolt [Rank 7]
    },
    [40] = {
        8417, --Arcane Missiles [Rank 5]
        10138, --Conjure Water [Rank 5]
        8458, --Fire Ward [Rank 3]
        8423, --Flamestrike [Rank 4]
        6131, --Frost Nova [Rank 3]
        7320, --Ice Armor [Rank 2]
        12825, --Polymorph [Rank 3]
        8446, --Scorch [Rank 4]
        32266, --Portal: Exodar
        11416, --Portal: Ironforge
        11417, --Portal: Orgrimmar
        32267, --Portal: Silvermoon
        10059, --Portal: Stormwind
        11418, --Portal: Undercity
    },
    [42] = {
        10169, --Amplify Magic [Rank 3]
        10156, --Arcane Intellect [Rank 4]
        10159, --Cone of Cold [Rank 3]
        10144, --Conjure Food [Rank 5]
        10148, --Fireball [Rank 8]
        8462, --Frost Ward [Rank 3]
        12524, --Pyroblast [Rank 5]
    },
    [44] = {
        10185, --Blizzard [Rank 4]
        10179, --Frostbolt [Rank 8]
        10191, --Mana Shield [Rank 4]
        13019, --Blast Wave [Rank 3]
    },
    [46] = {
        10201, --Arcane Explosion [Rank 5]
        10197, --Fire Blast [Rank 6]
        22782, --Mage Armor [Rank 2]
        10205, --Scorch [Rank 5]
        13031, --Ice Barrier [Rank 2]
    },
    [48] = {
        10211, --Arcane Missiles [Rank 6]
        10053, --Conjure Mana Gem [Rank 3]
        10173, --Dampen Magic [Rank 4]
        10149, --Fireball [Rank 9]
        10215, --Flamestrike [Rank 5]
        12525, --Pyroblast [Rank 6]
    },
    [50] = {
        10160, --Cone of Cold [Rank 4]
        10139, --Conjure Water [Rank 6]
        10223, --Fire Ward [Rank 4]
        10180, --Frostbolt [Rank 9]
        10219, --Ice Armor [Rank 3]
        11419, --Portal: Darnassus
        11420, --Portal: Thunder Bluff
    },
    [52] = {
        10186, --Blizzard [Rank 5]
        10145, --Conjure Food [Rank 6]
        10177, --Frost Ward [Rank 4]
        10192, --Mana Shield [Rank 5]
        10206, --Scorch [Rank 6]
        13020, --Blast Wave [Rank 4]
        13032, --Ice Barrier [Rank 3]
    },
    [54] = {
        10170, --Amplify Magic [Rank 4]
        10202, --Arcane Explosion [Rank 6]
        10199, --Fire Blast [Rank 7]
        10150, --Fireball [Rank 10]
        10230, --Frost Nova [Rank 4]
        12526, --Pyroblast [Rank 7]
    },
    [56] = {
        23028, --Arcane Brilliance [Rank 1]
        10157, --Arcane Intellect [Rank 5]
        10212, --Arcane Missiles [Rank 7]
        10216, --Flamestrike [Rank 6]
        10181, --Frostbolt [Rank 10]
        33041, --Dragon's Breath [Rank 2]
    },
    [58] = {
        10161, --Cone of Cold [Rank 5]
        10054, --Conjure Mana Gem [Rank 4]
        22783, --Mage Armor [Rank 3]
        10207, --Scorch [Rank 7]
        13033, --Ice Barrier [Rank 4]
    },
    [60] = {
        25345, --Arcane Missiles [Rank 8]
        10187, --Blizzard [Rank 6]
        28612, --Conjure Food [Rank 7]
        10140, --Conjure Water [Rank 7]
        10174, --Dampen Magic [Rank 5]
        10225, --Fire Ward [Rank 5]
        10151, --Fireball [Rank 11]
        25306, --Fireball [Rank 12]
        28609, --Frost Ward [Rank 5]
        25304, --Frostbolt [Rank 11]
        10220, --Ice Armor [Rank 4]
        10193, --Mana Shield [Rank 6]
        12826, --Polymorph [Rank 4]
        33690, --Teleport: Shattrath (Ally)
        35715, --Teleport: Shattrath (Horde)
        13021, --Blast Wave [Rank 5]
        18809, --Pyroblast [Rank 8]
    },
    [61] = {
        27078, --Fire Blast [Rank 8]
    },
    [62] = {
        27080, --Arcane Explosion [Rank 7]
        30482, --Molten Armor [Rank 1]
    },
    [63] = {
        27130, --Amplify Magic [Rank 5]
        27075, --Arcane Missiles [Rank 9]
        27071, --Frostbolt [Rank 12]
    },
    [64] = {
        30451, --Arcane Blast [Rank 1]
        27086, --Flamestrike [Rank 7]
        33042, --Dragon's Breath [Rank 3]
        27134, --Ice Barrier [Rank 5]
    },
    [65] = {
        27087, --Cone of Cold [Rank 6]
        37420, --Conjure Water [Rank 8]
        27073, --Scorch [Rank 8]
        27133, --Blast Wave [Rank 6]
        33691, --Portal: Shattrath (Ally)
        35717, --Portal: Shattrath (Horde)
    },
    [66] = {
        27070, --Fireball [Rank 13]
        30455, --Ice Lance [Rank 1]
        27132, --Pyroblast [Rank 9]
    },
    [67] = {
        27088, --Frost Nova [Rank 5]
        33944, --Dampen Magic [Rank 6]
    },

    [68] = {
        27101, --Conjure Mana Gem
        27131, --Mana Shield
        27085, --Blizzard
        66, --Invisibility
    },
    [69] = {
        33946, --Amplify Magic
        27128, --Fire Ward
        27125, --Mage Armor
        27072, --Frostbolt
        27124, --Ice Armor
        38699, --Arcane Missiles
    },
    [70] = {
        27127, --Arcane Brilliance
        27090, --Conjure Water
        27079, --Fire Blast
        27074, --Scorch
        33717, --Conjure Food
        27126, --Arcane Intellect
        27082, --Arcane Explosion
        38697, --Frostbolt
        38692, --Fireball
        32796, --Frost Ward
        30449, --Spellsteal
        43987, --Ritual of Refreshment
        38704, --Arcane Missiles
    },
    [71] = {
        42894, --Arcane Blast
        43023, --Mage Armor
        43045, --Molten Armor
        53140, --Teleport: Dalaran
    },
    [72] = {
        42930, --Cone of Cold
        42925, --Flamestrike
        42913, --Ice Lance
    },
    [73] = {
        43019, --Mana Shield
        42858, --Scorch
    },
    [74] = {
        42872, --Fire Blast
        42832, --Fireball
        42939, --Blizzard
        53142, --Portal: Dalaran
    },
    [75] = {
        42917, --Frost Nova
        42843, --Arcane Missiles
        42841, --Frostbolt
        42955, --Conjure Refreshment
        44614, --Frostfire Bolt
    },
    [76] = {
        42920, --Arcane Explosion
        42896, --Arcane Blast
        43015, --Dampen Magic
    },
    [77] = {
        43017, --Amplify Magic
        42985, --Conjure Mana Gem
    },
    [78] = {
        42859, --Scorch
        42914, --Ice Lance
        43010, --Fire Ward
        42833, --Fireball
    },
    [79] = {
        42931, --Cone of Cold
        43012, --Frost Ward
        42926, --Flamestrike
        43020, --Mana Shield
        43008, --Ice Armor
        43046, --Molten Armor
        42842, --Frostbolt
        42846, --Arcane Missiles
        43024, --Mage Armor
    },
}

s["PRIEST"] = {
    [4] = {
        2052, -- lesser heal r2
        359 -- shadow word pain
    },
    [6] = {
        17, -- power word shield
        591 -- smite r2
    },
    [8] = {
        139 -- renew
    },
    [10] = {
        13908, -- desperate prayer human/dwarf
        2053, -- lesser heal r3
        8092, -- mind blast
        594, -- shadow word pain r2
        10797, -- starshards night elf
        32548 -- symbol of hope draenei
    },
    [12] = {
        588, -- inner fire
        1244, -- power word fortitude r2
        592 -- power word shield r2
    },
    [14] = {
        528, -- cure disease
        8122, -- psychic scream
        6074, -- renew r2
        598 -- smite r3
    },
    [16] = {
        2054, -- heal
        8102 -- mind blast r2
    },
    [18] = {
        19236, -- desperate prayer r2 human/dwarf
        600, -- power word shield r3
        970, -- shadow word pain r3
        19296 -- starshards r2 night elf
    },
    [20] = {
        44041, -- chastise draenei/dwarf
        42676, -- consume magic blood elf
        2944, -- devouring plague undead
        2651, -- elunes grace night elf
        6346, -- fear ward
        13896, -- feedback human
        2061, -- flash heal
        14914, -- holy fire
        7128, -- inner fire r2
        6075, -- renew r3
        18137 -- shadowguard
    },
    [22] = {
        2055, -- heal r2
        8103, -- mind blast r3
        984 -- smite r4
    },
    [24] = {
        15262, -- holy fire r2
        1245, -- power word fortitude r3
        3747 -- power word shield r4
    },
    [26] = {
        19238, -- desperate prayer r3 human dwarf
        9472, -- flash heal r2
        6076, -- renew r4
        992, -- shadow word pain r4
        19299 -- star shards r3 night elf
    },
    [28] = {
        19276, -- devouring plague r2 undead
        6063, -- heal r3
        8104, -- mind blast r4
        824, -- psychic scream r2
        19308 -- shadowguard r2 troll
    },
    [30] = {
        44043, -- chastise r2 dwarf/draenei
        19271, -- feedback r2 human
        15263, -- holy fire r3
        602, -- inner fire r3
        6065, -- powerwordshield r5
        1004 -- smite r5
    },
    [32] = {
        552, -- abolish disease
        9473, -- flash heal r3
        6077 -- renew r5
    },
    [34] = {
        19240, -- desperate prayer r4
        6064, -- heal r4
        1706, -- levitate
        8105, -- mind blast r5
        2767, -- shadow word pain
        19302 -- starshards r4 night elf
    },
    [36] = {
        19277, -- devouring plague r3
        15264, -- holy fire r4
        2791, -- power word fortitude r4
        6066, -- power word shield r6
        19309, -- shadowguard r3 troll
        6060 -- smite r6
    },
    [38] = {
        9474, -- flash heal r4
        6078 -- renew r6
    },
    [40] = {
        8106, -- mind blast r6
        44044, -- chastise r3 dwarf/draenei
        19273, -- feedback r3
        2060, -- greater heal
        1006, -- inner fire r4
        17311, -- mind flay r2
        17312 -- mind flay r3
    },
    [42] = {
        19241, -- desperate prayer r5 dwarf human
        10898, -- power word shield r7
        10888, -- psychic scream r3
        10892, -- shadow word pain r6
        19303 -- starshards r5 night elf
    },
    [44] = {
        17313, -- mind flay r4
        19208, -- devouring plague r4 undead
        10915, -- flash heal r5
        10927, -- renew r7
        19310 -- shadowguard r4 troll
    },
    [46] = {
        10963, -- greater heal r2
        10945 -- mind blast r7
    },
    [48] = {
        10937, -- power word fortitude r5
        10899 -- power word shield r8
    },
    [50] = {
        44045, -- chastise r4 dwarf draenei
        19242, -- desperate prayer r6 human dwarf
        19274, -- feedback r4 human
        10916, -- flash heal r6
        10951, -- inner fire r5
        10928, -- renew r8
        10893, -- shadow word pain r7
        19304 -- starshards r6
    },
    [52] = {
        17314, -- mind flay r5
        19279, -- devouring plague r5
        10964, -- greater heal r3
        10946, -- mind blast r8
        19311 -- shadowguard r5 troll
    },
    [54] = {
        10900 -- power word shield r9
    },
    [56] = {
        10917, -- flash heal r7
        10890, -- psychic scream r4
        10929 -- renew r9
    },
    [58] = {
        19243, -- deserpate prayer r7 dwarf human
        10965, -- greater heal r4
        10947, -- mind blast r9
        10894, -- shadow word pain r8
        19305 -- starshards r7
    },
    [60] = {
        18807, -- mind flay r6
        34916, -- vampiric touch r2
        44046, -- chastise r5 draenei dwarf
        19280, -- devouring plague r6 undead
        19275, -- feedback r5 human
        25314, -- greater heal r5
        10952, -- inner fire r6
        10938, -- power word fortitude r6
        10901, -- power word shield r10
        25315, -- renew r10
        19312 -- shadowguard r6 troll
    },
    [61] = {
        25233 -- flash heal r8
    },
    [62] = {
        32379 -- shadow word death
    },
    [63] = {
        25210, -- greater heal r6
        25372 -- mind blast r10
    },
    [65] = {
        25217, -- power word shield r11
        25221, -- renew r11
        25367 -- shadow word pain r9
    },
    [66] = {
        25437, -- desperate prayer r8 human dwarf
        34433, -- shadowfiend
        25446 -- starshards 48 night elf
    },
    [67] = {
        25235 -- flash heal r9
    },
    [68] = {
        25477, -- shadowguard r7 troll
        33076, --Prayer of MendingRank 1
        25467, --Devouring PlagueRank 7
        25331, --Holy NovaRank 7
        25213, --Greater HealRank 7
        25433, --Shadow ProtectionRank 4
    },
    [69] = {
        25364, --SmiteRank 10
        25375, --Mind BlastRank 11
        25431, --Inner FireRank 7
    },
    [70] = {
        25389, --Power Word: FortitudeRank 7
        25222, --RenewRank 12
        25368, --Shadow Word: PainRank 10
        25218, --Power Word: ShieldRank 12
        32375, --Mass Dispel
        32996, --Shadow Word: DeathRank 2
        25312, --Divine SpiritRank 5
    },
    [71] = {
        48040, --Inner FireRank 8
    },
    [72] = {
        48134, --Holy FireRank 10
    },

    [73] = {
        48299, --Devouring PlagueRank 8
        48070, --Flash HealRank 10
        48062, --Greater HealRank 8
    },

    [74] = {
        48126, --Mind BlastRank 12
        48112, --Prayer of MendingRank 2
        48122, --SmiteRank 11
    },
    [75] = {
        48045, --Mind SearRank 1
        48067, --RenewRank 13
        48065, --Power Word: ShieldRank 13
        48077, --Holy NovaRank 8
        48124, --Shadow Word: PainRank 11
        48157, --Shadow Word: DeathRank 3
    },

    [76] = {
        48169, --Shadow ProtectionRank 5
    },
    [77] = {
        48168, --Inner FireRank 9
    },
    [78] = {
        48135, --Holy FireRank 11
        48063, --Greater HealRank 9
    },

    [79] = {
        48300, --Devouring PlagueRank 9
        48123, --SmiteRank 12
        48071, --Flash HealRank 11
        48113, --Prayer of MendingRank 3
        48127, --Mind BlastRank 13
    },

}
