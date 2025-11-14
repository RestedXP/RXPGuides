local _, addon = ...
--regular classic era spell list
if addon.game ~= "CLASSIC" or addon.player.season == 2 then return end
C_Spell.RequestLoadSpellData(2575) -- mining
C_Spell.RequestLoadSpellData(2368) -- herbalism

-- Spells not used in hardcore:
addon.HCSpellList = {
    20752, -- create soulstone r2
    20755, -- create soulstone r3
    20756, -- create soulstone r4
    20757, -- create soulstone r5
    1949, -- hellfire r1
    20608 -- reincarnation
}

local s = {}
addon.defaultSpellList = s

s["Dwarf"] = {
    [8] = {2551, 3273, 3274}, -- cooking/FA
    [40] = {152, 6744} -- ram riding
}
s["Gnome"] = {
    [8] = {2551, 3273, 3274}, -- cooking/FA
    [40] = {10907} -- mechanostrider piloting
}
s["Human"] = {
    [8] = {2551, 3273, 3274}, -- cooking/FA
    [40] = {6743, 148} -- horse riding
}
s["NightElf"] = {
    [8] = {2551, 3273, 3274}, -- cooking/FA
    [40] = {6745, 150} -- tiger riding
}
s["Orc"] = {
    [8] = {2551}, -- cooking
    [40] = {6746, 149} -- wolf riding
}
s["Troll"] = {
    [8] = {2551}, -- cooking
    [40] = {533, 10863} -- raptor riding
}
s["Tauren"] = {
    [8] = {2551}, -- cooking
    [40] = {713, 18996} -- kodo riding
}
s["Scourge"] = {
    [8] = {2551}, -- cooking
    [40] = {10921, 554} -- skeletal horse riding
}
s["DRUID"] = {
    [1] = {
        1126 -- mark of the wild
    },
    [4] = {
        774, -- rejuvenation
        8921 -- moonfire
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
        99, -- demoralizing roar
        1058, -- rejuvenation r2
        5232, -- mark of the wild r2
        8924 -- moonfire r2
    },
    [12] = {
        5229, -- enrage
        8936 -- regrowth
    },
    [14] = {
        782, -- thorns r2
        5178, -- wrath r3
        5187, -- healing touch r3
        5211 -- bash
    },
    [16] = {
        779, -- swipe
        1430, -- rejuvenation r3
        8925 -- moonfire r3
    },
    [18] = {
        1062, -- entangling roots r2
        770, -- faerie fire
        2637, -- hibernate
        6808, -- maul r2
        8938 -- regrowth
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
        2782, -- remove curse
        1075, -- thorns r3
        5217 -- tigers fury
    },
    [26] = {
        2893, -- abolish poison
        1850, -- dash
        5189, -- healing touch r5
        3029 -- claw r2
    },
    [28] = {
        5195, -- entangling roots r3
        2091, -- rejuvenation r5
        9492 -- rip r2
    },
    [30] = {
        6798, -- bash r2
        17390, -- faerie fire feral r2
        778, -- faerie fire r2
        5234, -- mark of the wild r4
        8940, -- regrowth r4
        783 -- travel form
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
        6793, -- tigers fury r2
        22842 -- frenzied regeneration
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
        8983, -- bash r3
        9821, -- dash r2
        9823, -- pounce r2
        9839, -- rejuvenation r8
        22895 -- frenzied regeneration r2
    },
    [48] = {
        9849, -- claw r4
        22828, -- ferocious bite r3
        9856, -- regrowth r7
        9845, -- tigers fury r3
        9852 -- entangling roots r5
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
        9827, -- pounce r3
        22896 -- frenzied regeneration r3
    },
    [58] = {
        9857, -- ravage r4
        9841, -- rejuvenation r10
        33982, -- mangle r2
        9853 -- entangling roots r6
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
    }
}

s["PALADIN"] = {
    [1] = {
        465, -- Devotion Aura
        2018 -- Blacksmithing
    },
    [4] = {
        20271, -- Judgement
        19740 -- Blessing of might
    },
    [6] = {
        639, -- Holy Light R2
        3128, -- parry
        498 -- Divine protection
    },
    [8] = {
        853, -- Hammer of Justice
        1152 -- Purify
    },
    [10] = {
        663, -- Lay on Hands
        1022, -- Blessing of Protection
        10290 -- Devotion Aura R2
    },
    [12] = {
        20287, -- Seal of Righteousness R2
        19834 -- Blessing of Might R2
    },
    [14] = {
        19742, -- Blessing of Wisdom
        647, -- Holy Light R3
        21082, -- Seal of the crusader r1
        20162 -- Seal of the crusader r2
    },
    [16] = {
        7294 -- Retribution Aura
    },
    [18] = {
        5573, -- Divine Protection R2
        20288 -- Seal of Rightousness
    },
    [20] = {
        26573, -- Consecration
        19750, -- Flash of Light
        879, -- Exorcism
        643 -- Devotion Aura R3
    },
    [22] = {
        1026, -- Holy Light R4
        19835, -- blessing of might r3
        20305 -- seal of the crusader r3
    },
    [24] = {
        19850, -- blessing of wisdom r2
        5588, -- hammer of justice r2
        5599, -- blessing of pretection r2
        2878 -- turn undead
    },
    [26] = {
        19939, -- flash of light r2
        10298 -- retribution aura r2
    },
    [28] = {
        5614, -- exorcism r2
        19746 -- concerntration aura, may remove
    },
    [30] = {
        20116, -- consecration r2
        1042, -- holy light r5
        10291, -- devotion aura r4
        2800, -- lay of hands r2
        20915 -- seal of command r2
    },
    [32] = {
        19836, -- blessing of might r4
        20306 -- seal of the crusader r4
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
        3472, -- holy light r6
        20166 -- seal of wisdom
    },
    [40] = {
        13819, -- summon warhorse (alliance)
        20922, -- consecration r3
        5589, -- hammer of justice r3
        1032, -- devotion aura r5
        20918 -- seal of command r3
    },
    [42] = {
        4987, -- cleanse
        19837, --  blessing of might r5
        19941, -- flash of light r4
        20307 -- seal of the crusader r5
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
        20919 -- seal of command r4
    },
    [52] = {
        19838, -- blessing of might r6
        24274, -- hammer of wrath r2
        10313, -- exorcism r5
        20308, -- seal of the crusader r6
        25782 -- greater blessing of might
    },
    [54] = {
        10308, -- hammer of justice r4
        10329, -- holy light r8
        19854, -- blessing of wisdom r5
        25894 -- greater blessing of wisdom
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
        20920 -- seal of command r5
    }
}

s["SHAMAN"] = {
    [1] = {
        8017 -- Rockbiter weapon
    },
    [4] = {
        8042 -- earth shock
    },
    [6] = {
--      2484, -- earthbind totem
        332 -- healing wave r2
    },
    [8] = {
        8018, -- rockbiter weapon r2
        8044, -- earth shock r2
        324, -- lightning shield
        529, -- Lightning Bolt r2
        5730 -- stoneclaw totem
    },
    [10] = {
        850, -- flame shock
        8075, -- strength of earth totem
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
    }
}

s["HUNTER"] = {
    [4] = {
        1978 -- serpent sting
    },
    [6] = {
        3044 -- arcane shot
    },
    [8] = {
        5116, -- concussive shot
        14260, -- raptor strike r2
        1130, -- hunter's mark
        13163, -- aspect of the monkey
        3127 -- parry
    },
    [10] = {
        13165, -- aspect of the hawk
        13549, -- serpent string r2
        4187, -- great stamina
        24545, -- natural armor
        1494 -- track beasts
    },
    [12] = {
        136, -- mend pet
        2974, -- wing clip
        4188, -- great stamina r2
        24549 -- natural armor r2
    },
    [14] = {
        14281, -- arcane shot 2
        6197, -- eagle eye
        1513 -- scare beast
    },
    [16] = {
        13795, -- immolation trap
        5118 -- aspect of the cheetah - high prio, can only be trained at 20
    },
    [18] = {
        14318, -- aspect of the hawk r2
        13550, -- serpent sting r3
        3111, -- mend pet r2
        15147, -- growl r3
    },
    [20] = {
        781, -- disengage r1
        4187, -- great stamina r3
        24550, -- natural armor r3
        24494, -- nature res
        24490, -- shadow res
        24440 -- fire res
    },
    [22] = {
        2643, -- multishot
        14282, -- arcane shot r3
        1499, -- freezing trap r1
        14323, -- hunters mark r2
        24519, -- arcane res r1
        24475, -- frost res
        19883, -- track humanoids
        1002 -- eyes of the beast
    },
    [24] = {
        4190, -- great stamina r4
        24551 -- natural armor r4
    },
    [26] = {
        3045, -- rapid fire
        13551, -- serpent sting r4
        14302 -- immolation trap r2
    },
    [28] = {
        14319, -- aspect of the hawk r3
        13809, -- frost trap
        3661, -- mend pet r3
        5384, -- feign death
        14924 -- growl r4
    },
    [30] = {
        14924, -- Growl r4
        4191, -- great stamina r5
        24552 -- natural armor r5
    },
    [32] = {
        14283 -- arcane shot r4
    },
    [34] = {
        13552 -- serpent sting r5
    },
    [36] = {
        3034, -- viper sting
        3662, -- mend pet r4
        14284, -- arcane shot r5
        4192, -- great stamina r6
        24553, -- natural armor r6
        14303 -- immolation trap r3
    },
    [38] = {
        14320 -- aspect of the hawk r4
    },
    [40] = {
        -- 14310, -- freezing trap r2
        14324, -- hunter's mark r3
        14925 -- growl r5
    },
    [42] = {
        13553, -- serpentsting r6
        4193, -- great stamina r7
        24561 -- natural armor r7
    },
    [44] = {
        14304, -- immolation trap r4
        13542, -- mend pet r5
        14285 -- arcaneshot r6
    },
    [48] = {
        14321, -- aspect of the hawk r5
        4194, -- great stamina r8
        24555 -- natural armor r8
    },
    [50] = {
        13554, -- serpent sting r7
        14279, -- viper r2
        14926, -- growl r6
        24441, -- fire res r2
        24463, -- fr r3
        24464, -- fr r4
        24514, -- shadow res r2
        24515 -- sr r3
    },
    [52] = {
        13543 -- mend pet r6
    },
    [54] = {
        5041, -- great stamina r9
        24629 -- natural armor r9
    },
    [56] = {
        14286, -- arcaneshot r7
        14280, -- viper r3
        14305 -- immolation trap r5
    },
    [58] = {
        14322, -- aspect of the hawk r6
        14325, -- hunter's mark r4
        13555 -- serpent sting r8
    },
    [60] = {
        14287, -- arcaneshot r8
        25296, -- aspect of the hawk r7
        14311, -- freezing trap r3
        13544, -- mend pet r7
        25295, -- serpentsting r9
        5042, -- great stamind r10
        24630, -- natural armor r10
        14927 -- growl r7
    }
}

s["WARRIOR"] = {
    [1] = {
        6673 -- battle shout r1
    },
    [4] = {
        100, -- charge
        772, -- rend
        3128 -- parry
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
        20658 -- execute r2
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
    }
}

s["ROGUE"] = {
    [1] = {
        1784 -- stealth
    },
    [6] = {
        --1776, -- gouge
        1757, -- sinister strike r2
        --1784 -- stealth
        3273 --First Aid
    },
    [8] = {
        1776, -- gouge
        6760, -- eviscerate r2
        5277, -- evasion
        3273, --first aid
        1784 -- stealth
    },
    [10] = {
            5277, -- evasion
        1424, -- dual wield
        2983, -- sprint
        201, --1h Swords
	    2575 --mining
        --6452 -- Anti-venom(FA)

    },
    [12] = {
        3128, -- parry
        --1766, -- kick
        5171 -- slice and dice
        --6770, -- sap
        --5171, -- slice and dice
    },
    [14] = {
        3128, -- parry
        1758, -- sinister strike r3
        --1766, -- kick
        5171, -- slice and dice
        198 --1h Maces
        --703, -- garrote
    },
    [16] = {
        6761, -- eviscerate r3
        5167, -- pick pocket
        198 --1h Maces
    },
    [20] = {
        5167, -- pick pocket
        1804, -- Pick Lock
        1785 -- stealth r2
        --1943, -- rupture
        --8676 -- ambush
    },
    [22] = {
        1856, -- vanish
        1725, -- distract
        1759, -- sinister strike r4
        703, -- garrote r1
        8631 -- garrote r2
    },
    [24] = {
        6762, -- eviscerate r4
        3420,  -- crippling poison r1
        2836 --detect traps
    },
    [26] = {
        --1767 -- kick r2
    },
    [28] = {
        8687, -- instant poison 2
        --1943, -- rupture
        --8639 -- rupture r2
        --1833, -- cheap shot
        --2070 -- sap r2
    },
    [30] = {
        8687, -- instant poison 2
        1760 -- sinister strike
        --408, -- kidney shot
        --8632 -- garrote r3
    },
    [32] = {
        8623 -- eviscerate r5
    },
    [34] = {
        2094, -- blind
        6510, -- blinding powder
        8696 -- sprint r2
    },
    [36] = {
        2094, -- blind
        6510, -- blinding powder
        8696, -- sprint r2
        8640, -- rupture r3
        8688 -- instant posion 3
    },
    [38] = {
        8621, -- sinister strike r6
        8633 -- garrote r4
    },
    [40] = {
        8624, -- eviscerate r6
        1860, -- safe fall
        1726 -- stealth r3
    },
    [42] = {
        --1768, -- kick r3
        1857, -- vanish r2
        6774 -- slice and dice r2
    },
    [44] = {
        11273, -- rupture r4
        11341 -- instant poison r4
        --1777, -- gouge r2
        --8629 -- gouge r3
    },
    [46] = {
        11289, -- garrote r5
        11293, -- sinister strike r7
        --11285 -- gouge r4
    },
    [48] = {
        11299 -- eviscerate r7
        --11297 -- sap r3
    },
    [50] = {
        8643, -- kidney shot r2
        11297 -- sap r3
    },
    [52] = {
        11274, -- rupture r5
        11342, -- instant poison r5
        8643, -- kidney shot r2
        11297 -- sap r3
    },
    [54] = {
        11290, -- garrote r6
        11294 -- sinister strike r8
    },
    [56] = {
        11300 -- eviscerate r8
    },
    [58] = {
        --1769, -- kick r4
        11305 -- sprint r3
    },
    [60] = {
        11286, -- gouge r5
        1787, -- stealth r4
        11275, -- rupture r6
        11343, -- instant poison r6
        31016 -- eviscerate r9
    }
}

s["WARLOCK"] = {
    [1] = {
        348 -- immolate
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
        1455, -- life tap r2
        5697 -- unending breath
    },
    [18] = {
        693, -- soulstone
        1014 -- curse of agony r2
    },
    [20] = {
        706, -- demon armor
        3698, -- health funnel r2
        1094, -- immolate r3
        1088, -- shadowbolt r4
        5740 -- rain of fire r1 for split pulling
    },
    [22] = {
        6202, -- create healthstone r2
        699, -- drain life r2
        5676 -- searing pain r1 for Fangore/shadow res mobs
    },
    [24] = {
        6223 -- corruption r3
    },
    [26] = {
        1714, -- curse of tongues
        1456, -- life tap r3
        132, -- detect lesser invisibility
        17919 -- searing pain r2
    },
    [28] = {
        710, -- banish
        6217, -- curse of agony r3
        3699, -- health funnel r3
        1106 -- shadow bolt r5
    },
    [30] = {
        1949, -- hellfire, for deathskips
        20752, -- create soulstone r2
        1086, -- demon armor r2
        709, -- drain life r3
        2941, -- immolate r4
        704 -- curse of recklessness
    },
    [32] = {
        6229, -- shadow ward
        6213 -- fear r2
    },
    [34] = {
        7684, -- corruption r4
        5699, -- create healthstone r3
        17920 -- searing pain r3
    },
    [36] = {
        2362, -- create spellstone
        3700, -- health funnel
        11687, -- life tap r4
        7641 -- shadow bolt r6
    },
    [38] = {
        2970, -- detect invisibility
        18879, -- siphon life r2
        11711, -- curse of agony r4
        7651 -- drain life r4
    },
    [40] = {
        5784, -- summon felsteed
        20755, -- create soulstone r3
        11733, -- demon armor r3
        5484, -- howl of terror
        11655 -- immolate r5
    },
    [42] = {
        11739, -- shadow ward r2
        6789, -- death coil
        11683, -- hellfire r2
        17921 -- searing pain r4
    },
    [44] = {
        11671, -- corruption r5
        11693, -- health funnel r5
        11659 -- shadowbolt r7
    },
    [46] = {
        11729, -- create healthstone
        11699, -- drain life r5
        11688 -- life tap r5
    },
    [48] = {
        6353, -- soul fire
        18880, -- siphon life r3
        18647, -- banish r2
        11712 -- curse of agony r5
    },
    [50] = {
        11719, -- curse of tongues r2
        18937, -- dark pact r2
        20756, -- create soulstone r4
        17925, -- death coil r2
        11734, -- demon armor r4
        11667, -- immolate r6
        11743, -- detect greater invisibility
        17922 -- searing pain r5
    },
    [52] = {
        11740, -- shadow ward r3
        11694, -- health funnel r6
        11660 -- shadow bolt r8
    },
    [54] = {
        11684, -- hellfire r3
        11672, -- corruption r6
        11700, -- drain life r6
        17928 -- howl of terror r2
    },
    [56] = {
        17924, -- soul fire r2
        6215, -- fear r3
        11689, -- life tap r6
        18881, -- siphon life r4
        11730 -- create healthstone r5
    },
    [58] = {
        11713, -- curse of agony r6
        17926, -- death coil r3
        17923 -- searing pain r6
    },
    [60] = {
        30404, -- unstable affliction r2
        25311, -- corruption r7
        20757, -- create soulstone r5
        11735, -- demon armor r5
        11696, -- health funnel r7
        11668, -- immolate r7
        25309, -- immolate r8
        11661, -- shadow bolt r9
        25307, -- shadow bolt r10
        18938, -- dark pact r3
        25311 -- corruption r7
    }
}

s["MAGE"] = {
    [1] = {
        1459, -- Arcane Intellect
    },
    [4] = {
        116 -- frostbolt
    },
    [6] = {
        2136, -- fire blast
        143 -- fireball r2
    },
    [8] = {
        205, -- frostbolt r2
        118 -- polymorph
    },
    [10] = {
        7300, -- frost armor r2
        122, -- frost nova
        5504, -- Conjure water
        5505 -- conjure water r2
    },
    [12] = {
        587, -- conjure food
        597, -- conjure food r2
        145, -- fireball r3
        130, -- slow fall
        604 -- dampen magic
    },
    [14] = {
        1449, -- arcane explosion
        1460, -- arcane intellect
        2137 -- fire blast r2
        --   837, -- frostbolt r3
    },
    [16] = {
        2120 -- flamestrike
    },
    [18] = {
        475, -- remove lesser curse
        3140 -- fireball r4
    },
    [20] = {
        1953, -- blink
        10, -- blizzard
        5506, -- conure water r3
        12051, -- evocation
        7103, -- frost armor r3
        7322, -- frostbolt r4
        1463, -- mana shield
        12824, -- polymorph r2
        3562, -- ironforge
        3561, -- stormwind
        3567, -- orgrimmar
        3563 -- undercity
    },
    [22] = {
        8437, -- arcane explosion r2
        2138 -- fire blast r3
    },
    [24] = {
        2139, -- counterspell
        8400, -- fireball r5
        2121, -- flamestrike r2
        990, -- conure food r3
        2948 -- scorch
    },
    [26] = {
        120, -- cone of cold
        8450 -- dampen magic r2
        --        8406, -- frostbolt r5
    },
    [28] = {
        1461, -- arcane intellect r3
        6141, -- blizzard r2
        759, -- conure mana agate
        8494, -- mana shield r2
        8444 -- scorch r2
    },
    [30] = {
        8438, -- arcane explosion r3
        6127, -- conjure water r4
        8412, -- fire blast r4
        8401, -- fireball r6
        7302, -- ice armor
        3565, -- darnassus
        3566 -- thunder bluff
    },
    [32] = {
        6129, -- conjure food r4
        8422, -- flamestrike r3
        8407 -- frostbolt r6
    },
    [34] = {
        8492, -- cone of cold r2
        6117, -- mage armor
        8445 -- scorch r3
    },
    [36] = {
        8427, -- blizzard r3
        8402, -- fireball r7
        8495 -- mana shield r3
    },
    [38] = {
        8439, -- arcane explosion r4
        3552, -- conjure mana jade
        8413, -- fire blast r5
        8409 -- frostbolt r7
    },
    [40] = {
        10138, -- conjure water r5
        8423, -- flamestrike r4
        7320, -- ice armor r2
        12825, -- polymorph r3
        8446, -- scorch r4
        8451 -- dampen magic r3
    },
    [42] = {
        10156, -- arcane intellect r4
        10159, -- cone of cold r3
        10144, -- conure food r5
        10148 -- fireball r8
    },
    [44] = {
        10185, -- blizzard r4
        10179, -- frostbolt r8
        10191 -- mana shield r4
    },
    [46] = {
        13031, -- ice barrier r2
        10201, -- arcane explosion r5
        10197, -- fire blast r6
        22782, -- mage armor r2
        10205 -- scorch r5
    },
    [48] = {
        10053, -- conujre mana citrine
        10149, -- fireball r9
        10215, -- flamestrike r5
        10173 -- dampen magic r4
    },
    [50] = {
        10160, -- cone of cold r4
        10139, -- conure water r6
        10180, -- frotbolt r9
        10219 -- ice armor r3
    },
    [52] = {
        13032, -- ice barrier r3
        10186, -- blizzard r5
        10192, -- mana shield r5
        10206 -- scorch r6
    },
    [54] = {
        10202, -- arcane explosion r6
        10199, -- fire blast r7
        10150 -- fireball r10
    },
    [56] = {
        10157, -- arcane intellect r5
        10216, -- flamestrike r6
        10181 -- frostbolt r10
    },
    [58] = {
        13033, -- ice barrier r4
        10161, -- cone of cold r5
        10054, -- conure mana ruby
        22783, -- mage armor r3
        10207 -- scorch r7
    },
    [60] = {
        10187, -- blizzard r6
        28612, -- conjure food r7
        10140, -- conjure water r7
        10151, -- fireball r11
        25306, -- fireball r12
        25304, -- frostbolt r11
        10220, -- ice armor r4
        10193, -- mana shield r6
        12826 -- polymorph r4
    }
}

s["PRIEST"] = {
    [1] = {
        1243 -- power word: fortitude
    },
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
        13908, -- desperate prayer human dwarf
        2053, -- lesser heal r3
        8092, -- mind blast
        594, -- shadow word pain r2
        2652 -- touch of weakness undead
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
        527, -- dispel magic
        19236, -- desperate prayer r2 human/dwarf
        600, -- power word shield r3
        970, -- shadow word pain r3
        19296 -- starshards r2 night elf
    },
    [20] = {
        2944, -- devouring plague undead
        2651, -- elunes grace night elf
        6346, -- fear ward dwarf
        --      13896, -- feedback human, mana cost too high
        2061, -- flash heal
        14914, -- holy fire
        7128, -- inner fire r2
        6075, -- renew r3
        18137, -- shadowguard troll
        19261 -- touch of weakness r2 undead
    },
    [22] = {
        453, -- mind soothe 2lvl
        2055, -- heal r2
        8103, -- mind blast r3
        984, -- smite r4
        9484 -- shackle undead 2lvl
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
        992 -- shadow word pain r4
        --      19299, -- star shards r3 night elf
    },
    [28] = {
        19276, -- devouring plague r2 undead
        6063, -- heal r3
        8104, -- mind blast r4
        824, -- psychic scream r2
        19308 -- shadowguard r2 troll
    },
    [30] = {
        605, -- mind control
        976, -- shadow protection
        --     19271, -- feedback r2 human
        19289, -- elune's grace night elf
        15263, -- holy fire r3
        602, -- inner fire r3
        6065, -- power word shield r5
        1004, -- smite r5
        19262 -- touch of weakness r3 undead
    },
    [32] = {
        552, -- abolish disease
        9473, -- flash heal r3
        6077 -- renew r5
    },
    [34] = {
        19240, -- desperate prayer r4 human dwarf
        6064, -- heal r4
        1706, -- levitate
        8105, -- mind blast r5
        2767 -- shadow word pain
        --    19302, -- starshards r4 night elf
    },
    [36] = {
        19277, -- devouring plague r3 undead
        15264, -- holy fire r4
        2791, -- power word fortitude r4
        6066, -- power word shield r6
        19309, -- shadowguard r3 troll
        6060, -- smite r6
        8192, -- mind soothe r2
        988 -- dispel magic r2
    },
    [38] = {
        9474, -- flash heal r4
        6078 -- renew r6
    },
    [40] = {
        8106, -- mind blast r6
        --     19273, -- feedback r3
        2060, -- greater heal
        1006, -- inner fire r4
        17311, -- mind flay r2
        17312, -- mind flay r3
        9485, -- shackle undead r2
        19291 -- elune's grace r3 night elf
    },
    [42] = {
        19241, -- desperate prayer r5 dwarf human
        10898, -- power word shield r7
        10888, -- psychic scream r3
        10892, -- shadow word pain r6
        10957 -- shadow protection r2
        --      19303, -- starshards r5 night elf
    },
    [44] = {
        17313, -- mind flay r4
        19208, -- devouring plague r4 undead
        10915, -- flash heal r5
        10927, -- renew r7
        19310, -- shadowguard r4 troll
        10911 -- mind control r2
    },
    [46] = {
        10963, -- greater heal r2
        10945 -- mind blast r7
    },
    [48] = {
        10937, -- power word fortitude r5
        10899, -- power word shield r8
        21562 -- prayer of fortitude
    },
    [50] = {
        19242, -- desperate prayer r6 human dwarf
        19274, -- feedback r4 human
        10916, -- flash heal r6
        10951, -- inner fire r5
        10928, -- renew r8
        10893, -- shadow word pain r7
        --      19304, -- starshards r6 night elf
        19292 -- elune's grace r4
    },
    [52] = {
        17314, -- mind flay r5
        19279, -- devouring plague r5
        10964, -- greater heal r3
        10946, -- mind blast r8
        19311, -- shadowguard r5 troll
        10953 -- mind soothe r3
    },
    [54] = {
        10900 -- power word shield r9
    },
    [56] = {
        10917, -- flash heal r7
        10890, -- psychic scream r4
        10929, -- renew r9
        10958, -- shadow protection r3
        27683 -- prayer of shadow protection
    },
    [58] = {
        19243, -- deserpate prayer r7 dwarf human
        10965, -- greater heal r4
        10947, -- mind blast r9
        10894 -- shadow word pain r8
        --   19305, -- starshards r7 night elf
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
        19312, -- shadowguard r6 troll
        19293 -- elune's grace r5
    }
}
