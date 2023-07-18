RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Allied Race Starting Zones
#name Allied Race Starting Zone
#next RestedXP Horde 10-60\1 BfA Intro

<< HighmountainTauren DK/ZandalariTroll DK/Nightborne DK/MagharOrc DK/Vulpera DK/Pandaren DK/HighmountainTauren/Nightborne/ZandalariTroll


step << HighmountainTauren !DeathKnight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r
    .goto 652,54.85,63.18
    .accept 49773 >>Accept For the Horde
    .target Mayla Highmountain
step << HighmountainTauren !DeathKnight
    #completewith next
    .goto 652,46.02,63.78
    .zone 85 >>Take to portal to Orgrimmar
step << HighmountainTauren !DeathKnight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r
    .goto 85,39.40,79.54
    .turnin 49773 >>Turn in For the Horde
    .target Ambassador Blackguard
step << !DK Nightborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Arcanist Thalyssra|r
    .goto 680,59.34,85.53
    .accept 49933 >>Accept For the Horde
    .target First Arcanist Thalyssra
step << !DK Nightborne
    #completewith next
    .goto 680,58.18,87.32
    .zone 85 >>Take to portal to Orgrimmar
step << !DK Nightborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r
    .goto 85,39.40,79.54
    .turnin 49933 >>Turn in For the Horde
    .target Ambassador Blackguard
step << ZandalariTroll !DeathKnight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Talanji|r
    .goto 1165,49.93,46.64
    .accept 55137 >>Accept For the Horde
    .target Queen Talanji
step << ZandalariTroll !DeathKnight
    #completewith next
    .goto 1165,49.94,43.85
    .zone 85 >>Take the portal to Orgrimmar
step << ZandalariTroll !DeathKnight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r
    .goto 85,39.40,79.54
    .turnin 55137 >>Turn in For the Horde
    .target Ambassador Blackguard
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r
    .goto 1602,49.59,90.70
    .accept 58877 >>Accept Death's Power Grows
    .target The Lich King
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>Use the |cffffff00[ExtraActionButton]|r
    .goto 1602,49.59,90.70
    .complete 58877,1 --1/1 Fealty sworn
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Lich King|r. Select any Two-Hand Weapon
    .goto 1602,49.59,90.70
    .turnin 58877 >>Turn in Death's Power Grows
    .accept 58903 >>Accept Defender of Azeroth
    .target The Lich King
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .goto 1602,50.78,71.06
    .complete 58903,1 --1/1 Speak with Highlord Darion Mograine
    .target Highlord Darion Mograine
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>Use the Death Gate
    .goto 1602,49.91,39.06
    .complete 58903,3 --1/1 Listen to your commander (Optional)
    .complete 58903,2 --1/1 Death Gate used
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    #completewith next
    +|cfff78300Mount up|r
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_PICK_Warchief's Command Board|r
    .goto 85,49.67,76.46
    .complete 58903,4 --1/1 Warchief's Command Board
step << HighmountainTauren DeathKnight/ZandalariTroll DeathKnight/Nightborne DeathKnight/MagharOrc DK/Vulpera DK
    >>Click on the quest in your quest log
    .goto 85,49.67,76.46
    .turnin 58903 >>Turn in Defender of Azeroth
]])
