RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Penance - 3 (Elwynn Forest)

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Kobold Laborers|r. Loot them for a |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Type /kneel in your chatbox while inside of Northshire Abbey|r
    >>|cRXP_WARN_You will receive the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .cast 410958 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] |cRXP_WARN_while you have the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Penance - 1 (Dun Morogh)

step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r. Loot it for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto Dun Morogh,28.923,66.372
    .aura 410935 >>|cRXP_WARN_Target the |cRXP_FRIENDLY_Altar of the Light|r to automatically /kneel|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Altar of the Light|r targeted|r
    >>|cRXP_WARN_You will receive the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .target Altar of the Light
    .train 402862,1
step << Priest
    #season 2
    .cast 410958 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] |cRXP_WARN_while you have the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    .use 205951
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Penance - 2 (Shadowglen)

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r upstairs
    .accept 77574 >> Accept Meditation on Elune
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >> Travel to the moonwell in Shadowglen
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_Once you are at the moonwell, type /kneel in your chatbox|r
    >>|cRXP_WARN_You will receive the|r |T136057:0|t[Meditation on Elune] |cRXP_WARN_buff|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] |cRXP_WARN_while you have the|r |T136057:0|t[Meditation on Elune] |cRXP_WARN_buff|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r upstairs
    .turnin 77574 >> Turn in Meditation on Elune
    .target Shanda
    .train 402862,1
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Penance - 2 (Durotar)


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .accept 77642 >>Accept Wisdom of the Loa
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Travel to the |cRXP_PICK_Loa Altar|r at Sen'Jin Village and type /kneel
    .use 205951 >>Talk to |cRXP_FRIENDLY_Serpent Loa|r as he appears, then use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ken'jai|r
    .turnin 77642 >>Turn in Wisdom of the Loa
    .target Ken'jai

    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Penance - 2 (Tirisfal)


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .accept 77670 >>Accept Meditation on Undeath
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>Enter the graveyard and type /kneel
    .use 205951 >>Use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] as you gain the |T237569:0|t[Meditation on Undeath] buff
    .complete 77670,1 >>Learn Spell: Engrave Gloves - Penance
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duesten|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten

    ]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Homunculi - 8 (Durotar)

step
    .train 402852,1
    #completewith next
    .zone Durotar >>Travel to Durotar
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to |cRXP_FRIENDLY_Serpent Loa|r
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>Kill the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for the |T135975:0|t[cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Now you have to find an Undead Priest with a Loa buff. You have to kneel before him and he has to /pray for you.|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_Kneel at the Sen'jin graveyard|r to get the |T237569:0|t[Meditation on Undeath] buff
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Homunculi - 7 (Tirisfal Glades)

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 402852,1
    >>Kill the |cRXP_ENEMY_Scarlet Warriors|r or the |cRXP_ENEMY_Scarlet Missionaries|r. Loot them for the |T135975:0|t[cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Now you have to find an Undead Priest with a Loa buff. You have to kneel before him and he has to /pray for you to get the |T237569:0|t[Meditation on Undeath] buff.|r
step << Troll
    #completewith next
    .zone Durotar >>Travel to Durotar (take the zeppelin to Orgrimmar)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
step << Undead
    #completewith next
    .zone Durotar >>Travel to Durotar (take the zeppelin to Orgrimmar)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    *|cRXP_WARN_You can also find a Troll Priest with the |T136077:0|t[Meditation on the Loa] buff. Kneel before him and he has to /pray for you|r.
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_Kneel at the Sen'jin graveyard|r to get the |T237569:0|t[Meditation on Undeath] buff
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Shared Pain - 13 (Durotar)

step
    #completewith next
    .zone Durotar >>Travel to Durotar
step
    .train 402854,1 
    >>Kill |cRXP_ENEMY_Makasgar|r or |cRXP_ENEMY_Gazz'uz|r (in the cave), whichever is closest to you (the waypoint leads you to the closest one). Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1 
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Shared Pain - 6 (Tirisfal Glades)

step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 402854,1
    >>Kill the |cRXP_ENEMY_Tirisfal Farmers|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Kneel at the graveyard until you get the buff |T237569:0|t[Meditation on Undeath]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>Travel to Durotar (take the zeppelin to Orgrimmar)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .aura 418459 
    >>|cRXP_WARN_You can also find an Undead Priest with a Loa buff. You have to kneel before him and he has to /pray for you to get the |T237569:0|t[Meditation on Undeath] buff.|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Void Plague - 5 (Durotar)

step
    #completewith next
    .zone Durotar >>Travel to Durotar
step
    .train 425216,1
    >>Kill the |cRXP_ENEMY_Sailors|r and |cRXP_ENEMY_Marines|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Void Plague - 6 (Tirisfal Glades)

step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 425216,1
    >>Kill |cRXP_ENEMY_Gillgar|r. Loot him for the |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Kneel at the graveyard until you get the buff |T237569:0|t[Meditation on Undeath]
step << Troll
    #completewith next
    .zone Durotar >>Travel to Durotar (take the zeppelin to Orgrimmar)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Prayer of Mending - 6 (Durotar)

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r inside Kolkar Crag
    >>|cRXP_WARN_Another player (Priest or Shaman) needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_to train|r |T135944:0|t[Prayer of Mending]
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Prayer of Mending - 10 (Mulgore)

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_Another player (Priest or Shaman) needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_to train|r |T135944:0|t[Prayer of Mending]
]])
