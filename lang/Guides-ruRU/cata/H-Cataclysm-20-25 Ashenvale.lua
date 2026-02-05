local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

if GetLocale() ~= "ruRU" then return end
RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27 Ashenvale
#next 27-31 Northern Stranglethorn
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-60 (H) << mop
#subweight 10000

step
    #optional
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кулгом Кровавым Брызгом|r
    .gossipoption 111683 >>Летите на заставу Мор'шан
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .subzoneskip 1703
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13866 >>Сдайте На заставу!
    .accept 13612 >>Примите Оборона Мор'шан
    .accept 13618 >>Примите Найти Гората!
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 28493 >>Сдайте Приказ вождя: Ясеневый лес!
    .accept 13612 >>Примите Оборона Мор'шан
    .accept 13618 >>Примите Найти Гората!
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .accept 13612 >>Примите Оборона Мор'шан
    .accept 13618 >>Примите Найти Гората!
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трууном|r
    .accept 13615 >>Примите Пустые колчаны
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Диной Полумесяц|r
    .accept 13613 >>Примите Спасение павших
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гортом Кровавым Полетом|r
    .fp The Mor'shan Rampart >> Откройте перелет на заставе Мор'шан
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>Убейте |cRXP_ENEMY_застрельщиков из Ясеневого леса|r и |cRXP_ENEMY_лучников из Ясеневого леса|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >> |cRXP_WARN_Используйте|r |T133690:0|t[Целебную мазь] |cRXP_WARN_на|r |cRXP_FRIENDLY_раненых защитниках Мор'шан|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>Соберите |cRXP_PICK_стрелы|r с земли
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горатом|r
    .turnin 13618 >>Сдайте Найти Гората!
    .accept 13619 >>Примите Последнее донесение
    .target Gorat
step
    #label Skirmishers
    #loop
    .goto 63,68.816,82.328,0
    .waypoint 63,66.454,85.871,50,0
    .waypoint 63,70.033,85.211,50,0
    .waypoint 63,68.816,82.328,50,0
    .waypoint 63,67.731,82.870,50,0
    .waypoint 63,66.784,84.708,50,0
    >>Убейте |cRXP_ENEMY_застрельщиков из Ясеневого леса|r и |cRXP_ENEMY_лучников из Ясеневого леса|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #label MorshanDefenders
    #loop
    .goto 63,66.934,86.130,0
    .waypoint 63,65.370,85.300,20,0
    .waypoint 63,66.934,86.130,20,0
    .waypoint 63,66.813,84.329,20,0
    .waypoint 63,67.587,83.172,20,0
    .waypoint 63,69.001,83.160,20,0
    .waypoint 63,68.994,86.080,20,0
    .waypoint 10,40.760,12.633,20,0
    .waypoint 63,65.280,86.817,20,0
    .use 45001 >> Используйте |T133690:0|t[Целебную мазь] на |cRXP_FRIENDLY_раненых защитниках Мор'шан|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #loop
    .goto 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2082.40015,1365.00000,15,0
    .waypoint 1440/1,-2105.19995,1352.90002,15,0
    .waypoint 1440/1,-2154.69995,1411.90002,15,0
    .waypoint 1440/1,-2240.50000,1383.09998,15,0
    .waypoint 1440/1,-2280.10010,1393.00000,15,0
    .waypoint 1440/1,-2315.60010,1391.40002,15,0
    .waypoint 1440/1,-2341.69995,1376.00000,15,0
    .waypoint 1440/1,-2344.50000,1410.59998,15,0
    >>Соберите |cRXP_PICK_стрелы|r с земли
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13612 >>Сдайте Оборона Мор'шан
    .turnin 13619 >>Сдайте Последнее донесение
    .accept 13620 >>Примите К Дине, живо!
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трууном|r
    .turnin 13615 >>Сдайте Пустые колчаны
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Диной Полумесяц|r
    .turnin 13620 >>Сдайте К Дине, живо!
    .turnin 13613 >>Сдайте Спасение павших
    .accept 13621 >>Примите Месть Гората
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >> |cRXP_WARN_Используйте|r |T134719:0|t[Насыщенную кровь Гората] |cRXP_WARN_на|r |cRXP_FRIENDLY_Горате|r
    .timer 103,Gorat's Vengeance RP
    .use 45023
step
    .goto 63,65.72,82.20
    >>Следуйте за |cRXP_FRIENDLY_духом Гората|r и убейте |cRXP_ENEMY_капитана Элендилада|r, когда он появится
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13621 >>Сдайте Месть Гората
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трууном|r
    .accept 13628 >>Примите Есть древесина?
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    >>Получите у него |cRXP_LOOT_Поводья Кадрака|r
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>Сядьте верхом на |cRXP_FRIENDLY_Брутуска|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,Got Wood? RP
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горкой|r
    .turnin 13628 >>Сдайте Есть древесина?
    .accept 13640 >>Примите Талант руководителя
    .target Gorka
step
    #loop
    .goto 1440/1,-2385.00000,1520.30005,0
    .goto 1440/1,-2437.60010,1554.80005,30,0
    .goto 1440/1,-2417.50000,1496.09998,30,0
    .goto 1440/1,-2385.00000,1520.30005,30,0
    .goto 1440/1,-2373.19995,1467.50000,30,0
    .goto 1440/1,-2383.90015,1405.90002,30,0
    .goto 1440/1,-2323.00000,1496.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_деморализованными батраками|r
    >>|cRXP_WARN_Следуйте за ними и защищайте их от|r |cRXP_ENEMY_ловчих из Ясеневого леса|r |cRXP_WARN_, пока они рубят лес. Собирайте |cRXP_LOOT_свежесрубленную древесину|r |cRXP_WARN_когда она появляется|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горкой|r
    .turnin 13640 >>Сдайте Талант руководителя
    .accept 13651 >>Примите Нужно немного масла
    .target Gorka
step
    #completewith next
    >>Убейте |cRXP_ENEMY_Острокогтя|r, если он жив. Заберите |T136063:0|t[|cRXP_LOOT_Коготь Острокогтя|r] и используйте его, чтобы начать задание
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 1440/1,-2566.90015,1799.70007,0
    .waypoint 1440/1,-2514.19995,1700.09998,50,0
    .waypoint 1440/1,-2566.90015,1799.70007,50,0
    .waypoint 1440/1,-2615.00000,1843.20007,50,0
    .waypoint 1440/1,-2497.90015,1864.70007,50,0
    .waypoint 1440/1,-2522.19995,1952.50000,50,0
    .waypoint 1440/1,-2606.50000,1940.30005,50,0
    .waypoint 1440/1,-2615.00000,1855.50000,50,0
    >>Убивайте |cRXP_ENEMY_гниющую слизь|r. Собирайте с нее |cRXP_LOOT_Природное масло|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горкой|r
    .turnin 13651 >>Сдайте Нужно немного масла
    .accept 13653 >>Примите Кризис на заставе Расщепленного Дерева
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>Поговорите с |cRXP_FRIENDLY_Горкой|r
    .timer 79,Crisis at Splintertree RP
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>Вернитесь на заставу Мор'шан вместе с |cRXP_FRIENDLY_Горкой|r
    >>|cRXP_WARN_Убедитесь, что вы не верхом!|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13653 >>Сдайте Кризис на заставе Расщепленного Дерева
    .target Kadrak
    .accept 13712 >>Примите На выручку!
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>Поговорите с |cRXP_FRIENDLY_Кадраком|r, чтобы отправиться на Заставу Расщепленного Дерева
    .timer 110,To the Rescue! RP
    >>|cRXP_WARN_Этот квест может баговать! Пропустите этот шаг, если это так|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>Прибудьте на Заставу Расщепленного Дерева
    >>|cRXP_WARN_Этот квест может баговать! Пропустите этот шаг, если это так|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13712 >>Сдайте На выручку!
    .accept 13803 >>Примите Кровь слабых
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .accept 13803 >>Примите Кровь слабых
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>Отправляйтесь на Заставу Расщепленного Дерева
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вульгрой|r
    .fp >>Откройте перелет на Заставе Расщепленного Дерева
    .target Vhulgra
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Курай'бином|r
    .accept 6503 >>Примите Дозорные Ясеневого леса
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тавернщицей Кайлиск|r
    .home >>Установите камень возвращения на Заставу Расщепленного Дерева
    .target Innkeeper Kaylisk
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Валушей|r
    .accept 26448 >>Примите Уничтожить Легион
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дураком|r в пещере
    .turnin 13803 >>Сдайте Кровь слабых
    .accept 13805 >>Примите Прямо в сердце!
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пикселем|r
    .accept 13801 >>Примите Мертвые эльфы идут
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разрушителем с заставы Расщепленного Дерева|r
    .accept 13730 >>Примите Игры с огнем Скверны
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>Убивайте |cRXP_ENEMY_демонов|r на Холме Огня Скверны
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>С одного из |cRXP_ENEMY_демонов|r могут выпасть |T134943:0|t[|cRXP_LOOT_Дьявольские планы|r]. Используйте их, чтобы начать задание
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Примите Дьявольские планы
    .isQuestTurnedIn 13712
step
    #label FelFires
    #loop
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,30,0
    .waypoint 63,84.297,67.684,30,0
    .waypoint 63,83.339,66.328,30,0
    .waypoint 63,82.818,66.955,30,0
    .waypoint 63,81.928,66.385,30,0
    .waypoint 63,81.788,65.245,30,0
    .waypoint 63,80.768,64.565,30,0
    .waypoint 63,80.654,67.347,30,0
    .waypoint 63,81.829,69.984,30,0
    .use 45478 >>|cRXP_WARN_Используйте|r |T237030:0|t[Укрепленную канистру] |cRXP_WARN_на зеленом пламени|r
    .complete 13730,1 --7/7 Fel Fires Siphoned
    .isQuestTurnedIn 13712
step
    #label KillDemons
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,50,0
    .waypoint 63,84.297,67.684,50,0
    .waypoint 63,83.339,66.328,50,0
    .waypoint 63,82.818,66.955,50,0
    .waypoint 63,81.928,66.385,50,0
    .waypoint 63,81.788,65.245,50,0
    .waypoint 63,80.768,64.565,50,0
    .waypoint 63,80.654,67.347,50,0
    .waypoint 63,81.829,69.984,50,0
    >>Убивайте |cRXP_ENEMY_демонов|r на Холме Огня Скверны
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>Убейте |cRXP_ENEMY_Острокогтя|r. Заберите |T136063:0|t[|cRXP_LOOT_Коготь Острокогтя|r] и используйте его, чтобы начать задание
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>Убейте |cRXP_ENEMY_дозорных Ясеневого леса|r
    >>|cRXP_WARN_Они в незаметности возле деревьев|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>Войдите в Непроглядную пучину
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>Убейте |cRXP_ENEMY_отрекшихся хранителей|r и |cRXP_ENEMY_отрекшихся друидов|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >> |cRXP_WARN_Используйте|r |T134840:0|t[Оскверненную кровь калдорай] |cRXP_WARN_в центре пещеры|r
    .complete 13805,1 --1/1 Forest Heart Corrupted
    .isQuestTurnedIn 13712
step
    #loop
    .goto 63,76.929,74.847,0
    .waypoint 63,75.394,75.203,15,0
    .waypoint 63,75.842,76.211,15,0
    .waypoint 63,76.208,75.300,15,0
    .waypoint 63,76.929,74.847,15,0
    .waypoint 63,77.356,75.219,15,0
    .waypoint 63,77.359,75.949,15,0
    .waypoint 63,76.722,75.943,15,0
    .waypoint 63,77.401,74.644,15,0
    >>Закончите убивать |cRXP_ENEMY_отрекшихся хранителей|r и |cRXP_ENEMY_отрекшихся друидов|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>Убейте |cRXP_ENEMY_Острокогтя|r. Заберите |T136063:0|t[|cRXP_LOOT_Коготь Острокогтя|r] и используйте его, чтобы начать задание
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 63,74.504,72.562,0
    .waypoint 63,74.504,72.562,30,0
    .waypoint 63,71.936,73.893,30,0
    .waypoint 63,71.127,73.817,30,0
    .waypoint 63,71.392,72.955,30,0
    .waypoint 63,71.921,70.364,30,0
    .waypoint 63,72.913,70.286,30,0
    .waypoint 63,73.638,70.814,30,0
    .waypoint 63,74.243,69.532,30,0
    .waypoint 63,75.577,70.316,30,0
    .waypoint 63,74.493,72.447,30,0
    >>Закончите убивать |cRXP_ENEMY_дозорных Ясеневого леса|r
    >>|cRXP_WARN_Они в незаметности возле деревьев|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
    .isQuestTurnedIn 13712
step
    #loop
    .goto 1440/1,-2557.50000,1751.50000,0
    .waypoint 1440/1,-2525.19995,1684.30005,40,0
    .waypoint 1440/1,-2557.50000,1751.50000,40,0
    .waypoint 1440/1,-2578.90015,1805.80005,40,0
    .waypoint 1440/1,-2494.19995,1868.70007,40,0
    .waypoint 1440/1,-2416.10010,1835.40002,40,0
    .waypoint 1440/1,-2387.90015,1787.09998,40,0
    .waypoint 1440/1,-2480.90015,1737.70007,40,0
    >>Убейте |cRXP_ENEMY_Острокогтя|r. Заберите |T136063:0|t[|cRXP_LOOT_Коготь Острокогтя|r] и используйте его, чтобы начать задание
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >> Камень возвращения на Заставу Расщепленного Дерева
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пикселем|r
    .turnin 13801 >>Сдайте Мертвые эльфы идут
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13805 >>Сдайте Прямо в сердце!
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Примите Плохие новости
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадраком|r
    .turnin 13805 >>Сдайте Прямо в сердце!
    .accept 13808 >>Примите Миссия невыполнима
    .accept 13848 >>Примите Плохие новости
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разрушителем с заставы Расщепленного Дерева|r
    .turnin 13730 >>Сдайте Игры с огнем Скверны
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разрушителем с заставы Расщепленного Дерева|r
    .turnin 13730 >>Сдайте Игры с огнем Скверны
    .accept 13751 >>Примите Ни слова!
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Курай'бином|r
    .turnin 6503 >>Сдайте Дозорные Ясеневого леса
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Валушей|r
    .turnin 26448 >>Сдайте Уничтожить Легион
    .turnin 26447 >>Сдайте Дьявольские планы
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Валушей|r
    .turnin 26448 >>Сдайте Уничтожить Легион
    .target Valusha
    .isQuestTurnedIn 13712
--step
    --.goto 63,73.16,60.10
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    --.accept 26449 >>Accept Never Again!
    --.target Valusha
    --.isQuestTurnedIn 26447
    --Not worth doing

    --Could go straight to Zoram Strand from here. The 13751 chain is bad xp/hr (13751/13797/13798/13841/13842)

step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дураком|r в пещере
    .turnin 13751 >>Сдайте Ни слова!
    .accept 13797 >>Примите Грязные дела
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>Собирайте |cRXP_PICK_обломки камней|r, разбросанные по пещере, чтобы получить |cRXP_LOOT_куски руды|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дураком|r
    .turnin 13797 >>Сдайте Грязные дела
    .accept 13798 >>Примите Смертоносный дождь
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >> |cRXP_WARN_Заберитесь на башню и используйте|r |T134569:0|t[Проклятую руду] |cRXP_WARN_на|r |cRXP_ENEMY_яростных древнях|r |cRXP_WARN_и|r |cRXP_ENEMY_атакующих эльфах|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дураком|r
    .turnin 13798 >>Сдайте Смертоносный дождь
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разрушителем с заставы Расщепленного Дерева|r
    .accept 13841 >>Примите Тысяча извинений
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_Используйте|r |T133639:0|t[Секретный сигнальный порошок] |cRXP_WARN_у Тлеющей жаровни|r
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Крокком|r
    .turnin 13808 >>Сдайте Миссия невыполнима
    .accept 13815 >>Примите Сплошные пни
    .accept 13865 >>Примите Мокрое дело
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>Убейте |cRXP_ENEMY_разведчиков Ясеневого леса|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >> |cRXP_WARN_Используйте|r |T132399:0|t[Топор с заставы Расщепленного Дерева], |cRXP_WARN_чтобы срубить|r |cRXP_FRIENDLY_дубы Ясеневого леса|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>Убейте |cRXP_ENEMY_Эндолара|r, |cRXP_ENEMY_Арминона|r и |cRXP_ENEMY_Доринара|r
    .goto 63,85.46,56.04
    .complete 13865,1 --1/1 Protector Endolar slain
    .goto 63,85.74,57.97
    .complete 13865,3 --1/1 Protector Arminon slain
    .goto 63,85.36,60.68
    .complete 13865,2 --1/1 Protector Dorinar slain
    .mob Protector Endolar
    .mob Protector Arminon
    .mob Protector Dorinar
step
    #questguide
    #label ChopSomeTrees
    .goto 63,86.51,54.67
    .use 45807 >> |cRXP_WARN_Используйте|r |T132399:0|t[Топор с заставы Расщепленного Дерева], |cRXP_WARN_чтобы срубить|r |cRXP_FRIENDLY_дубы Ясеневого леса|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>Закончите убивать |cRXP_ENEMY_разведчиков Ясеневого леса|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >> Отправляйтесь в Каньон Гибели Демона
step
    #questguide
    .goto 63,89.75,76.72
    >>Убейте |cRXP_ENEMY_Горганнона|r. Заберите его |cRXP_LOOT_клинок|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>Убейте |cRXP_ENEMY_Диаторуса Искателя|r. Заберите его |cRXP_LOOT_копье|r.
    >>|cRXP_WARN_Он находится за первым мостом, который вы встретите после входа в пещеру|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Крокком|r
    .use 45710 >>|cRXP_WARN_Используйте|r |T133639:0|t[Секретный сигнальный порошок] |cRXP_WARN_у Тлеющей жаровни, чтобы призвать|r |cRXP_FRIENDLY_Крокка|r
    .turnin 13815 >>Сдайте Сплошные пни
    .turnin 13865 >>Сдайте Мокрое дело
    .accept 13870 >>Примите Лучше не бывает
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Надзирателем Гортаком|r в лесозаготовке Песни Войны
    .turnin 13870 >>Сдайте Лучше не бывает
    .accept 13871 >>Примите Охрана!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>Выбегайте наружу и поверните налево. Убейте |cRXP_ENEMY_убийцу|r, который нападет на вас
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Надзирателем Гортаком|r
    .turnin 13871 >>Сдайте Охрана!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стражем Менерином|r
    .accept 13873 >>Примите Последняя просьба Шилы
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стражем Гуртаром|r
    .turnin 13873 >>Сдайте Последняя просьба Шилы
    .accept 13875 >>Примите Просьба Гуртара
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>Соберите |cRXP_PICK_колючие кровопийки|r с земли
    >>|cRXP_WARN_Их много вдоль дороги к Заставе Расщепленного Дерева|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>Используйте |T134892:0|t[Косу из волос орка], чтобы создать |cRXP_LOOT_Венок из кровопиек|r
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Разрушителем с заставы Расщепленного Дерева|r
    .turnin 13875 >>Сдайте Просьба Гуртара
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Валушей|r
    .turnin 26449 >>Сдайте Никаких демонов!
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Локком Окарром|r
    .accept 13806 >>Примите Демоническая повинность
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пикселем|r
    .accept 6441 >>Примите Рога сатиров
    .target Pixel
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>Отправляйтесь на север в Сатирнаар
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>Убивайте |cRXP_ENEMY_сатиров|r. Собирайте с них |cRXP_LOOT_рога|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tНажмите на фиолетовые |cRXP_FRIENDLY_ритуальные камни|r
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>Закончите убивать |cRXP_ENEMY_сатиров|r. Собирайте с них |cRXP_LOOT_рога|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Пикселем|r
    .turnin 6441 >>Сдайте Рога сатиров
    .target Pixel
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Локком Окарром|r
    .turnin 13806 >>Сдайте Демоническая повинность
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вульгрой|r
    .gossipoption 111682 >> Летите на Зорамское взморье
    .timer 165, Zoram Strand, Ashenvale
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вульгрой|r
    .gossipoption 111682 >> Летите на Зорамское взморье
    .timer 165, Zoram Strand, Ashenvale
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>Отправляйтесь на заставу Зорам'гар
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Андруком|r
    .fp >>Откройте перелет на заставе Зорам'гар
    .target Andruk
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Командиром Гримфангом|r
    .turnin 13848 >>Сдайте Плохие новости
    .accept 13890 >>Примите Поддерживать огонь
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дагруном Ярость Молота|r
    .accept 13883 >>Примите Мерзкие обломки корабля
    .accept 26890 >>Примите Сущность Аку'май
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Марукаем|r
    .accept 6442 >>Примите Наги на Зорамском взморье
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тавернщиком Дурасом|r
    .home >>Установите камень возвращения на заставу Зорам'гар
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Муглашем|r
    >>|cRXP_WARN_Это начнет задание сопровождения. Будьте осторожны, оно сложное|r
    .accept 6641,1 >> Примите Ворша Хлыст
    .target Muglash
step
    #completewith LitLightHouse
    >>Убивайте |cRXP_ENEMY_наг из клана Гнева Вод|r. Собирайте их |cRXP_LOOT_головы|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,9.66,27.64
    >>Следуйте за |cRXP_FRIENDLY_Муглашем|r. Нажмите на |cRXP_PICK_Жаровню наг|r, когда доберетесь туда
    >>|cRXP_WARN_Будут появляться волны|r |cRXP_ENEMY_наг|r. |cRXP_WARN_Будьте осторожны, когда появится|r |cRXP_ENEMY_Ворша|r, |cRXP_WARN_он сильно бьет|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #completewith next
    >>Собирайте |cRXP_LOOT_затонувший металлолом|r со дна океана
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>Убивайте |cRXP_ENEMY_гидр-хлыстохвостов|r. Собирайте их |cRXP_LOOT_жир|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>Закончите собирать |cRXP_LOOT_затонувший металлолом|r со дна океана
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >> Идите к горну на заставе Зорам'гар
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_Используйте|r |T237338:0|t[Жир гидры-хлыстохвоста], |cRXP_WARN_чтобы создать|r |cRXP_LOOT_Масло гидры-хлыстохвоста|r
    >>|cRXP_WARN_Для этого вы должны находиться у горна на заставе Зорам'гар|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дагруном Ярость Молота|r
    .turnin 13883 >>Сдайте Мерзкие обломки корабля
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>Поднимитесь на верхний этаж маяка и зажгите огонь
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>Закончите убивать |cRXP_ENEMY_наг из клана Гнева Вод|r. Собирайте их |cRXP_LOOT_головы|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Командиром Гримфангом|r
    .turnin 13890 >>Сдайте Поддерживать огонь
    .accept 13920 >>Примите Прежде чем вы уйдете...
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гонцом Песни Войны|r
    .turnin 6641 >>Сдайте Ворша Хлыст
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Марукаем|r
    .turnin 6442 >>Сдайте Наги на Зорамском взморье
    .accept 13901 >>Примите Глубокое отчаяние
    .target Marukai
step
    #loop
    .goto 1440/1,394.10001,3549.50000,0
    .waypoint 1440/1,682.60004,3480.60010,50,0
    .waypoint 1440/1,584.60004,3343.60010,50,0
    .waypoint 1440/1,394.10001,3549.50000,50,0
    .waypoint 1440/1,558.50000,3604.00000,50,0
    .waypoint 1440/1,661.20001,3772.90015,50,0
    .waypoint 1440/1,643.00000,3932.40015,50,0
    >>Убивайте |cRXP_ENEMY_диких оленей|r. Собирайте их |cRXP_LOOT_мясо|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>Спрыгните вниз в Непроглядную Пучину
    .subzoneskip 5517
step
    #completewith next
    >>Соберите |cRXP_PICK_сапфир Аку'май|r со стен
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Убейте |cRXP_ENEMY_жриц прилива из Непроглядной Пучины|r
    .complete 13901,1 --6/6 Blackfathom Tide Priestesses slain
    .mob Blackfathom Tide Priestess
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Закончите собирать |cRXP_PICK_сапфир Аку'май|r со стен
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >> Камень возвращения на Зорамское взморье
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Командиром Гримфангом|r
    .turnin 13920 >>Сдайте Прежде чем вы уйдете...
    .accept 13923 >>Примите На дозорный пост Адского Крика
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Марукаем|r
    .turnin 13901 >>Сдайте Глубокое отчаяние
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дагруном Ярость Молота|r
    .turnin 26890 >>Сдайте Сущность Аку'май
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Андруком|r
    .gossipoption 111691 >>Летите на Дозорный пост Адского Крика
    .target Andruk
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тракой|r
    .fp >>Откройте перелет на Дозорном посту Адского Крика
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тавернщицей Линкасой|r
    .home >>Установите камень возвращения на Дозорный пост Адского Крика
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .turnin 13923 >>Сдайте На дозорный пост Адского Крика
    .accept 13936 >>Примите Тупой и еще тупее
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Карангом Амаккаром|r
    .accept 216 >>Примите Меж двух огней
    .target Karang Amakkar
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Твидлом|r
    .turnin 13936 >>Сдайте Тупой и еще тупее
    .accept 13942 >>Примите Кто-то подложил нам бомбу
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .accept 13943 >>Примите Передышка
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мицувой|r
    .accept 6462 >>Примите Талисман троллей
    .target Mitsuwa
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>Убивайте |cRXP_ENEMY_офицеров из Астранаара|r и |cRXP_ENEMY_застрельщиков из Астранаара|r
    >>Собирайте |cRXP_PICK_Поцелованную луной глину|r с земли
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_фурболгов из племени Колючего Меха|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>Войдите во Владения Колючего Меха
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>Обыщите |cRXP_PICK_сундуки троллей|r на земле, чтобы найти |cRXP_LOOT_талисманы троллей|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Руулом|r в глубине пещеры. Это начнет задание сопровождения
    .accept 6482 >> Примите Свободу Руулу
    .target Ruul Snowhoof
step
    .goto 63,40.68,33.21,20,0
    .goto 63,40.29,32.25,20,0
    .goto 63,39.41,31.00,20,0
    .goto 63,38.28,30.68,20,0
    .goto 63,37.39,32.74,30,0
    .goto 63,37.30,34.49,30,0
    .goto 63,38.73,36.86,50,0
    .goto 63,38.35,38.55
    >>Сопроводите |cRXP_FRIENDLY_Руула|r из Деревни Колючего Меха
    >>|cFFFCDC00Будьте осторожны! 3|r |cRXP_ENEMY_фурболга|r |cFFFCDC00появятся, когда вы пройдете половину пещеры, и еще 3 — у ворот деревни|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    .goto 63,39.45,36.62
    >>Закончите убивать |cRXP_ENEMY_фурболгов из племени Колючего Меха|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .turnin 13943 >>Сдайте Передышка
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Карангом Амаккаром|r
    .turnin 216 >>Сдайте Меж двух огней
    .target Karang Amakkar
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Твидлом|r
    .turnin 13942 >>Сдайте Кто-то подложил нам бомбу
    .accept 13944 >>Примите Маленький рост, большие проблемы
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мицувой|r
    .turnin 6462 >>Сдайте Талисман троллей
    .target Mitsuwa
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_Используйте|r |T133711:0|t[Самодельную взрывчатку Твидла] |cRXP_WARN_у сломанной повозки|r
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .turnin 13944 >>Сдайте Маленький рост, большие проблемы
    .accept 13947 >>Примите Разнесем Астранаар!
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тракой|r
    .gossipoption 111697 >>Сядьте на ветрокрыла, чтобы бомбить Астранаар
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>Используйте |T133711:0|t[Сброс взрывчатки] на |cRXP_ENEMY_часовых Астранаара|r и |cRXP_ENEMY_метателей Астранаара|r
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    .cast vehicle,65481 >>|cRXP_WARN_Используйте|r |T136011:0|t[Возвращение на базу!], |cRXP_WARN_чтобы прилететь обратно на Дозорный пост Адского Крика|r
    .subzoneskip 4691
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .turnin 13947 >>Сдайте Разнесем Астранаар!
    .accept 13958 >>Примите Критическое состояние!
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Твидлом|r
    .accept 13974 >>Примите Крошечный сверток Твидла
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бройком|r
    .accept 13879 >>Примите Грозовая вершина
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>Отправляйтесь на Грозовую вершину
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стиквадом|r
    .turnin 13879 >>Сдайте Грозовая вершина
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арктанусом|r
    .accept 13884 >>Примите Погаси огонь
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Корой|r
    .accept 13880 >>Примите Горячая лава
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_Если вы потеряете своего|r |cRXP_FRIENDLY_ледяного волноплеска|r|cRXP_WARN_, поговорите с|r |cRXP_FRIENDLY_Арктанусом|r |cRXP_WARN_снова, чтобы получить нового|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>Убейте |cRXP_ENEMY_лавовых бушующих элементалей|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,30,0
    .waypoint 1440/1,-1165.50000,2678.50000,30,0
    .waypoint 1440/1,-1048.50000,2761.10010,30,0
    .waypoint 1440/1,-1122.09998,2828.30005,30,0
    .waypoint 1440/1,-1247.30005,2860.00000,30,0
    .waypoint 1440/1,-1300.80005,2733.19995,30,0
    .waypoint 1440/1,-1323.30005,2631.60010,30,0
    .use 46352 >> |cRXP_WARN_Используйте|r |T237588:0|t[Дар Земли] |cRXP_WARN_на|r |cRXP_PICK_лавовых трещинах|r
    .complete 13880,1 --8/8 Lava fissures filled
step
    #questguide
    #label LavaRagers
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,50,0
    .waypoint 1440/1,-1165.50000,2678.50000,50,0
    .waypoint 1440/1,-1048.50000,2761.10010,50,0
    .waypoint 1440/1,-1122.09998,2828.30005,50,0
    .waypoint 1440/1,-1247.30005,2860.00000,50,0
    .waypoint 1440/1,-1300.80005,2733.19995,50,0
    .waypoint 1440/1,-1323.30005,2631.60010,50,0
    >>Закончите убивать |cRXP_ENEMY_лавовых бушующих элементалей|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арктанусом|r
    .turnin 13884 >>Сдайте Погаси огонь
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Корой|r
    .turnin 13880 >>Сдайте Горячая лава
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Смерчем|r
    .accept 13888 >>Примите Смерч
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Смерчем|r снова, чтобы начать бой с |cRXP_ENEMY_лордом Магматаром|r
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>Убейте |cRXP_ENEMY_лорда Магматара|r
    >>|cRXP_WARN_Используйте|r |T252174:0|t[Небесную молнию] |cRXP_WARN_и|r |T236154:0|t[Месть Смерча] |cRXP_WARN_по кулдауну|r
    >>|cRXP_WARN_Используйте|r |T135833:0|t[Устранение пламени], |cRXP_WARN_когда на вас наложен|r |T135817:0|t[Жертвенный огонь лорда]
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Стиквадом|r
    .turnin 13888 >>Сдайте Смерч
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >> Отправляйтесь в Приют Серебряного Ветра
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .turnin 2 >>Сдайте Коготь Острокогтя
    .accept 13967 >>Примите Прореживание... стада?
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .accept 13967 >>Примите Прореживание... стада?
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Укротителем ветров Шошоком|r
    .fp >>Откройте перелет в Приюте Серебряного Ветра
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Флузом|r
    .turnin 13974 >>Сдайте Крошечный сверток Твидла
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Тарканом|r
    .accept 25 >>Примите Остынь!
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Флузом|r
    .accept 13977 >>Примите Массовое производство
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кромулой|r
    .accept 26416 >>Примите Добро пожаловать в джунгли
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кровавым стражем Альдо Камнепадом|r
    .accept 25945 >>Примите Мы пришли сюда ради одной цели. Ну, может, двух...
    .target Blood Guard Aldo Rockrain
    --Stonetalon Breadcrumb
step
    #loop
    .goto 1440/1,-1432.70007,2296.40015,0
    .waypoint 1440/1,-1405.90002,2233.69995,50,0
    .waypoint 1440/1,-1432.70007,2296.40015,50,0
    .waypoint 1440/1,-1569.30005,2259.90015,50,0
    .waypoint 1440/1,-1581.09998,2184.90015,50,0
    .waypoint 1440/1,-1530.30005,2218.90015,50,0
    >>Убивайте |cRXP_ENEMY_фурболгов|r. Собирайте их |cRXP_LOOT_уши|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .turnin 13967 >>Сдайте Прореживание... стада?
    .accept 6621 >>Примите Король племени Мерзкого Леса
    .target Senani Thunderheart
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .turnin 2 >>Сдайте Коготь Острокогтя
    .turnin 13967 >>Сдайте Прореживание... стада?
    .accept 6621 >>Примите Король племени Мерзкого Леса
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .turnin 13967 >>Сдайте Прореживание... стада?
    .accept 6621 >>Примите Король племени Мерзкого Леса
    .target Senani Thunderheart
step
    .goto 63,56.37,63.54
    .use 16972 >> |cRXP_WARN_Используйте|r |T237588:0|t[Дар Земли] |cRXP_WARN_на кургане тотемов и защищайте его от наступающих|r |cRXP_ENEMY_фурболгов|r
    >>Убейте |cRXP_ENEMY_вождя Мургута|r, когда он появится. Обыщите |cRXP_PICK_корзину|r, чтобы найти |cRXP_LOOT_тотем Мургута|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_водных элементалей|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 1440/1,-1079.70007,1994.20007
    >>Убейте |cRXP_ENEMY_Тайдресс|r. Заберите у нее |T136222:0|t[|cRXP_LOOT_Сферу оскверненной воды|r]. Используйте ее, чтобы начать задание
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
    .mob Tideress
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>Закончите убивать |cRXP_ENEMY_водных элементалей|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бригадиром Джинкс|r
    .turnin 13977 >>Сдайте Массовое производство
    .accept 13980 >>Примите Они где-то там!
    .accept 13983 >>Примите Сколоти себе гроб
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>Убейте |cRXP_ENEMY_Урсангуса|r. Заберите у него |T132941:0|t[|cRXP_LOOT_Лапу Урсангуса|r] и используйте ее, чтобы начать задание
    >>|cRXP_WARN_Он ходит неподалеку|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    #completewith next
    >>Убейте |cRXP_ENEMY_убийц из Ясеневого леса|r
    .use 46776 >>|cRXP_WARN_Они в незаметности! Используйте|r |T133023:0|t[Очки Джинкс], |cRXP_WARN_чтобы обнаружить их|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-589.79999,2194.10010,40,0
    .waypoint 1440/1,-628.10004,2297.69995,40,0
    >>Собирайте |cRXP_PICK_бронзовые шестеренки|r, |cRXP_PICK_запорные механизмы|r и |cRXP_PICK_медную обшивку|r с земли
    .complete 13983,1 --3/3 Bronze Cog
    .complete 13983,3 --5/5 Locking Bolt
    .complete 13983,2 --3/3 Copper Plating
step
    #label KillAssassins
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-685.79999,2128.40015,40,0
    .waypoint 1440/1,-726.40002,2037.50000,40,0
    >>Закончите убивать |cRXP_ENEMY_убийц из Ясеневого леса|r
    .use 46776 >>|cRXP_WARN_Они в незаметности! Используйте|r |T133023:0|t[Очки Джинкс], |cRXP_WARN_чтобы обнаружить их|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>Убейте |cRXP_ENEMY_Урсангуса|r. Заберите у него |T132941:0|t[|cRXP_LOOT_Лапу Урсангуса|r] и используйте ее, чтобы начать задание
    >>|cRXP_WARN_Он ходит неподалеку|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бригадиром Джинкс|r
    .turnin 13980 >>Сдайте Они где-то там!
    .turnin 13983 >>Сдайте Сколоти себе гроб
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сенани Громовое Сердце|r
    .turnin 6621 >>Сдайте Король племени Мерзкого Леса
    .target Senani Thunderheart
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Тарканом|r
    .turnin 25 >>Сдайте Остынь!
    .turnin 23 >>Сдайте Лапа Урсангуса
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >> Отправляйтесь в Приют Рейнвуд
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таггом|r
    .turnin 13958 >>Сдайте Критическое состояние!
    .accept 13962 >>Примите Патовая ситуация
    .target Thagg
step
    #completewith next
    >>Убейте |cRXP_ENEMY_Шадумбру|r. Заберите у нее |T132225:0|t[|cRXP_LOOT_Голову Шадумбры|r] и используйте ее, чтобы начать задание
    >>|cRXP_ENEMY_Шадумбра|r ходит неподалеку
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,62.04,51.41
    >>Убейте |cRXP_ENEMY_хранителя Ордануса|r на верхнем этаже здания
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>Убейте |cRXP_ENEMY_Шадумбру|r. Заберите у нее |T132225:0|t[|cRXP_LOOT_Голову Шадумбры|r] и используйте ее, чтобы начать задание
    >>|cRXP_ENEMY_Шадумбра|r ходит вокруг здания
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таггом|r
    .turnin 13962 >>Сдайте Патовая ситуация
    .target Thagg
step
    #completewith FlytoSP
    .hs >> Камень возвращения на Дозорный пост Адского Крика
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>Отправляйтесь на Дозорный пост Адского Крика
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Капитаном Гоггатом|r
    >>|cRXP_WARN_Он ходит кругами|r
    .turnin 24 >>Сдайте Голова Шадумбры
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тракой|r
    .fly Splintertree Post >>Летите на Заставу Расщепленного Дерева
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ямой Снежное Копыто|r
    .turnin 6482 >> Сдайте Свободу Руулу
    .target Yama Snowhoof
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мастоком Вилхиссом|r
    .accept 1918 >>Примите Оскверненная стихия
    .turnin 1918 >>Сдайте Оскверненная стихия
    .target Mastok Wrilehiss
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>Отмените Коготь Острокогтя, так как его уже некуда сдать
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вульгрой|r
    .fly Orgrimmar >>Летите в Оргриммар
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue Cata/Warlock Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Идите к Расселине Теней
step << Shaman Cata/Druid Cata/Paladin Cata/Warrior Cata/Hunter Cata/Priest Cata
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >> Идите на Аллею Мудрости
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гордулом|r
    .trainer >> Изучите классовые заклинания
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Реккулом|r.
    .vendor >>|cRXP_BUY_Закупитесь|r |T132273:0|t[Ядами]
    .target Rekkul
step << Shaman Cata
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Сахи Певицей Облаков|r
    .trainer >> Изучите классовые заклинания
    .target Sahi Cloudsinger
step << Druid Cata
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шаллой Белый Лист|r
    .trainer >> Изучите классовые заклинания
    .target Shalla Whiteleaf
step << Mage Cata
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Утел'най|r
    .trainer >> Изучите классовые заклинания
    .target Uthel'nay
step << Mage Cata
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зирази Звездочетом|r
    .train 3567 >>Train |T135759:0|t[Teleport: Orgrimmar]
    .train 3563 >>Train |T135766:0|t[Teleport: Undercity]
    .train 3566 >>Train |T135765:0|t[Teleport: Thunder Bluff]
    .train 32272 >>Train |T135761:0|t[Teleport: Silvermoon]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage Cata
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хортусом|r
    .collect 17031,20 >>|cRXP_BUY_Купите стак|r |T134419:0|t[Рун телепортации] |cRXP_BUY_у него|r
    .target Horthus
step << Priest Cata
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Провидицей Ливатой|r
    .trainer >> Изучите классовые заклинания
    .target Seer Liwatha
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Миркетом|r
    .trainer >> Изучите классовые заклинания
    .target Mirket
step << Paladin Cata
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Солнечным Скитальцем Атомо|r
    .trainer >> Изучите классовые заклинания
    .target Sunwalker Atohmo
step << Hunter Cata
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нохи Странницей Равнин|r
    .trainer >> Изучите классовые заклинания
    .target Nohi Plainswalker
step << Warrior Cata
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Наху Яростным Копытом|r
    .trainer >> Изучите классовые заклинания
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эйтриггом|r в Крепости Громмаш
    .turnin 13841 >>Сдайте Тысяча извинений
    .accept 13842 >>Примите Искупление Дредхеда
    .target Eitrigg
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тавернщицей Гришкой|r
    .home >>Установите камень возвращения в Оргриммар
    .target Innkeeper Gryshka
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дорасом|r
    .fly Splintertree Post >>Летите на Заставу Расщепленного Дерева
    .target Doras
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Дураком|r в пещере
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>Следуйте за |cRXP_ENEMY_Дураком|r, пока он не станет враждебным, затем убейте его
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >> Камень возвращения в Оргриммар
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>Летите в Оргриммар
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вульгрой|r
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Эйтриггом|r
    .turnin 13842 >>Сдайте Искупление Дредхеда
    .target Eitrigg
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бортом|r
    .turnin 26416 >>Сдайте Добро пожаловать в джунгли
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бортом|r
    .accept 26417 >>Примите Северная Тернистая долина: Павшая империя
    .target Bort
    .isQuestTurnedIn 26416
    .isNotOnQuest 28688
    ]])