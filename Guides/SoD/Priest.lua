if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Penance - 3 (Elwynn Forest)
#title Penance

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Penance - 1 (Dun Morogh)
#title Penance


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T136222:0|t|cRXP_LOOT_[Memory of a Troubled Acolyte]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Target the |cRXP_FRIENDLY_Altar of the Light|r inside to receive the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    >>|cRXP_WARN_If this doesn't work, type /kneel with the |cRXP_FRIENDLY_Altar of the Light|r targetted|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >> |cRXP_WARN_Use the|r |T136222:0|t|cRXP_LOOT_[Memory of a Troubled Acolyte]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Penance]
    .aura -410935
    .use 205951
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Penance - 2 (Shadowglen)
#title Penance

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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Penance - 2 (Durotar)
#title Penance


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Turn in Wisdom of the Loa
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Penance - 2 (Tirisfal)
#title Penance


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Homunculi - 8 (Durotar)
#title Homunculi

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
    >>Kill the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
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
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Homunculi - 7 (Tirisfal Glades)
#title Homunculi

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 402852,1
    >>Kill the |cRXP_ENEMY_Scarlet Warriors|r or the |cRXP_ENEMY_Scarlet Missionaries|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
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
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Shared Pain - 13 (Durotar)
#title Shared Pain

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Shared Pain - 6 (Tirisfal Glades)
#title Shared Pain

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
    .aura -418459
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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Void Plague - 5 (Durotar)
#title Void Plague

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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Void Plague - 6 (Tirisfal Glades)
#title Void Plague

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Prayer of Mending - 6 (Durotar)
#title Prayer of Mending

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
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Prayer of Mending - 10 (Mulgore)
#title Prayer of Mending

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

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Twisted Faith - 10 (Loch Modan)
#title Twisted Faith

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for an |T237281:0|t[|cRXP_LOOT_Offering Coin|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >> |cRXP_WARN_Use the|r |T237281:0|t[|cRXP_LOOT_Offering Coin|r] |cRXP_WARN_at the well inside of the Silverstream Mine|r |cRXP_WARN_to receive the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r] |cRXP_WARN_to train|r |T237566:0|t[Twisted Faith]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Twisted Faith - 14 (Westfall)
#title Twisted Faith

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Kill the |cRXP_ENEMY_Undying Laborer|r. Loot it for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r]
    >>|cRXP_WARN_You must use a Holy spell in order to finish off the|r |cRXP_ENEMY_Undying Laborer|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Undying Laborer|r can spawn at the Gold Coast Quarry and Jangolode Mine|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r] |cRXP_WARN_to train|r |T237566:0|t[Twisted Faith]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Twisted Faith - 18 (Darkshore)
#title Twisted Faith

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Kill |cRXP_ENEMY_Stormscale Myrmidons|r, |cRXP_ENEMY_Stormscale Warriors|r and |cRXP_ENEMY_Stormscale Sorceresses|r. Loot them for a |T236364:0|t[|cRXP_LOOT_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Use the|r |T236364:0|t[|cRXP_LOOT_Shatterspear Offering|r] |cRXP_WARN_at the Shatterspear Idol underwater to receive the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r] |cRXP_WARN_to train|r |T237566:0|t[Twisted Faith]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Shared Pain - 10 (Dun Morogh)
#title Shared Pain

step << Priest
    .goto Loch Modan,77.894,62.236
    >>Kill |cRXP_ENEMY_Captain Beld|r downstairs inside the building. Loot him for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Shared Pain - 6 (Elwynn Forest)
#title Shared Pain

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>Kill |cRXP_ENEMY_Kobold Miners|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Homunculi - 8 (Dun Morogh)
#title Homunculi

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Homunculi - 8 (Elwynn Forest)
#title Homunculi

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>Kill |cRXP_ENEMY_Defias Rogue Wizards|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Homunculi - 8 (Teldrassil)
#title Homunculi

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>Kill |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, a moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Prayer of Mending - 6 (Elwynn Forest)
#title Prayer of Mending

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Join a group with another Priest or Paladin standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin or Priest in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_to learn|r |T135944:0|t[Prayer of Mending]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Prayer of Mending - 8 (Teldrassil)
#title Prayer of Mending

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_Join a group with another Priest or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Druid or Priest in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_to learn|r |T135944:0|t[Prayer of Mending]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Prayer of Mending - 6 (Dun Morogh)
#title Prayer of Mending

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_Join a group with another Priest or Paladin standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin or Priest in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_to learn|r |T135944:0|t[Prayer of Mending]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Word: Death - 10 (Darkshore)
#title Shadow Word: Death

step << Priest
    .goto Darkshore,30.5,47.5
    >>Click the |cRXP_PICK_Remnant|r on the small island. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs
    >>You must /kneel inside one of the following places: A moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you
    .train 402849 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Word - Death - 12 (Loch Modan)
#title Shadow Word: Death

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >> Travel to the Mo'grosh Stronghold in Loch Modan
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_Target the |cRXP_FRIENDLY_Heretic Idol|r to automatically /kneel|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_You will receive the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs
    >>You must /kneel inside one of the following places: A moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you
    .train 402849 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Word: Death - 20 (The Barrens)
#title Shadow Word: Death

step
    #completewith next
    .zone The Barrens >> Trave to The Barrens
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Use |T135894:0|t[Dispel Magic] on the |cRXP_ENEMY_Desert Mirage|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r]
    *|cRXP_WARN_It's a green ghost which patrolls around. Use the RestedXP target macro to target it.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>You must |cRXP_WARN_/kneel|r at one of the following places in front of the altar and talk to the spirit afterwards: Sen'jin or Crossroads |cRXP_WARN_(the shrine locations are marked on your map, you can also find any priest with the buff that can copy them to you)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff this requires you to |cRXP_WARN_/kneel|r infront of a Undead Priest who has |T237569:0|t[Meditation on Undeath], and they must /pray while targeting you
    .train 402849 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>You must |cRXP_WARN_/kneel|r at one of the following places in front of the altar and talk to the spirit afterwards: Sen'jin or Crossroads
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff |cRXP_WARN_/kneel|r at a graveyard to get the |T237569:0|t[Meditation on Undeath] buff |cRXP_WARN_(the shrine and a graveyard are marked on your map, you can also find any priest with the buff that can copy them to you)|r
    .train 402849 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Word: Death - 24 (Silverpine Forest)
#title Shadow Word: Death

step
    #completewith next
    .zone Silverpine Forest >> Trave to the Silverpine Forest
step
    .goto Silverpine Forest,65.8,23.6
    >>Pick up the |cRXP_PICK_Scroll|r behind |cRXP_ENEMY_Thule Ravenclaw|r (lvl 24 elite) for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r]
    *|cRXP_WARN_The scroll is one the second floor. It's easier in a group.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>You must |cRXP_WARN_/kneel|r at one of the following places in front of the altar and talk to the spirit afterwards: Sen'jin or Crossroads |cRXP_WARN_(the shrine locations are marked on your map, you can also find any priest with the buff that can copy them to you)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff this requires you to |cRXP_WARN_/kneel|r infront of a Undead Priest who has |T237569:0|t[Meditation on Undeath], and they must /pray while targeting you
    .train 402849 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs
    >>You must |cRXP_WARN_/kneel|r at one of the following places in front of the altar and talk to the spirit afterwards: Sen'jin or Crossroads
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff |cRXP_WARN_/kneel|r at a graveyard to get the |T237569:0|t[Meditation on Undeath] buff |cRXP_WARN_(the shrine and a graveyard are marked on your map, you can also find any priest with the buff that can copy them to you)|r
    .train 402849 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Twisted Fate - 10 (Silverpine Forest)
#title Twisted Fate

step
    #completewith next
    .zone Silverpine Forest >> Travel to the Silverpine Forest
step
    .train 425215,1
    >>Kill the |cRXP_ENEMY_Wailing Spirit|r. Loot it for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion] |cRXP_WARN_to train|r |T237566:0|t[Twisted Fate]
    >>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_in front of |cRXP_PICK_Loa Shrine|r (in Durotar or The Barrens) or by kneeling in front of another priest with the buff when they /pray for you|r << Troll
    >>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_at a graveyard or by kneeling in front of another priest with the buff when they /pray for you|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Twisted Fate - 10 (The Barrens)
#title Twisted Fate

step
    #completewith next
    .zone The Barrens >> Travel to The Barrens
step
    .train 425215,1
    >>Kill the |cRXP_ENEMY_Razormanes|r. Loot them for the |T236248:0|t[|cRXP_FRIENDLY_Helping Hand]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_Find a dead player or pet that you can ressurect (with |T135955:0|t[Ressurection]) to get the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion]
    .collect 205905,1
step
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion] |cRXP_WARN_to train|r |T237566:0|t[Twisted Fate]
    >>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_in front of |cRXP_PICK_Loa Shrine|r (in Durotar or The Barrens) or by kneeling in front of another priest with the buff when they /pray for you|r << Troll
    >>|cRXP_WARN_You must have a|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buff by typing|r /kneel |cRXP_WARN_at a graveyard or by kneeling in front of another priest with the buff when they /pray for you|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Void Plague - 6 (Elwynn Forest)
#title Void Plague

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Enter Fargodeep Mine
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Void Plague - 6 (Dun Morogh)
#title Void Plague


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Kill |cRXP_ENEMY_Leper Gnomes|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Empowered Renew - 27 (Thousand Needles)
#title Empowered Renew


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>Kill |cRXP_ENEMY_Grimtotem Geomancers|r, |cRXP_ENEMY_Grimtotem Bandits|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Stompers|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r] |cRXP_WARN_to train|r |T236254:0|t[Empowered Renew]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Empowered Renew - 33 (Alterac Mountains)
#title Empowered Renew

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>Travel to |cFFfa9602Alterac Mountains|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for the |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_LOOT_Prophecy of the Quickened Path|r] |cRXP_WARN_to train|r |T236254:0|t[Empowered Renew]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Renewed Hope - 31 (Desolace)
#title Renewed Hope

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >> |cRXP_WARN_You must have|r |T136206:0|t[Mind Control] |cRXP_WARN_trained in order to aquire the|r |T135923:0|t[Renewed Hope] |cRXP_WARN_rune|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_You must be at least level 31 in order to cast|r |T136206:0|t[Mind Control] |cRXP_WARN_on a level 33 |cRXP_ENEMY_Slitherblade Tide Priestess|r later|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>Travel to |cFFfa9602Desolace|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>Kill |cRXP_ENEMY_Slitherblade Nagas|r. Loot them for the |T136222:0|t[|cRXP_LOOT_Unsettling Vision|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +|cRXP_WARN_NOTE: You may only cast|r |T136206:0|t[Mind Control] |cRXP_WARN_on a level 33 |cRXP_ENEMY_Slitherblade Tide Priestess|r. The cast will fail on ones that are level 34|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >> |cRXP_WARN_Cast|r |T136206:0|t[Mind Control] |cRXP_WARN_on a|r |cRXP_ENEMY_Slitherblade Tide Priestess|r
    >>|cRXP_WARN_While it is under the affects of|r |T136206:0|t[Mind Control]|cRXP_WARN_, target YOURSELF and cast|r |T136077:0|t[Meditation on the Abyss] |cRXP_WARN_from the pet action bar|r
    >>|cRXP_WARN_Press Escape afterwards to cancel the|r |T136206:0|t[Mind Control] |cRXP_WARN_and kill the|r |cRXP_ENEMY_Slitherblade Tide Priestess|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_LOOT_Unsettling Vision|r] |cRXP_WARN_to train|r |T135923:0|t[Renewed Hope]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Dispersion 40 (Stranglethorn Vale)
#title Dispersion

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_Find a Rogue with the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune and|r |T338666:0|t[Jani's Charm] |cRXP_WARN_trinket to|r |T133644:0|t[Pick Pocket] |cRXP_WARN_any |cRXP_ENEMY_Bloodscalp Troll|r in Stranglethorn Vale for the|r |T237446:0|t[Mysterious Troll Scroll]|cRXP_WARN_. A Mage must then use a|r |T135933:0|t[Comprehension Charm] |cRXP_WARN_to decipher it for it to become a |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
    >>|cRXP_WARN_Alternatively buy a|r |T237446:0|t[Mysterious Troll Scroll]|r |cRXP_WARN_from the Auction House and have a Mage decipher it, or buy the already |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
    .use 216880 >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r] to start the quest|r
    >>|cRXP_WARN_You may also look for a Priest to share the quest with you|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >> Accept The Troll Scroll
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>Travel to |cFFfa9602Stranglethorn Vale|r
    >>|cRXP_WARN_Ensure you have 2 active running|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs before heading there|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >> Travel to the Ruins of Zul'Kunda
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >> |cRXP_WARN_Use the|r |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r] |cRXP_WARN_at the small fountain|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gan'zulah|r (level 41) and a small pack of |cRXP_ENEMY_Trolls|r around him to get to the small fountain|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Click the |cRXP_PICK_Fount|r which appears. Loot it for the |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r
    .collect 213142,1
step
    .train 425314 >> |cRXP_WARN_Use the|r |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r |cRXP_WARN_to train|r |T237563:0|t[Dispersion]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 79731 >> Turn in The Troll Scroll
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Pain Suppression - 32 (Azeroth)
#title Pain Suppression

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >> Enter The Scarlet Monastery Dungeon: Graveyard
step
    >>Click on the |cRXP_PICK_Tombstone|r near the Headless Horseman's spawn location to collect the |cRXP_LOOT_|T136222:0|t[Graveyard Echo]|r |cRXP_WARN_It is highly recommended to form a group of 5 players for this step.|r
    .link https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Click here for a picture reference.|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>Travel to Arathi Highlands
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>Click on the |cRXP_PICK_Grave|r to collect the |cRXP_LOOT_|T136222:0|t[Arathi Echo]|r on Go'sheks Farm next to the biggest building.
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>Travel to Dustwallow Marsh
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>Click on the |cRXP_PICK_Tombstone|r to collect |cRXP_LOOT_|T136222:0|t[Theramore Echo]|r located near the Alliance graveyard.
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>Travel to |cFFfa9602Swamp of Sorrows|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>Click on the |cRXP_PICK_Grave|r to collect |cRXP_LOOT_|T136222:0|t[Swamp Echo]|r located near a lake next to a tree.
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >> Enter The Scarlet Monastery Dungeon: Library |cRXP_WARN_It is highly recommended to form a group of 5 players for the next steps.|r
step
    .train 402855,1
    .cast 437054 >>Use the |T136222:0|t[Swamp Echo] infront of the Warrior Statue.
    .use 215425
step
    .train 402855,1
    .cast 437053 >>Use the |T136222:0|t[Arathi Echo] infront of the Mage Statue.
    .use 215428
step
    .train 402855,1
    .cast 436952 >>Use the |T136222:0|t[Theramore Echo] infront of the Paladin Statue.
    .use 215425
step
    .train 402855,1
    .cast 437055 >>Use the |T136222:0|t[Graveyard Echo] infront of the Priest Statue.
    .use 215426
step
    .train 402855 >>Click on the Orange Remnant in the center of the room to receive |T135791:0|t|cRXP_FRIENDLY_[Apocryphal Epiphany]|r, use it to learn |T135936:0|t[Pain Suppression]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Eye of the Void - 50 (Azeroth)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>Travel to Hinterlands
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>Click on |cRXP_PICK_|T236407:0|tGlowing Eye|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>Travel to Blasted Lands
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>Click on |cRXP_PICK_|T236407:0|tPulsating Eye|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>Travel to Searing Gorge
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>Click on |cRXP_PICK_|T236407:0|tVibrating Eye|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>Click on |cRXP_PICK_|T236407:0|tBaleful Eye|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>Travel to Feralas
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>Click on |cRXP_PICK_|T236407:0|tBurning Eye|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>Click on |cRXP_PICK_|T236407:0|tOozing Eye|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>Travel to Felwood
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>Click on |cRXP_PICK_|T236407:0|tPiercing Eye|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>Travel to Azshara
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>Target |cRXP_FRIENDLY_Shrine of the Watcher|r
    .emote KNEEL,223590
    .accept 82316,1 >>Accept Seven Eyes I Seek...
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Surge of Light
#name Surge of Light - 40 (Tanaris)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_You may only get the|r |T135981:0|t[Surge of Light] |cRXP_WARN_rune between 9pm-6am in Tanaris.|r
    +You can look into the Stranglethorn Vale when you want to get the rune outside of this timespan.
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 431669,1
step
    .train 431669,1
    >>Kill the |cRXP_ENEMY_Echo of a Lost Soul|r |cRXP_WARN_with Holy or Arcane spells/wands|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_to train|r |T135981:0|t[Surge of Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Surge of Light
#name Surge of Light - 40 (Swamp of Sorrows)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_You may only get the|r |T135981:0|t[Surge of Light] |cRXP_WARN_rune between 9pm-6am in Swamp of Sorrows.|r
    +You can look into the Stranglethorn Vale when you want to get the rune outside of this timespan.
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
    .train 431669,1
step
    .train 431669,1
    >>Kill the |cRXP_ENEMY_Echo of a Lost Soul|r |cRXP_WARN_with Holy or Arcane spells/wands|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_to train|r |T135981:0|t[Surge of Light]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Surge of Light
#name Surge of Light - 40 (The Hinterlands)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_You may only get the|r |T135981:0|t[Surge of Light] |cRXP_WARN_rune between 9pm-6am in The Hinterlands.|r
    +You can look into the Stranglethorn Vale when you want to get the rune outside of this timespan.
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>Travel to The Hinterlands
    .train 431669,1
step
    .train 431669,1
    >>Kill the |cRXP_ENEMY_Echo of a Lost Soul|r |cRXP_WARN_with Holy or Arcane spells/wands|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_to train|r |T135981:0|t[Surge of Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Surge of Light
#name Surge of Light - 40 (Stranglethorn Vale) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_The soul may only spawn after a Blood Moon event. You can also disable the event and run to the waypoint location|r.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
    .train 431669,1
step
    .train 431669,1
    >>Kill the |cRXP_ENEMY_Echo of a Lost Soul|r |cRXP_WARN_with Holy or Arcane spells/wands|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_to train|r |T135981:0|t[Surge of Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Surge of Light
#name Surge of Light - 40 (Stranglethorn Vale) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_You may only get the|r |T135981:0|t[Surge of Light] |cRXP_WARN_rune between 9pm-6am.|r
    +You can look into the Stranglethorn Vale 2 when you want to get the rune outside of this timespan.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
    .train 431669,1
step
    .train 431669,1
    >>Kill the |cRXP_ENEMY_Echo of a Lost Soul|r |cRXP_WARN_with Holy or Arcane spells/wands|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_to train|r |T135981:0|t[Surge of Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Binding Heal
#name Binding Heal - 58 (Western and Eastern Plaguelands)
#next Priest Racials - 60 (Azeroth)

step << Alliance
    #completewith next
    .zone Stormwind City >> Travel to Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .accept 84320 >> Accept Lost Heirloom
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Travel to Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .accept 84405 >> Accept Lost Heirloom
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >> Travel to Western Plaguelands
step
    .goto Western Plaguelands,51.9,82.4,50 >> Travel to the large crypt located next to Sorrow Hill
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_Enter the crypt and go left. Go downstairs and look for a small wooden chest in a small alcove to your right. Loot it for the|r |T133299:0|t[|cRXP_PICK_Family Heirloom|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_Head to the bottom of the crypt. Loot the|r |T133741:0|t[|cRXP_PICK_Family Records|r] |cRXP_WARN_from a Bookshelf to the right and|r |T133735:0|t[|cRXP_PICK_Survivor Journal|r] |cRXP_WARN_from the table on the left|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >> Return to Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .turnin 84320 >> Turn in Lost Heirloom
    .accept 84321 >> Accept Relic of Light
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Return to Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .turnin 84405 >> Turn in Lost Heirloom
    .accept 84406 >> Accept Relic of Light
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_The next quest will require you to loot an item from an elite area. It's possible to do solo but if you're lower level or not very geared consider looking for someone to help you|r
    .zone Western Plaguelands >> Return to Western Plaguelands
step
    .goto Western Plaguelands,48.2,21.7,50 >> Head to Hearthglen, |cRXP_WARN_keep in mind that this is an elite area|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_Enter the Town Hall in Hearthglen and interact with the|r |cRXP_PICK_Scarlet Ledger|r |cRXP_WARN_located on the podium. Watch out as the area is filled with elite mobs|r
    .turnin 84406 >> Turn in Relic of Light << Horde
    .turnin 84321 >> Turn in Relic of Light << Alliance
    .accept 84322 >> Accept Scarlet Research
step
    #completewith next
    >>|cRXP_WARN_The next quest will require you to loot an item from an elite area. It's possible to do solo but if you're lower level or not very geared consider looking for someone to help you|r
    .zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
    .goto Eastern Plaguelands,77.5,81.7,50 >> Travel to Tyr's Hand, |cRXP_WARN_keep in mind that this is an elite area|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_The rune of|r |T237537:0|t[Holy Specialization] |cRXP_WARN_is also located in Tyr's Hand, if you don't want to get it now skip this step|r
    >>|cRXP_WARN_If you want to get it head to the library wing of the building marked on your map and look for a book located on top of a bookshelf. Loot it for the rune. Keep in mind you can't loot it in combat|r
    >>|cRXP_WARN_You can either clear all mobs in the room or die next to the book and release in a spot thats out of line of sight of mobs to loot the rune without having to kill anything|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Holy Specialization|r] to train |T237537:0|t[Holy Specialization]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Enter the bell tower and head to the top floor. Interact with the locked box located there|r
    .turnin 84322 >> Turn in Scarlet Research
    .accept 84323 >> Accept The Prize Within
step
    .goto Eastern Plaguelands,83.6,78.2
    >>Kill any scarlet mobs in Tyr's Hand. Loot them for an |T134245:0|t[|cRXP_LOOT_Artifact Storage Key|r]
    >>|cRXP_WARN_You can skip farming the key and find a rogue with lockpicking of 175+ as they can also open the box for you. Skip this step if you would rather look for a rogue than farm the key|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>Use the |T134245:0|t[|cRXP_LOOT_Artifact Storage Key|r] to unlock the |T133876:0|t[|cRXP_LOOT_Puzzle Box|r] or have a rogue open it for you with lockpicking. Loot it for the |T132874:0|t[|cRXP_LOOT_Shard of Light|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >> Return to Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .turnin 84323 >> Turn in The Prize Within
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Return to Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .turnin 84323 >> Turn in The Prize Within
    .target Dietrich Praice
step
    .train 402853 >> Use the |T135791:0|t[|cRXP_FRIENDLY_Jubilant Epiphany|r] to train |T135883:0|t[|cRXP_FRIENDLY_Binding Heal|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Vampiric Touch
#name Vampiric Touch - 60 (Demon Fall Canyon Dungeon)

step
    #completewith next
    >>The rune of |T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r] drops from the last boss of Demon Fall Canyon the new dungeon added in SoD
    .zone Felwood >> |cRXP_WARN_In order to enter the dungeon you first need a trinket rewarded from a short quest, head to Felwood to begin it|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .accept 84384 >> Accept Demonic Deceptions
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Travel to Winterspring
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>Look for |cRXP_ENEMY_Berserk Owlbeasts|r north of Everlook. Kill them and loot them for the |T237413:0|t[|cRXP_LOOT_Owlbeast Pineal Glands|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >> Return to Felwood
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .turnin 84384 >> Turn in Demonic Deceptions
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +Equip the |T136232:0|t[|cRXP_FRIENDLY_Shadowtooth Illusion Ward|r] in any of your trinket slots. You need it equipped in order to be able to enter the dungeon
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_The rune of|r |T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r] |cRXP_WARN_drops from the last boss of Demon Fall Canyon the new dungeon added in SoD. Start looking for a group for it as you head to Ashenvale|r
    >>If you're flying, fly to Talendris Point in Azshara instead of Astranaar. It's closer to the dungeon entrance << Alliance
    .zone Ashenvale >> Travel to Ashenvale
step
    .goto Ashenvale,84.5,75.0,50 >> Head to the entrance of the Demon Fall Canyon dungeon
step
    >>Clear the dungeon. |T135791:0|t[|cRXP_FRIENDLY_Aperitive Epiphany|r] which teaches you |T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r] drops from the last boss of the dungeon, |cRXP_ENEMY_Hellscream's Phantom|r. |cRXP_WARN_Make sure you loot him for the rune!|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >> Use the |T135791:0|t[|cRXP_FRIENDLY_Aperitive Epiphany|r] to train |T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Extras
#title Priest Racials
#name Priest Racials - 60 (Azeroth)


step
    #completewith next
    >>|cRXP_WARN_The extra priest ability is a server-wide unlock. This means that if someone has already done it on your server you can skip the entire questline and go straight to Karazhan to train your new racial ability. If thats not the case you can use the guide below to be the person who unlocks it for your server!|r
    .zone Deadwind Pass >> Travel to the Deadwind Pass
step
    .goto Deadwind Pass,40.8,78.4
    >>Travel to a small shrine located next to Karazhan
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Divine Apprehension|r at a shrine next to Karazhan to pick which racial ability you would like to choose
    .target Divine Apprehension
step
    #completewith PreQStart
    +This is the begining of the questchain for the server-wide unlock of the additional priest racial. |cRXP_WARN_There's a good chance that it was already completed on your server and you don't need to do the below. Proceed with it only if you want to try the chain or you know that it's not been unlocked yet|r
step
    #completewith QStart
    +|cRXP_WARN_In order to begin this quest you need to have previously done the questline awarding|r |T135883:0|t[|cRXP_FRIENDLY_Binding Heal|r]|cRXP_WARN_. You can find a guide for it in the cloak runes section|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_To turn in the first quest in this chain you will need 4|r |T134855:0|t[|cRXP_LOOT_Stratholme Holy Water|r] |cRXP_WARN_on top of other materials which can be bought from the auction house. Look for a group to run the Stratholme(undead) dungeon|r
    >>|cRXP_WARN_Once inside look for and loot Supply Crates laying on the ground scattered across the instance. They can contain Holy Water but also be decoys which spawn annoying to deal with enemies|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >> Travel to Stormwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy 6 |T133682:0|t[|cRXP_LOOT_Heavy Runecloth Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Healing Potions|r] and 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] from the auction house. You will need them for the first quest in this chain together with the |T134855:0|t[|cRXP_LOOT_Stratholme Holy Water|r] you collected already
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Auctioneer Jaxon
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .accept 84324 >> Accept Diplomatic Overtures
    .turnin 84324 >> Turn in Diplomatic Overtures
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Travel to Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>Buy 6 |T133682:0|t[|cRXP_LOOT_Heavy Runecloth Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Healing Potions|r] and 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] from the auction house. You will need them for the first quest in this chain together with the |T134855:0|t[|cRXP_LOOT_Stratholme Holy Water|r] you collected already
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .accept 84408 >> Accept Diplomatic Overtures
    .turnin 84408 >> Turn in Diplomatic Overtures
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_For the next part of the quest you will need to find an opposite faction priest that is also on the questline in order to progress|r
    .zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_Travel to the|r |cRXP_FRIENDLY_Shrine of Cooperation|r |cRXP_WARN_located in EPL. Damage one another with the opposite faction priest and then use the|r |T134918:0|t[|cRXP_FRIENDLY_Altruist Ward|r] |cRXP_WARN_item you received from turning in the previous quest to heal each other|r
    >>If done correctly the |cRXP_FRIENDLY_Shrine of Cooperation|r will offer you a quest, accept it
    .accept 84325 >> Accept Shrine of Cooperation << Alliance
    .accept 84410 >> Accept Shrine of Cooperation << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >> Return to Stormwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] and 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] from the auction house. You will need them to turnin a quest soon. These items might be expensive
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Auctioneer Jaxon
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .turnin 84325 >> Turn in Shrine of Cooperation
    .accept 84326 >> Accept Diplomat Ring
    .turnin 84326 >> Turn in Diplomat Ring
    .accept 84327 >> Accept A Diplomatic Mission
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Return to Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>Buy 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] and 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] from the auction house. You will need them to turnin a quest soon. These items might be expensive
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .turnin 84410 >> Turn in Shrine of Cooperation
    .accept 84411 >> Accept Diplomat Ring
    .turnin 84411 >> Turn in Diplomat Ring
    .accept 84412 >> Accept A Diplomatic Mission
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_To complete this quest you will once again need to find an opposite faction priest and have them use their|r |T133396:0|t[|cFF0070FFDiplomat Ring|r] |cRXP_WARN_on you while you're next to the gates of Stormwind. This will make the city guards no longer attack you and let you safely enter the enemy capital|r
    >>|cRXP_WARN_Keep in mind that opposing faction players can still atack you on a PvP server!|r
    .zone Elwynn Forest >> Travel to the gates of Stormwind
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Have an opposing faction priest use their |T133396:0|t[|cFF0070FFDiplomat Ring|r] on you so the city guards don't attack you and head to the Stormwind Cathedral. |cRXP_WARN_You can still be attacked by other players!|r
    >>|cRXP_WARN_The opposing faction priest has to escort you to the quest giver or you will lose the diplomatic immunity buff|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .turnin 84412 >> Turn in Diplomatic Mission
    .accept 84413 >> Accept Repairing the Shard
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_To complete this quest you will once again need to find an opposite faction priest and have them use their|r |T133396:0|t[|cFF0070FFDiplomat Ring|r] |cRXP_WARN_on you while you're next to the gates of Orgrimmar. This will make the city guards no longer attack you and let you safely enter the enemy capital|r
    >>|cRXP_WARN_Keep in mind that opposing faction players can still atack you on a PvP server!|r
    .zone Durotar >> Travel to the gates of Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Have an opposing faction priest use their |T133396:0|t[|cFF0070FFDiplomat Ring|r] on you so the city guards don't attack you and head to the Valley of Spirits. |cRXP_WARN_You can still be attacked by other players!|r
    >>|cRXP_WARN_The opposing faction priest has to escort you to the quest giver or you will lose the diplomatic immunity buff|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .turnin 84327 >> Turn in A Diplomatic Mission
    .accept 84328 >> Accept Repairing the Shard
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Start looking for a group for the Dire Maul West dungeon, for the next quest you need to kill|r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_one of the dungeon bosses|r
    .zone Feralas >> Travel to Feralas
step
    .goto Feralas,59.1,43.2,100 >> Enter the Dire Maul area
step
    .goto Feralas,60.4,30.2
    >>Enter Dire Maul West and kill |cRXP_ENEMY_Magister Kalendris|r. Loot him for the book |T133737:0|t[|cRXP_LOOT_Applied Divinity|r]. He is located in the ghost section of the dungeon
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_To complete this quest you will once again need to find an opposite faction priest and have them use their|r |T133396:0|t[|cFF0070FFDiplomat Ring|r] |cRXP_WARN_on you while you're next to the gates of Stormwind. This will make the city guards no longer attack you and let you safely enter the enemy capital|r
    >>|cRXP_WARN_Keep in mind that opposing faction players can still atack you on a PvP server!|r
    .zone Elwynn Forest >> Travel to the gates of Stormwind
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Have an opposing faction priest use their |T133396:0|t[|cFF0070FFDiplomat Ring|r] on you so the city guards don't attack you and head to the Stormwind Cathedral. |cRXP_WARN_You can still be attacked by other players!|r
    >>|cRXP_WARN_The opposing faction priest has to escort you to the quest giver or you will lose the diplomatic immunity buff|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r in the Stormwind Cathedral
    .turnin 84413 >> Turn in Repairing the Shard
    .accept 84329 >> Accept The Convocation Assembles
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_To complete this quest you will once again need to find an opposite faction priest and have them use their|r |T133396:0|t[|cFF0070FFDiplomat Ring|r] |cRXP_WARN_on you while you're next to the gates of Orgrimmar. This will make the city guards no longer attack you and let you safely enter the enemy capital|r
    >>|cRXP_WARN_Keep in mind that opposing faction players can still atack you on a PvP server!|r
    .zone Durotar >> Travel to the gates of Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Have an opposing faction priest use their |T133396:0|t[|cFF0070FFDiplomat Ring|r] on you so the city guards don't attack you and head to the Valley of Spirits. |cRXP_WARN_You can still be attacked by other players!|r
    >>|cRXP_WARN_The opposing faction priest has to escort you to the quest giver or you will lose the diplomatic immunity buff|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dietrich Praice|r in the Valley of Spirits
    .turnin 84328 >> Turn in Repairing the Shard
    .accept 84329 >> Accept The Convocation Assembles
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >> Travel to the Deadwind Pass
step
    .goto Deadwind Pass,40.8,78.4
    >>Travel to a small shrine located next to Karazhan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethra Slagheart|r at a shrine next to Karazhan
    .turnin 84329 >> Turn in The Convocation Assembles
step
    +Turning in the above quest should complete the questline and unlock the ability to train a racial priest ability from another race server-wide
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Soul Warding
#name Soul Warding - 60 (Stratholme)

step
    #completewith next
    >>|cRXP_WARN_In order to complete this rune you will need to complete a couple tasks within the Stratholme Dungeon (both living and dead sides). Start looking for a group for it|r
    .zone Eastern Plaguelands >> Travel to the Eastern Plaguelands
step
    .goto Eastern Plaguelands,47.8,24.2
    >>Enter Stratholme
    >>|cRXP_WARN_READ THIS SECTION CAREFULLY AS THIS RUNE QUEST IS A BIT UNCONVENTIONAL|r
    >>In order to get the rune you will need to gather 3 essences from bosses in Stratholme. The bosses who have the essnces are |cRXP_WARN_RANDOM AND DIFFERENT EVERY DUNGEON ID|r. In order to know which bosses have the essence in your run you need to find clues located on pillars within the Scarlet Building in the live side of the dungeon
    >>To gather the essences you will need 3 |T134799:0|t[|cRXP_LOOT_Stratholme Shadow Jars|r] which drop from the [|cRXP_PICK_Postbox Parcels|r] within the dungeon, to open the [|cRXP_PICK_Postboxes|r] in the first place you need to kill the |cRXP_ENEMY_Stratholme Courier|r to get the |T134237:0|t[|cRXP_LOOT_Postbox Keys|r] from him
    >>Once you gathered all the essences you have to return to the pillars with the clues and activate them with the essence corresponding to the hint they gave. This spawns an orb next to them which you have to loot to get the rune
    +|cRXP_WARN_Click here once you read the above and want to see more details about which clue corresponds to which boss. You can always go back to this step if you need to|r
step
    >>|cRXP_WARN_Here are the clues and bosses which they correspond to:|r
    >>Among the dead this mortal dwells with acolytes and icy spells = Maleki the Pallid
    >>A specter cursed to guard a tower No solace gained from Wealth or power = Baroness Anastari
    >>The ancient kingdom rediscovered. Trades one master for another = Nerub'enkan
    >>Built from flesh, a sin of science hunted by Forsakens finest = Ramstein the Gorger
    >>The people looked to him to lead in their hour of greatest need = Magistrate Barthilas
    >>A champion of wicked malice, hulking horrors guard his palace = Baron Rivendare
    >>Holy furor purges sin and yet a shadow lurks within. = Balnazzar
    >>The smell of brimstone fills the room. This zealot greets you with a boom. = Cannon Master Willey
    +|cRXP_WARN_Click here if you want to see the recommended efficient order of steps you can take to complete this quest. You can always go back to this step to read the clues again if you need to|r
step
    >>|cRXP_WARN_The efficient order of business while doing this quest is as follows:|r
    >>1. Start in the Living side of the dungeon
    >>2. Loot three [|cRXP_PICK_Postbox Parcels|r] for the |T134799:0|t[|cRXP_LOOT_Stratholme Shadow Jars|r], the jars are unique so have a different player pick up each one
    >>3. Clear to the pedestal room and figure out which bosses have the essences in your ID
    >>4. Collect all the essences as you progress through the dungeon
    >>5. Return to the pedestal room and activate each one with its essence
    >>6. Loot the orb that spawns for your rune
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >> Use the |T135791:0|t[|cRXP_FRIENDLY_Oneiric Epiphany|r] to train |T135948:0|t[|cRXP_FRIENDLY_Soul Warding|r]
    .use 228124
]])
