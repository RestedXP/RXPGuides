local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}

--Professions DB
addon.professions.PROFESSIONS = {
    ["blacksmithing"] = {
    RECIPES = {
        ["Rough Copper Vest"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Rough Sharpening Stone"] = {
            materials = {
                ["Rough Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Copper Bracers"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Chain Pants"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Copper Mace"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Linen Cloth"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Axe"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Linen Cloth"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Chain Boots"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
            },
        },
        ["Copper Claymore"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Rough Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Light Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Copper Dagger"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Rough Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Light Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Rough Grinding Stone"] = {
            materials = {
                ["Rough Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Shortsword"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Linen Cloth"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Battle Axe"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Malachite"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Light Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Copper Chain Belt"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Copper Chain Vest"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Malachite"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Runed Copper Gauntlets"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Runed Copper Pants"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Fine Thread"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Rough Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Gemmed Copper Gauntlets"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Tigerseye"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Malachite"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Coarse Sharpening Stone"] = {
            materials = {
                ["Coarse Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Copper Maul"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Light Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Runed Copper Belt"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
            },
        },
        ["Thick War Axe"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Silver Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Light Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Coarse Grinding Stone"] = {
            materials = {
                ["Coarse Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Runed Copper Breastplate"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Runed Copper Bracers"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Rough Bronze Boots"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Copper Broadsword"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Tigerseye"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Silver Skeleton Key"] = {
            materials = {
                ["Silver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Silver Rod"] = {
            materials = {
                ["Silver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Ironforge Breastplate"] = {
            materials = {
                ["Copper Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Tigerseye"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Rough Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Big Bronze Knife"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 4,
                    fromVendor = true,
                },
                ["Rough Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Tigerseye"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Rough Bronze Leggings"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Mace"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 4,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Pearl-handled Dagger"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Small Lustrous Pearl"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Rough Bronze Shoulders"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Axe"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 7,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 4,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Shortsword"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Weak Flux"] = {
                    count = 4,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Patterned Bronze Bracers"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Sharpening Stone"] = {
            materials = {
                ["Heavy Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Grinding Stone"] = {
            materials = {
                ["Heavy Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Warhammer"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Deadly Bronze Poniard"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Swiftness Potion"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Silvered Bronze Shoulders"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Greatsword"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Bronze Mace"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Moss Agate"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Silvered Bronze Boots"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Silvered Bronze Breastplate"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Bronze Battle Axe"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Silvered Bronze Gauntlets"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Iridescent Hammer"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 1,
                    fromVendor = true,
                },
                ["Iridescent Pearl"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Shining Silver Breastplate"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Moss Agate"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Iridescent Pearl"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Boots"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Mighty Iron Hammer"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Elixir of Ogre's Strength"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Medium Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Iron Buckle"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Golden Skeleton Key"] = {
            materials = {
                ["Gold Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Golden Rod"] = {
            materials = {
                ["Gold Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Gauntlets"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Small Lustrous Pearl"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = true,
                },
            },
        },
        ["Iron Shield Spike"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Leggings"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = true,
                },
            },
        },
        ["Silvered Bronze Leggings"] = {
            materials = {
                ["Bronze Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Solid Iron Maul"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Silver Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Barbaric Iron Shoulders"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Sharp Claw"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Shoulders"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 7,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = true,
                },
            },
        },
        ["Hardened Iron Shortsword"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Bracers"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = true,
                },
            },
        },
        ["Iron Counterweight"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Coarse Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Helm"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Green Dye"] = {
                    count = 1,
                    fromVendor = true,
                },
            },
        },
        ["Golden Iron Destroyer"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Leggings"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Barbaric Iron Helm"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Large Fang"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Sharp Claw"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Shoulders"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Jade Serpentblade"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Jade"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Glinting Steel Dagger"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Moss Agate"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Elemental Earth"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Green Iron Hauberk"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Jade"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Moss Agate"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Green Leather Armor"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Barbaric Iron Boots"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Large Fang"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Tigerseye"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Moonsteel Broadsword"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 3,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Bracers"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Barbaric Iron Gloves"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
                ["Large Fang"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Massive Iron Axe"] = {
            materials = {
                ["Iron Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Polished Steel Boots"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Edge of Winter"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Frost Oil"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Elemental Water"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Elemental Air"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Coif"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Searing Golden Blade"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Elemental Fire"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Steel Weapon Chain"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Cuirass"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Jade"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Solid Grinding Stone"] = {
            materials = {
                ["Solid Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Solid Sharpening Stone"] = {
            materials = {
                ["Solid Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Truesilver Skeleton Key"] = {
            materials = {
                ["Truesilver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Truesilver Rod"] = {
            materials = {
                ["Truesilver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Steel Breastplate"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Frost Tiger Blade"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Jade"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Frost Oil"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Golden Scale Boots"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Heavy Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Inlaid Mithril Cylinder"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Gold Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Shadow Crescent Axe"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Strong Flux"] = {
                    count = 2,
                    fromVendor = true,
                },
                ["Heavy Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Shadow Oil"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Gauntlet"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Mageweave Cloth"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Shoulder"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Scale Pants"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Axe"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Heavy Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Pants"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Steel Plate Helm"] = {
            materials = {
                ["Steel Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Scale Bracers"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Shield Spike"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Blue Glittering Axe"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Wicked Mithril Blade"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Breastplate"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Coif"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Mageweave Cloth"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Big Black Mace"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Black Pearl"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Shadowgem"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Boots"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["The Shatterer"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 24,
                    fromVendor = false,
                },
                ["Core of Earth"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Jade"] = {
                    count = 5,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Scale Shoulders"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Mithril Spurs"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Dazzling Mithril Rapier"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Lesser Moonstone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Moss Agate"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Mageweave Cloth"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Truesilver Breastplate"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 24,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Black Pearl"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Phantom Blade"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 28,
                    fromVendor = false,
                },
                ["Breath of Wind"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Lesser Invisibility Potion"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Mithril Helm"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Runed Mithril Hammer"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 18,
                    fromVendor = false,
                },
                ["Core of Earth"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Dense Grinding Stone"] = {
            materials = {
                ["Dense Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Dense Sharpening Stone"] = {
            materials = {
                ["Dense Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Blight"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 28,
                    fromVendor = false,
                },
                ["Ichor of Undeath"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Armor"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Blue Sapphire"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Yellow Power Crystal"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Belt"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Red Power Crystal"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Bracers"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Blue Power Crystal"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Ebon Shiv"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Truesilver Champion"] = {
            materials = {
                ["Mithril Bar"] = {
                    count = 30,
                    fromVendor = false,
                },
                ["Truesilver Bar"] = {
                    count = 16,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Breath of Wind"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Solid Grinding Stone"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Thick Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Radiant Belt"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Dark Iron Pulverizer"] = {
            materials = {
                ["Dark Iron Bar"] = {
                    count = 18,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Imperial Plate Belt"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 22,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Imperial Plate Shoulders"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 24,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Citrine"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Dark Iron Mail"] = {
            materials = {
                ["Dark Iron Bar"] = {
                    count = 10,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Imperial Plate Bracers"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Radiant Breastplate"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 18,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Arcanite Skeleton Key"] = {
            materials = {
                ["Arcanite Bar"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Dense Grinding Stone"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Dark Iron Sunderer"] = {
            materials = {
                ["Dark Iron Bar"] = {
                    count = 26,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Shield Spike"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Dense Grinding Stone"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Essence of Earth"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Ornate Thorium Handaxe"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Large Opal"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Dense Grinding Stone"] = {
                    count = 2,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Dark Iron Shoulders"] = {
            materials = {
                ["Dark Iron Bar"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Boots"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 8,
                    fromVendor = false,
                },
                ["Green Power Crystal"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Thorium Helm"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 24,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Yellow Power Crystal"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Huge Thorium Battleaxe"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 40,
                    fromVendor = false,
                },
                ["Dense Grinding Stone"] = {
                    count = 6,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 6,
                    fromVendor = false,
                },
            },
        },
        ["Dark Iron Plate"] = {
            materials = {
                ["Dark Iron Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 8,
                    fromVendor = false,
                },
            },
        },
        ["Radiant Gloves"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 18,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Heavy Timbermaw Belt"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 12,
                    fromVendor = false,
                },
                ["Essence of Earth"] = {
                    count = 3,
                    fromVendor = false,
                },
                ["Living Essence"] = {
                    count = 3,
                    fromVendor = false,
                },
            },
        },
        ["Radiant Boots"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 14,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Volcanic Hammer"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 30,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Rugged Leather"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Imperial Plate Boots"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 34,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 1,
                    fromVendor = false,
                },
                ["Aquamarine"] = {
                    count = 1,
                    fromVendor = false,
                },
            },
        },
        ["Imperial Plate Helm"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 34,
                    fromVendor = false,
                },
                ["Star Ruby"] = {
                    count = 2,
                    fromVendor = false,
                },
            },
        },
        ["Radiant Circlet"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 18,
                    fromVendor = false,
                },
                ["Heart of Fire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
        ["Storm Gauntlets"] = {
            materials = {
                ["Thorium Bar"] = {
                    count = 20,
                    fromVendor = false,
                },
                ["Enchanted Thorium Bar"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Essence of Water"] = {
                    count = 4,
                    fromVendor = false,
                },
                ["Blue Sapphire"] = {
                    count = 4,
                    fromVendor = false,
                },
            },
        },
    },
    },
    ["leatherworking"] = {
        RECIPES = {
            ["Light Leather"] = {
                materials = {
                    ["Ruined Leather Scraps"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Light Armor Kit"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Handstitched Leather Cloak"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Vest"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Pants"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Handstitched Leather Belt"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Light Leather Quiver"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Small Leather Ammo Pouch"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Cured Light Hide"] = {
                materials = {
                    ["Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Rugged Leather Pants"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 5,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Vest"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Kodo Hide Bag"] = {
                materials = {
                    ["Thin Kodo Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Boots"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 5,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Gloves"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Cloak"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Embossed Leather Pants"] = {
                materials = {
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Gloves"] = {
                materials = {
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Belt"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Light Leather Bracers"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Cloak"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Tunic"] = {
                materials = {
                    ["Cured Light Hide"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Moonglow Vest"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Deviate Scale Cloak"] = {
                materials = {
                    ["Deviate Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Boots"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Murloc Scale Belt"] = {
                materials = {
                    ["Slimy Murloc Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Light Leather Pants"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Murloc Scale Breastplate"] = {
                materials = {
                    ["Slimy Murloc Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Medium Leather"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Cured Medium Hide"] = {
                materials = {
                    ["Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Medium Armor Kit"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Whelp Cloak"] = {
                materials = {
                    ["Black Whelp Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Whelp Tunic"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Whelp Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Tunic"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Leather Vest"] = {
                materials = {
                    ["Fine Leather Tunic"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Deviate Scale Gloves"] = {
                materials = {
                    ["Perfect Deviate Scale"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Deviate Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Fine Leather Pants"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Bolt of Woolen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Pants"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Boots"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Nimble Leather Gloves"] = {
                materials = {
                    ["Elixir of Minor Agility"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Toughened Leather Armor"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Cured Light Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Belt"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Elixir of Wisdom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Red Whelp Gloves"] = {
                materials = {
                    ["Red Whelp Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Gloves"] = {
                materials = {
                    ["Fine Leather Gloves"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Cloak"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Belt"] = {
                materials = {
                    ["Fine Leather Belt"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fletcher's Gloves"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Long Tail Feather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Shoulders"] = {
                materials = {
                    ["Cured Medium Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Earthen Leather Shoulders"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Herbalist's Gloves"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Leather Shoulders"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Elixir of Lesser Agility"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Pilferer's Gloves"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Lucky Charm"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Leather Gloves"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Earthen Gloves"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bolt of Woolen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Leather"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Cured Heavy Hide"] = {
                materials = {
                    ["Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Salt"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Armor Kit"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Hillman's Cloak"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Leather Ball"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Gloves"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Bracers"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Small Lustrous Pearl"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Raptor Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Fang"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Green Leather Armor"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 9,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Green Leather Belt"] = {
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Guardian Pants"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Leather Leggings"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Raptor Hide Belt"] = {
                materials = {
                    ["Raptor Hide"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Raptor Hide Harness"] = {
                materials = {
                    ["Raptor Hide"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Leggings"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Guardian Belt"] = {
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thick Murloc Armor"] = {
                materials = {
                    ["Thick Murloc Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Shoulders"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Leather Armor"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Green Whelp Armor"] = {
                materials = {
                    ["Green Whelp Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Leather Cloak"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Green Leather Bracers"] = {
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Bracers"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Gem-studded Leather Belt"] = {
                materials = {
                    ["Cured Heavy Hide"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Guardian Cloak"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Harness"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Guardian Gloves"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gloves of the Greatfather"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Green Whelp Bracers"] = {
                materials = {
                    ["Green Whelp Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Belt"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Guardian Leather Bracers"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Thick Armor Kit"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Thick Leather"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Swift Boots"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Swiftness Potion"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thick Spider's Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Barbaric Belt"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Gorilla Hair"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Great Rage Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Comfortable Leather Hat"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Heavy Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Dusky Boots"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Shadowcat Hide"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Headband"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Tunic"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 7,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Turtle Scale Breastplate"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Turtle Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Robe"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Flask of Mojo"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Mask"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Flask of Mojo"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Bracers"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Breastplate"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Nightscape Pants"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Boots"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 6,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Cloak"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Flask of Big Mojo"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Big Voodoo Pants"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Flask of Big Mojo"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Shoulders"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Leggings"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Rugged Armor Kit"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Nightscape Boots"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Tough Scorpid Helm"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Scorpid Scale"] = {
                        count = 20,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Bracers"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Gauntlets"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Gloves"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Vest"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Bracers"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Volcanic Leggings"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Gauntlets"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Boots"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Boots"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Gauntlets"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Bracers"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Leggings"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Belt"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Belt"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Headband"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Leggings"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Leggings"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Volcanic Breastplate"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Essence of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Chimeric Vest"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Chimera Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runic Leather Headband"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wicked Leather Pants"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 16,
                        fromVendor = false,
                    },
                    ["Cured Rugged Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostsaber Gloves"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Frostsaber Leather"] = {
                        count = 10,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Scorpid Helm"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Scorpid Scale"] = {
                        count = 12,
                        fromVendor = false,
                    },
                    ["Cured Rugged Hide"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
    },
    ["tailoring"] = {
        RECIPES = {
            ["Bolt of Linen Cloth"] = {
                materials = {
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Linen Belt"] = {
                materials = {
                    ["Bolt of Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Heavy Linen Gloves"] = {
                materials = {
                    ["Bolt of Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Reinforced Linen Cape"] = {
                materials = {
                    ["Bolt of Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Coarse Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Bolt of Woolen Cloth"] = {
                materials = {
                    ["Wool Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Gray Woolen Shirt"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Double-stitched Woolen Shoulders"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["White Woolen Dress"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Bolt of Silk Cloth"] = {
                materials = {
                    ["Silk Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Red Woolen Bag"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Adept's Robe"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Stylish Green Shirt"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Green Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Stylish Blue Shirt"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Gray Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Reinforced Woolen Shoulders"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Colorful Kilt"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Phoenix Pants"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Phoenix Gloves"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                    ["Bleach"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Gloves of Meditation"] = {
                materials = {
                    ["Bolt of Woolen Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                    ["Elixir of Wisdom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bright Yellow Shirt"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Yellow Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Azure Silk Hood"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dark Silk Shirt"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gray Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Silk Headband"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Formal White Shirt"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Earthen Vest"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Bolt of Mageweave"] = {
                materials = {
                    ["Mageweave Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Azure Silk Cloak"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Blue Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Crimson Silk Vest"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Black Silk Pack"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Fine Thread"] = {
                        count = 4,
                        fromVendor = true,
                    },
                },
            },
            ["Robe of Power"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Air"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Crimson Silk Pantaloons"] = {
                materials = {
                    ["Bolt of Silk Cloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Icy Cloak"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thick Spider's Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Star Belt"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Buckle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Leggings"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Orange Mageweave Shirt"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Orange Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["White Bandit Mask"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bleach"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Vest"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Gloves"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Mageweave Bag"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Black Mageweave Shoulders"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Lavender Mageweave Shirt"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Purple Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Simple Black Dress"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Black Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Bleach"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Bag"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Admiral's Hat"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Long Elegant Feather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Red Mageweave Headband"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Red Dye"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Shadoweave Mask"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadow Silk"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Bolt of Runecloth"] = {
                materials = {
                    ["Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Tuxedo Jacket"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Heavy Silken Thread"] = {
                        count = 3,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Belt"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Robe"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Tunic"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Vest"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Robe"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Tunic"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Belt"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Gloves"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Cloak"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Gloves"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Gloves"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Gloves"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Robe"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Cloak"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Cloak"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Enchanted Runecloth Bag"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 2,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Vest"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Gloves"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Wizardweave Leggings"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Cindercloth Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frostweave Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Boots"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Boots"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Brightcloth Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Gold Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Felcloth Hood"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 5,
                        fromVendor = false,
                    },
                    ["Felcloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghostweave Pants"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Ghost Dye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Runecloth Headband"] = {
                materials = {
                    ["Bolt of Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rune Thread"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
    },
    ["enchanting"] = {
        RECIPES = {
            ["Runed Copper Rod"] = {
                materials = {
                    ["Copper Rod"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Health"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Deflect"] = {
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lesser Magic Wand"] = {
                materials = {
                    ["Simple Wood"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Mana"] = {
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Absorption"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Minor Resistance"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Stamina"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Spirit"] = {
                materials = {
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Health"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Greater Magic Wand"] = {
                materials = {
                    ["Simple Wood"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Agility"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Mana"] = {
                materials = {
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Minor Strength"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Minor Striking"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Silver Rod"] = {
                materials = {
                    ["Silver Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Greater Magic Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant 2H Weapon - Minor Impact"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant 2H Weapon - Lesser Intellect"] = {
                materials = {
                    ["Greater Magic Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Minor Stamina"] = {
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Minor Agility"] = {
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Protection"] = {
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Spirit"] = {
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Minor Stamina"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Fire Resistance"] = {
                materials = {
                    ["Fire Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Stamina"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Spirit"] = {
                materials = {
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Strange Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Shadow Resistance"] = {
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Shadow Protection Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Lesser Absorption"] = {
                materials = {
                    ["Strange Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Lesser Striking"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Lesser Strength"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Mana"] = {
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Fishing"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Herbalism"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Mining"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Ore"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Golden Rod"] = {
                materials = {
                    ["Golden Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iridescent Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Greater Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Minor Stats"] = {
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Glimmering Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Minor Mana Oil"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Maple Seed"] = {
                        count = 2,
                        fromVendor = true,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Enchant Bracer - Lesser Intellect"] = {
                materials = {
                    ["Greater Astral Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Defense"] = {
                materials = {
                    ["Small Glowing Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Lesser Stamina"] = {
                materials = {
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Lesser Agility"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Greater Health"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Spirit"] = {
                materials = {
                    ["Lesser Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Lesser Stamina"] = {
                materials = {
                    ["Soul Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Strength"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Greater Mana"] = {
                materials = {
                    ["Greater Mystic Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Runed Truesilver Rod"] = {
                materials = {
                    ["Truesilver Rod"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Black Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Greater Mystic Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Resistance"] = {
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Greater Defense"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Agility"] = {
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Intellect"] = {
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Stamina"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Advanced Mining"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Superior Health"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Minor Speed"] = {
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Lesser Agility"] = {
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Advanced Herbalism"] = {
                materials = {
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Strength"] = {
                materials = {
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Vision Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Demonslaying"] = {
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elixir of Demonslaying"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Superior Mana"] = {
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Greater Spirit"] = {
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Agility"] = {
                materials = {
                    ["Greater Nether Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Greater Strength"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Greater Nether Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Greater Stamina"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 5,
                        fromVendor = false,
                    },
                },
            },
            ["Enchanted Leather"] = {
                materials = {
                    ["Rugged Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Lesser Eternal Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchanted Thorium"] = {
                materials = {
                    ["Thorium Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Lesser Mana Oil"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Enchant Bracer - Greater Intellect"] = {
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Greater Stamina"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Greater Resistance"] = {
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Core of Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Globe of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Breath of Wind"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Ichor of Undeath"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Greater Stamina"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Fiery Weapon"] = {
                materials = {
                    ["Small Radiant Shard"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Superior Spirit"] = {
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Greater Agility"] = {
                materials = {
                    ["Lesser Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Wizard Oil"] = {
                materials = {
                    ["Illusion Dust"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Enchant Boots - Spirit"] = {
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Eternal Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Major Health"] = {
                materials = {
                    ["Illusion Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Small Brilliant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Shield - Superior Spirit"] = {
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Cloak - Superior Defense"] = {
                materials = {
                    ["Illusion Dust"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Weapon - Icy Chill"] = {
                materials = {
                    ["Small Brilliant Shard"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Essence of Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Essence of Air"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Icecap"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Chest - Major Mana"] = {
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Small Brilliant Shard"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Boots - Greater Agility"] = {
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 8,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Bracer - Superior Strength"] = {
                materials = {
                    ["Illusion Dust"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Greater Eternal Essence"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Enchant Gloves - Greater Strength"] = {
                materials = {
                    ["Greater Eternal Essence"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Illusion Dust"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
        },
    },
    ["alchemy"] = {
        RECIPES = {
            ["Elixir of Lion's Strength"] = {
                materials = {
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Defense"] = {
                materials = {
                    ["Silverleaf"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Healing Potion"] = {
                materials = {
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Weak Troll's Blood Potion"] = {
                materials = {
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Earthroot"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Mana Potion"] = {
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Rejuvenation Potion"] = {
                materials = {
                    ["Mageroyal"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Fortitude"] = {
                materials = {
                    ["Earthroot"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Peacebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Minor Agility"] = {
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silverleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Healing Potion"] = {
                materials = {
                    ["Minor Healing Potion"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rage Potion"] = {
                materials = {
                    ["Sharp Claw"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Swiftness Potion"] = {
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Blackmouth Oil"] = {
                materials = {
                    ["Oily Blackmouth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Water Breathing"] = {
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Wisdom"] = {
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Giant Growth"] = {
                materials = {
                    ["Deviate Fish"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Swim Speed Potion"] = {
                materials = {
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blackmouth Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Holy Protection Potion"] = {
                materials = {
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Healing Potion"] = {
                materials = {
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Minor Magic Resistance Potion"] = {
                materials = {
                    ["Mageroyal"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Mana Potion"] = {
                materials = {
                    ["Mageroyal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Poison Resistance"] = {
                materials = {
                    ["Large Venom Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Strong Troll's Blood Potion"] = {
                materials = {
                    ["Bruiseweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Briarthorn"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fire Oil"] = {
                materials = {
                    ["Firefin Snapper"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Empty Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Defense"] = {
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Shadow Protection Potion"] = {
                materials = {
                    ["Grave Moss"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Firepower"] = {
                materials = {
                    ["Fire Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Lesser Agility"] = {
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Swiftthistle"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Ogre's Strength"] = {
                materials = {
                    ["Earthroot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Free Action Potion"] = {
                materials = {
                    ["Blackmouth Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Healing Potion"] = {
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mana Potion"] = {
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Invisibility Potion"] = {
                materials = {
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Shadow Oil"] = {
                materials = {
                    ["Fadeleaf"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Grave Moss"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Fire Protection Potion"] = {
                materials = {
                    ["Small Flame Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fire Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Fortitude"] = {
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Great Rage Potion"] = {
                materials = {
                    ["Large Fang"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Kingsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mighty Troll's Blood Potion"] = {
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bruiseweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Agility"] = {
                materials = {
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Protection Potion"] = {
                materials = {
                    ["Wintersbite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Frost Power"] = {
                materials = {
                    ["Wintersbite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Nature Protection Potion"] = {
                materials = {
                    ["Liferoot"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Stranglekelp"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Defense"] = {
                materials = {
                    ["Wild Steelbloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Lesser Invisibility"] = {
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Catseye Elixir"] = {
                materials = {
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fadeleaf"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Frost Oil"] = {
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wintersbite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Mana Potion"] = {
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Oil of Immolation"] = {
                materials = {
                    ["Firebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Goblin Rocket Fuel"] = {
                materials = {
                    ["Firebloom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Volatile Rum"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Magic Resistance Potion"] = {
                materials = {
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Water Breathing"] = {
                materials = {
                    ["Ichor of Undeath"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Superior Healing Potion"] = {
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Lesser Stoneshield Potion"] = {
                materials = {
                    ["Mithril Ore"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Philosophers' Stone"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Black Vitriol"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Wildvine Potion"] = {
                materials = {
                    ["Wildvine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Purple Lotus"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Dreamless Sleep Potion"] = {
                materials = {
                    ["Purple Lotus"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Undead"] = {
                materials = {
                    ["Arthas' Tears"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Arcane Elixir"] = {
                materials = {
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Intellect"] = {
                materials = {
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Khadgar's Whisker"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Invisibility Potion"] = {
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Agility"] = {
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Goldthorn"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Dream Vision"] = {
                materials = {
                    ["Purple Lotus"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gift of Arthas"] = {
                materials = {
                    ["Arthas' Tears"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Blindweed"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Giants"] = {
                materials = {
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gromsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Ghost Dye"] = {
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Purple Dye"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Stonescale Oil"] = {
                materials = {
                    ["Stonescale Eel"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Leaded Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Detect Demon"] = {
                materials = {
                    ["Gromsblood"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Demonslaying"] = {
                materials = {
                    ["Gromsblood"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Greater Firepower"] = {
                materials = {
                    ["Fire Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Firebloom"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Shadow Power"] = {
                materials = {
                    ["Ghost Mushroom"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Limited Invulnerability Potion"] = {
                materials = {
                    ["Blindweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ghost Mushroom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Mighty Rage Potion"] = {
                materials = {
                    ["Gromsblood"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Superior Mana Potion"] = {
                materials = {
                    ["Sungrass"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blindweed"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Superior Defense"] = {
                materials = {
                    ["Stonescale Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Sungrass"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of the Sages"] = {
                materials = {
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of Brute Force"] = {
                materials = {
                    ["Gromsblood"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Major Healing Potion"] = {
                materials = {
                    ["Golden Sansam"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mountain Silversage"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Elixir of the Mongoose"] = {
                materials = {
                    ["Mountain Silversage"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Stoneshield Potion"] = {
                materials = {
                    ["Stonescale Oil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Thorium Ore"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Arcane Elixir"] = {
                materials = {
                    ["Dreamfoil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Mountain Silversage"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Purification Potion"] = {
                materials = {
                    ["Icecap"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Plaguebloom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Arcane Protection Potion"] = {
                materials = {
                    ["Dream Dust"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Fire Protection Potion"] = {
                materials = {
                    ["Elemental Fire"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Frost Protection Potion"] = {
                materials = {
                    ["Elemental Water"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Nature Protection Potion"] = {
                materials = {
                    ["Elemental Earth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Greater Shadow Protection Potion"] = {
                materials = {
                    ["Shadow Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dreamfoil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Major Mana Potion"] = {
                materials = {
                    ["Dreamfoil"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Icecap"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Crystal Vial"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
        },
    },
    ["engineering"] = {
        RECIPES = {
            ["Rough Blasting Powder"] = {
                materials = {
                    ["Rough Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Dynamite"] = {
                materials = {
                    ["Rough Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Crafted Light Shot"] = {
                materials = {
                    ["Rough Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Handful of Copper Bolts"] = {
                materials = {
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Rough Copper Bomb"] = {
                materials = {
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rough Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Arclight Spanner"] = {
                materials = {
                    ["Copper Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Tube"] = {
                materials = {
                    ["Copper Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Rough Boomstick"] = {
                materials = {
                    ["Copper Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wooden Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Crude Scope"] = {
                materials = {
                    ["Copper Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Copper Modulator"] = {
                materials = {
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Blasting Powder"] = {
                materials = {
                    ["Coarse Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Crafted Heavy Shot"] = {
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Coarse Dynamite"] = {
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Linen Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Squirrel"] = {
                materials = {
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Copper Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Target Dummy"] = {
                materials = {
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Silver Contact"] = {
                materials = {
                    ["Silver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Practice Lock"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Flying Tiger Goggles"] = {
                materials = {
                    ["Light Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["EZ-Thro Dynamite"] = {
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Small Seaforium Charge"] = {
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Light Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Bronze Tube"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Weak Flux"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Large Copper Bomb"] = {
                materials = {
                    ["Copper Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Deadly Blunderbuss"] = {
                materials = {
                    ["Copper Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Wooden Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Standard Scope"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Small Bronze Bomb"] = {
                materials = {
                    ["Coarse Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Lovingly Crafted Boomstick"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Handful of Copper Bolts"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Moss Agate"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Shadow Goggles"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Crafted Solid Shot"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Blasting Powder"] = {
                materials = {
                    ["Heavy Stone"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Heavy Dynamite"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Whirring Bronze Gizmo"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Flame Deflector"] = {
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Small Flame Sac"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gnomish Universal Remote"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Flask of Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Silver-plated Shotgun"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Silver Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Ornate Spyglass"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Copper Modulator"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Big Bronze Bomb"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Minor Recombobulator"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bronze Framework"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Moonsight Rifle"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Aquadynamic Fish Attractor"] = {
                materials = {
                    ["Bronze Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Nightcrawlers"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Coarse Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Gold Power Core"] = {
                materials = {
                    ["Gold Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Explosive Sheep"] = {
                materials = {
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wool Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Green Tinted Goggles"] = {
                materials = {
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Moss Agate"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Flying Tiger Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Blue Firework"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Green Firework"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Red Firework"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Ice Deflector"] = {
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Strut"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Discombobulator Ray"] = {
                materials = {
                    ["Whirring Bronze Gizmo"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Jumper Cables"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Whirring Bronze Gizmo"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Flask of Oil"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Shadowgem"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Portable Bronze Mortar"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Iron Strut"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Medium Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Gyrochronatom"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Blasting Powder"] = {
                materials = {
                    ["Solid Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Solid Dynamite"] = {
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Compact Harvest Reaper Kit"] = {
                materials = {
                    ["Iron Strut"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Gyromatic Micro-Adjustor"] = {
                materials = {
                    ["Steel Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Iron Grenade"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Bright-Eye Goggles"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Accurate Scope"] = {
                materials = {
                    ["Bronze Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Advanced Target Dummy"] = {
                materials = {
                    ["Iron Strut"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Flash Bomb"] = {
                materials = {
                    ["Blue Pearl"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Silk Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Craftsman's Monocle"] = {
                materials = {
                    ["Heavy Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Big Iron Bomb"] = {
                materials = {
                    ["Iron Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heavy Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Silver Contact"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["SnowMaster 9000"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Snowball"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Frost Oil"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Tube"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Land Mine"] = {
                materials = {
                    ["Heavy Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Iron Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Repair Kit"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Unstable Trigger"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["EZ-Thro Dynamite II"] = {
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Mageweave Cloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Large Seaforium Charge"] = {
                materials = {
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Gnomish Cloaking Device"] = {
                materials = {
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Lesser Moonstone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mechanical Dragonling"] = {
                materials = {
                    ["Bronze Framework"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Iron Strut"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gyrochronatom"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Fire Goggles"] = {
                materials = {
                    ["Green Tinted Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Heavy Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Blunderbuss"] = {
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Mithril Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Elemental Fire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Hi-Impact Mithril Slugs"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Deadly Scope"] = {
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thick Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Casing"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Frag Bomb"] = {
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Catseye Ultra Goggles"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Catseye Elixir"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Heavy-bore Rifle"] = {
                materials = {
                    ["Mithril Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Heavy Stock"] = {
                        count = 1,
                        fromVendor = true,
                    },
                    ["Mithril Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Citrine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Parachute Cloak"] = {
                materials = {
                    ["Bolt of Mageweave"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Shadow Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Spellpower Goggles Xtreme"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Rose Colored Goggles"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Deepdive Helmet"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Tigerseye"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Malachite"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Hi-Explosive Bomb"] = {
                materials = {
                    ["Mithril Casing"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Sniper Scope"] = {
                materials = {
                    ["Mithril Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Gyro-Shot"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Solid Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Green Lens"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 8,
                        fromVendor = false,
                    },
                    ["Jade"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Aquamarine"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Heart of the Wild"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Wildvine"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Blasting Powder"] = {
                materials = {
                    ["Dense Stone"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dense Dynamite"] = {
                materials = {
                    ["Dense Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Salt Shaker"] = {
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Unstable Trigger"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Mithril Mechanical Dragonling"] = {
                materials = {
                    ["Mithril Bar"] = {
                        count = 14,
                        fromVendor = false,
                    },
                    ["Heart of Fire"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Inlaid Mithril Cylinder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Goblin Rocket Fuel"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Snake Burst Firework"] = {
                materials = {
                    ["Dense Blasting Powder"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Deeprock Salt"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Truesilver Transformer"] = {
                materials = {
                    ["Truesilver Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Earth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Elemental Air"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Grenade"] = {
                materials = {
                    ["Thorium Widget"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Rifle"] = {
                materials = {
                    ["Mithril Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Mithril Casing"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Deadly Scope"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Widget"] = {
                materials = {
                    ["Thorium Bar"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Alarm-O-Bot"] = {
                materials = {
                    ["Thorium Bar"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Goblin Jumper Cables XL"] = {
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Transformer"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Fused Wiring"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Ironweb Spider Silk"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Lifelike Mechanical Toad"] = {
                materials = {
                    ["Living Essence"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Spellpower Goggles"] = {
                materials = {
                    ["Thick Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                    ["Star Ruby"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Powerful Seaforium Charge"] = {
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Refreshing Spring Water"] = {
                        count = 1,
                        fromVendor = true,
                    },
                },
            },
            ["Major Recombobulator"] = {
                materials = {
                    ["Thorium Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Transformer"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 2,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Rifle"] = {
                materials = {
                    ["Thorium Tube"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dark Iron Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                    ["Deadly Scope"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Blue Sapphire"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Large Opal"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Masterwork Target Dummy"] = {
                materials = {
                    ["Mithril Casing"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Tube"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Truesilver Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Rugged Leather"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Tube"] = {
                materials = {
                    ["Thorium Bar"] = {
                        count = 6,
                        fromVendor = false,
                    },
                },
            },
            ["Dark Iron Bomb"] = {
                materials = {
                    ["Thorium Widget"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dark Iron Bar"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 3,
                        fromVendor = false,
                    },
                    ["Runecloth"] = {
                        count = 3,
                        fromVendor = false,
                    },
                },
            },
            ["Thorium Shells"] = {
                materials = {
                    ["Thorium Bar"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Dense Blasting Powder"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
            ["Master Engineer's Goggles"] = {
                materials = {
                    ["Fire Goggles"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Huge Emerald"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Enchanted Leather"] = {
                        count = 4,
                        fromVendor = false,
                    },
                },
            },
            ["Voice Amplification Modulator"] = {
                materials = {
                    ["Delicate Arcanite Converter"] = {
                        count = 2,
                        fromVendor = false,
                    },
                    ["Gold Power Core"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Thorium Widget"] = {
                        count = 1,
                        fromVendor = false,
                    },
                    ["Large Opal"] = {
                        count = 1,
                        fromVendor = false,
                    },
                },
            },
        },
    },
}