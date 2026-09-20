local addonName, addon = ...
local L = addon.locale.Get

addon.professions = addon.professions or {}

addon.professions.locale = {}

addon.professions.locale.PROFESSION_NAMES = {
    --EN
    ["Alchemy"] = "alchemy",
    ["Blacksmithing"] = "blacksmithing",
    ["Enchanting"] = "enchanting",
    ["Engineering"] = "engineering",
    ["Herbalism"] = "herbalism",
    ["Leatherworking"] = "leatherworking",
    ["Mining"] = "mining",
    ["Skinning"] = "skinning",
    ["Tailoring"] = "tailoring",
    --DE
    ["Alchemie"] = "alchemy",
    ["Schmiedekunst"] = "blacksmithing",
    ["Verzauberkunst"] = "enchanting",
    ["Ingenieurskunst"] = "engineering",
    ["Kräuterkunde"] = "herbalism",
    ["Lederverarbeitung"] = "leatherworking",
    ["Bergbau"] = "mining",
    ["Kürschnerei"] = "skinning",
    ["Schneiderei"] = "tailoring",
    --ES
    ["Alquimia"] = "alchemy",
    ["Herrería"] = "blacksmithing",
    ["Encantamiento"] = "enchanting",
    ["Ingeniería"] = "engineering",
    ["Botánica"] = "herbalism",
    ["Marroquinería"] = "leatherworking",
    ["Minería"] = "mining",
    ["Desollar"] = "skinning",
    ["Costura"] = "tailoring",
    --AL
    ["Alquimia"] = "alchemy",
    ["Herrería"] = "blacksmithing",
    ["Encantamiento"] = "enchanting",
    ["Ingeniería"] = "engineering",
    ["Herboristería"] = "herbalism",
    ["Peletería"] = "leatherworking",
    ["Minería"] = "mining",
    ["Desuello"] = "skinning",
    ["Sastrería"] = "tailoring",
    --PT
    ["Alquimia"] = "alchemy",
    ["Ferraria"] = "blacksmithing",
    ["Encantamento"] = "enchanting",
    ["Engenharia"] = "engineering",
    ["Herborismo"] = "herbalism",
    ["Couraria"] = "leatherworking",
    ["Mineração"] = "mining",
    ["Esfolamento"] = "skinning",
    ["Alfaiataria"] = "tailoring",
    --FR
    ["Alchimie"] = "alchemy",
    ["Forge"] = "blacksmithing",
    ["Enchantement"] = "enchanting",
    ["Ingénierie"] = "engineering",
    ["Herboristerie"] = "herbalism",
    ["Travail du cuir"] = "leatherworking",
    ["Minage"] = "mining",
    ["Dépeçage"] = "skinning",
    ["Couture"] = "tailoring",
    --RU
    ["Алхимия"] = "alchemy",
    ["Кузнечное дело"] = "blacksmithing",
    ["Наложение чар"] = "enchanting",
    ["Инженерное дело"] = "engineering",
    ["Травничество"] = "herbalism",
    ["Кожевничество"] = "leatherworking",
    ["Горное дело"] = "mining",
    ["Снятие шкур"] = "skinning",
    ["Портняжное дело"] = "tailoring",
    --KO
    ["연금술"] = "alchemy",
    ["대장기술"] = "blacksmithing",
    ["마법부여"] = "enchanting",
    ["기계공학"] = "engineering",
    ["약초 채집"] = "herbalism",
    ["가죽 세공"] = "leatherworking",
    ["채광"] = "mining",
    ["무두질"] = "skinning",
    ["재봉술"] = "tailoring",
    --CN
    ["炼金术"] = "alchemy",
    ["锻造"] = "blacksmithing",
    ["附魔"] = "enchanting",
    ["工程学"] = "engineering",
    ["草药学"] = "herbalism",
    ["制皮"] = "leatherworking",
    ["采矿"] = "mining",
    ["剥皮"] = "skinning",
    ["裁缝"] = "tailoring",
    --TW
    ["煉金術"] = "alchemy",
    ["鍛造"] = "blacksmithing",
    ["附魔"] = "enchanting",
    ["工程學"] = "engineering",
    ["草藥學"] = "herbalism",
    ["製皮"] = "leatherworking",
    ["採礦"] = "mining",
    ["剝皮"] = "skinning",
    ["裁縫"] = "tailoring",
}

addon.professions.locale.FACTION_NAMES = {
    --EN
    ["Alliance"] = "alliance",
    ["Horde"] = "horde",
    --DE
    ["Allianz"] = "alliance",
    ["Horde"] = "horde",
    --ES
    ["Alianza"] = "alliance",
    ["Horda"] = "horde",
    --AL
    --PT
    ["Aliança"] = "alliance",
    ["Horda"] = "horde",
    --FR
    ["Alliance"] = "alliance",
    ["Horde"] = "horde",
    --RU
    ["Альянс"] = "alliance",
    ["Орда"] = "horde",
    --KO
    ["얼라이언스 연합"] = "alliance",
    ["호드 연합"] = "horde",
    --CN
    ["联盟"] = "alliance",
    ["部落"] = "horde",
    --TW
    ["聯盟"] = "alliance",
    ["部落"] = "horde",
}