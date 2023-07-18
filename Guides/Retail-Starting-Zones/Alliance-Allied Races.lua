RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Allied Races << KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
#subgroup Allied Race DK << KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK
#name 3Retail_Allied Races
#displayname Chapter 1 - Dark Iron Dwarf Intro << DarkIronDwarf
#displayname Chapter 1 - Kul Tiran Intro << KulTiran
#displayname Chapter 1 - Lightforged Draenei Intro << LightforgedDraenei
#displayname Chapter 1 - Mechagnome Intro << Mechagnome
#displayname Chapter 1 - Void Elf Intro << VoidElf
#displayname Chapter 1 - New Deathknight Intro << KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK
#next B-Elwynn Forest

<<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf/KulTiran DK/DarkIronDwarf DK/LightforgedDraenei DK/Mechagnome DK/VoidElf DK/Pandaren DK

step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    #completewith next
    .zoneskip 84
    +Press the default 'N' key to open your Talents.|cRXP_WARN_Then, pick the Talent specialization you want.|r 
step <<DarkIronDwarf 
    .goto 1186,56.43,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .accept 51486 >>Accept Fer the Alliance
    .target Moira Thaurissan
    .zoneskip 1602
step <<DarkIronDwarf
    #completewith next
    .goto 1186,59.27,26.52
    .cast 281587 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .zoneskip 1602
step <<DarkIronDwarf
    .goto 84,53.08,15.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 51486 >>Turn in Fer the Alliance
    .target Ambassador Moorgard
    .zoneskip 1602
step <<KulTiran
    .goto 1161,67.71,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine Proudmoore|r
    .accept 55142 >>Accept For the Alliance
    .target Katherine Proudmoore
    .zoneskip 1602
step <<KulTiran
    .goto 1161,67.15,22.9,10,0
    .goto 1161,67.44,21.4,10,0
    .goto 1161,68.87,21.12,10,0
    .goto 1161,70.47,17.11,10,0
    .goto 1161,70.1,16.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stormwind Portal|r
    .complete 55142,1 --1/1 Portal to Stormwind Taken
    .zoneskip 1602
step <<KulTiran 
    .goto 84,53.08,15.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 55142 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .zoneskip 1602
step <<LightforgedDraenei
    .goto 940,49.2,43.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r
    .accept 49772 >>Accept For the Alliance
    .target Captain Fareeya
    .zoneskip 1602
step <<LightforgedDraenei
    .goto 940,54.98,61.47,10,0
    .goto 940,43.32,25.32,10,0
    .goto 84,53.08,15.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Portal|r |cFFfa9602to Stormwind.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 49772 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .zoneskip 1602
step <<Mechagnome
    .goto 1573,18.67,67.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkartonque|r
    .accept 58146 >>Accept For the Alliance
    .target High Tinker Mekkartonque
    .zoneskip 1602
step <<Mechagnome
    .goto 1573,20.5,60.0
    >>Walk |cFFfa9602on the Stormwind Teleportation Unit|r
    .complete 58146,1 --1/1 Teleport to Stormwind
    .zoneskip 1602
step <<Mechagnome
    .goto 84,53.08,15.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 58146 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .zoneskip 1602
step <<VoidElf
    .goto 971,28.5,22.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .accept 49788 >>Accept For the Alliance
    .target Alleria
    .zoneskip 1602
step <<VoidElf
    .goto 971,27.99,21.50,10,0
    .goto 84,53.08,15.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 49788 >>Turn in For the Alliance
    .target Ambassador Moorgard
    .zoneskip 1602
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .skipgossip 1
    .accept 60891 >>Accept Cataclysm: Onward to Adventure in the Eastern Kingdoms
    .target Chromie
step <<DarkIronDwarf
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .isQuestTurnedIn 51486
    .target Hero's Herald
step <<KulTiran
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .isQuestTurnedIn 55142
    .target Hero's Herald
step <<LightforgedDraenei
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .isQuestTurnedIn 49772
    .target Hero's Herald
step <<Mechagnome
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .isQuestTurnedIn 58146
    .target Hero's Herald
step <<VoidElf
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .isQuestTurnedIn 49788
    .target Hero's Herald
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .goto 84,62.10,32.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .accept 7905 >>Accept The Darkmoon Faire
    .dmf
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .goto 84,62.10,32.18
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .skipgossip
    .zoneskip 37
    .dmf
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato|r
    .accept 332 >>Accept Wine Shop Advert
    .target Renato
    .nodmf
step <<KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,10,0
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cFFfa9602in Goldshire.|r
    .fp >>Get the Goldshire Flight Path
    .target Bartlett the Brave
    .nodmf
step <<DK
    .goto 1602,49.55,90.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .accept 58877 >>Accept Death's Power Grows
    .target The Lich King
    .zoneskip 84
step <<DK
    >>Use the [Extra Action Button] |cFFfa9602infront of|r |cRXP_FRIENDLY_The Lich King|r
    .complete 58877,1 --1/1 Fealty sworn
    .target The Lich King
    .isOnQuest 58877
step <<DK
    .goto 1602,49.6,90.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .turnin 58877,1 >>Turn in Death's Power Grows
    .accept 58902 >>Accept Defender of Azeroth << Alliance
    .accept 58903 >>Accept Defender of Azeroth << Horde
    .target The Lich King
    .isQuestComplete 58877
step <<DK
    #completewith next
    +Press the default 'N' key to open your Talents.|cRXP_WARN_Then, pick the Talent specialization you want.|r 
    .zoneskip 84
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    .goto 1602,50.7,71.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Morgraine|r
    .skipgossip
    .complete 58902,1 << Alliance --1/1 Speak with Highlord Darion Mograine 
    .complete 58903,1 << Horde --1/1 Speak with Highlord Darion Mograine
    .target Highlord Darion Morgraine
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    .goto 1602,49.96,39.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Death Gate|r
    .complete 58902,2 << Alliance --1/1 Death Gate Used
    .complete 58903,2 << Horde --1/1 Death Gate Used 
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    .goto 84,67.16,83.4,20,0
    .goto 84,67.51,80.47,20,0
    .goto 84,63.77,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Accept Wine Shop Advert
    .target Renato Gallina
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    .goto 84,62.9,71.8,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Hero's Call Board|r
    .complete 58902,4 --1/1 Hero's Call Board
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_WARN_Select the option to turn in your quest from the pop-up in your quest log.|r
    .turnin 58902 >>Turn in Defender of Azeroth
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    .goto 84,62.81,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald|r
    .accept 46727 >>Accept Tides of War
    .target Hero's Herald
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    +Use Death Gate |cFFfa9602to Acherus:The Ebon Hold|r
    .zoneskip 23
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step <<DK
    .goto 23,82.02,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .accept 58989 >>Accept Runeforging 101
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .target Highlord Darion Mograine
step <<DK
    .goto 23,83.19,48.90
    >>Step onto |cFFfa9602the purple circle|r to teleport.
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .complete 58989,1 --1/1 Use the portal to the 2nd floor
step <<DK
    .goto 23,83.14,45.4
    >>Visit |cFFfa9602the Runeforge|r, open your Spellbook, and apply the 'Fallen Crusader' enchantment to your weapon.
    .complete 58989,2 --Weapon emblazoned (1)
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 53428
step <<DK
    .isOnQuest 58989
    .goto 23,83.25,49.02,5 >>|cRXP_WARN_Step onto |cFFfa9602the purple circle|r to teleport again.|r
step <<DK
    .goto 23,82.02,46.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 58989 >>Turn in Runeforging 101
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .target Highlord Darion Mograine
step <<DK
    #completewith next
    +Use Death Gate |cFFfa9602to Stormwind|r
    >>|cRXP_WARN_You might have to wait shortly on it's CD|r
    .zoneskip 84
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step <<DK
    #veteran
    .goto 84,61.11,70.6
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Fitch|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Fitch
    .target Auctioneer Jaxon
    .target Auctioneer Chilton
    .dmf
    .isQuestTurnedIn 58877 --x New Type of DK Check
step <<DK
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .isQuestTurnedIn 58902 --x New Type of DK Check
step << DK
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
    .isQuestTurnedIn 58902 --x New Type of DK Check
step <<DK
    #label DarkMoonFaire
    .goto 84,62.25,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .accept 7905 >>Accept The Darkmoon Faire
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 58902 --x New Type of DK Check
step <<DK
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
    .skipgossip
    .zoneskip 37
    .dmf
    .isQuestTurnedIn 58902  --x new type of dk check
    .target Darkmoon Faire Mystic Mage
step <<DK 
    .goto 84,64.63,70.45,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Goldshire >>Fly to Goldshire
    .target Dungar Longdrink
    .isQuestTurnedIn 58877 --x New DK Check
    .nodmf
]])
