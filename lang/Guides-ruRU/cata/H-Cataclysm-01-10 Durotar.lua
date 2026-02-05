if GetLocale() ~= "ruRU" then return end
RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Долина Испытаний
#next 6-10 Дуротар
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Orc
#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-60 (H) << mop
#subweight 10000


step << !Orc
    #completewith next
    +Вы выбрали руководство, предназначенное для орков. Вам следует выбрать ту же начальную зону, в которой вы начинаете.
step
    .goto 1411,43.29,68.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Калтунком|r
    .accept 25152 >>Принять квест [Твое место в этом мире]
    .target Калтунк
step
    .goto 1411,43.23,68.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горнеком|r
    .turnin 25152 >>Сдать квест [Твое место в этом мире]
    .accept 25126 >>Принять квест [Проба сил]
    .target Горнек
step
    .goto 1411,44.96,65.65,30,0
    .goto 1411,45.09,64.90,30,0
    .goto 1411,43.62,64.74,30,0
    .goto 1411,43.97,63.57
    >>Убивайте |cRXP_ENEMY_Пестрых кабанов|r
    .complete 25126,1 --Пестрый кабан убит (6)
    .mob Пестрый кабан
step
    .goto 1411,43.28,68.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горнеком|r
    .turnin 25126 >>Сдать квест [Проба сил]
    .accept 25172 >>Принять квест [Захватчики в нашем доме]
    .target Горнек
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    >>Убивайте |cRXP_ENEMY_Разведчиков крепости Северной Стражи|r
    >>|cRXP_WARN_Они находятся в состоянии скрытности|r
    .complete 25172,1 --Разведчик крепости Северной Стражи (7)
    .mob Разведчик крепости Северной Стражи
    --VV Check on yard range for these stealthed mobs
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    .xp 2+650 >> Гриндите до 650+/900 опыта
    .mob Разведчик крепости Северной Стражи
step
    .goto 1411,43.27,68.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горнеком|r
    .turnin 25172 >>Сдать квест [Захватчики в нашем доме]
    .accept 25127 >>Принять квест [Жало скорпида]
    .accept 3088 >>Принять [Зашифрованный пергамент] << Rogue
    .accept 3087 >>Принять [Гравированный пергамент] << Hunter
    .accept 25138 >>Принять [Украшенный рунами пергамент] << Mage
    .accept 3089 >>Принять [Покрытый рунами пергамент] << Shaman
    .accept 2383 >> Принять [Простой пергамент] << Warrior
    .accept 3090 >>Принять [Запятнанный пергамент] << Warlock
    .accept 31156 >>Принять [Каллиграфический пергамент] << Monk
    .target Горнек
step << Monk
    .goto 461/1,-4209.900,-618.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гато|r
    .turnin 31156 >>Сдать квест [Каллиграфический пергамент]
    .accept 31157 >>Принять квест [Лапа тигра]
    .target Гато
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Рувагом|r
    .turnin 3088 >>Сдать квест [Зашифрованный пергамент]
    .accept 25141 >>Принять квест [Потрошение]
    .train 2098 >> Обучитесь |T132292:0|t[Потрошению] << Cata
    .target Руваг
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Карранишей|r
    .turnin 3087 >>Сдать квест [Гравированный пергамент]
    .accept 25139 >>Принять квест [Верный выстрел]
    .train 56641 >> Обучитесь |T132213:0|t[Верному выстрелу] << Cata
    .target Карраниша
step << Mage cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акрифой|r
    .turnin 25138 >>Сдать квест [Украшенный рунами пергамент]
    .accept 25149 >>Принять квест [Чародейские стрелы]
    .train 5143 >> Обучитесь |T136096:0|t[Чародейским стрелам] << Cata
    .target Акрифа
step << Mage !cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акрифой|r
    .turnin 25138 >>Сдать квест [Украшенный рунами пергамент]
    .accept 25149 >>Принять квест [Кольцо льда]
    .target Акрифа
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шикрик|r
    .turnin 3089 >>Сдать квест [Покрытый рунами пергамент]
    .accept 25143 >>Принять квест [Удар стихий]
    .train 73899 >> Обучитесь |T460956:0|t[Удару стихий] << Cata
    .target Шикрик
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Франгом|r
    .turnin 2383 >>Сдать квест [Простой пергамент]
    .accept 25147 >>Принять квест [Рывок]
    .train 100 >> Обучитесь |T132337:0|t[Рывку] << Cata
    .target Франг
step << Warlock cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нартоком|r
    .turnin 3090 >>Сдать квест [Запятнанный пергамент]
    .accept 25145 >>Принять квест [Жертвенный огонь]
    .train 348 >> Обучитесь |T135817:0|t[Жертвенному огню] << Cata
    .target Нарток
step << Warlock !cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нартоком|r
    .turnin 3090 >>Сдать квест [Запятнанный пергамент]
    .accept 25145 >>Принять квест [Порча]
    .target Нарток
step << Monk
    .goto 1411,43.18,69.47
	>>Используйте |T606551:0|t[Лапу тигра] на |cRXP_ENEMY_Тренировочном манекене|r
    .complete 31156,2 --Практика: лапа тигра: 2/2
	.mob Тренировочный манекен
step << Rogue
    .goto 1411,43.18,69.47
	>>Используйте |T132292:0|t[Потрошение] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25141,2 << !Cata --Применить Потрошение (x3)
	.complete 25141,1 << Cata --Применить Потрошение (x3)
	.mob Тренировочный манекен
step << Hunter
    .goto 1411,43.18,69.47
	>>Используйте |T132213:0|t[Верный выстрел] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25139,2 << !Cata --Применить Верный выстрел (x5)
	.complete 25139,1 << Cata --Применить Верный выстрел (x5)
	.mob Тренировочный манекен
step << Mage cata
    .goto 1411,43.18,69.47
	>>Используйте |T136096:0|t[Чародейские стрелы] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25149,1 --Чародейские стрелы (x2)
	.mob Тренировочный манекен
step << Mage !cata
    .goto 1411,43.18,69.47
	>>Используйте |T135848:0|t[Кольцо льда] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25149,2 --Применить Кольцо льда
	.mob Тренировочный манекен
step << Shaman
    .goto 1411,43.18,69.47
	>>Используйте |T460956:0|t[Удар стихий] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25143,2 << !Cata--Применить Удар стихий (x3)
	.complete 25143,1 << Cata--Применить Удар стихий (x3)
	.mob Тренировочный манекен
step << Warrior
    .goto 1411,43.18,69.47
	>>Используйте |T132337:0|t[Рывок] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25147,2 << !Cata--Применить Рывок (x1)
	.complete 25147,1 << Cata --Применить Рывок (x1)
	.mob Тренировочный манекен
step << Warlock cata
    .goto 1411,43.18,69.47
	>>Используйте |T135817:0|t[Жертвенный огонь] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25145,2,1 --Применить Жертвенный огонь (x5)
	.mob Тренировочный манекен
step << Warlock !cata
    .goto 1411,43.18,69.47
	>>Используйте |T136118:0|t[Порчу] на |cRXP_ENEMY_Тренировочном манекене|r
	.complete 25145,2 --Применить Порчу (x5)
	.mob Тренировочный манекен
step << Monk
    .goto 461/1,-4209.500,-618.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гато|r
    .turnin 31157 >>Сдать квест [Лапа тигра]
    .target Гато
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Рувагом|r
    .turnin 25141 >>Сдать квест [Потрошение]
    .target Руваг
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Карранишей|r
    .turnin 25139 >>Сдать квест [Верный выстрел]
    .target Карраниша
step << Mage cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акрифой|r
    .turnin 25149 >>Сдать квест [Чародейские стрелы]
    .target Акрифа
step << Mage !cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акрифой|r
    .turnin 25149 >>Сдать квест [Кольцо льда]
    .target Акрифа
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шикрик|r
    .turnin 25143 >>Сдать квест [Удар стихий]
    .target Шикрик
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Франгом|r
    .turnin 25147 >>Сдать квест [Рывок]
    .target Франг
step << Warlock cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нартоком|r
    .turnin 25145 >>Сдать квест [Жертвенный огонь]
    .target Нарток
step << Warlock !cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нартоком|r
    .turnin 25145 >>Сдать квест [Порча]
    .target Нарток
step
    .goto 1411,42.67,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Галгаром|r
    .accept 25136 >>Принять квест [Кактус-сюрприз от Галгара]
    .target Галгар
step
    .goto 1411,43.46,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тазз'рилом|r
    .accept 25134 >>Принять квест [Ленивые батраки]
    .target Foreman Thazz'ril
step
    #completewith Sarkoth
    >>Убивайте |cRXP_ENEMY_Рабочих скорпидов|r. Собирайте с них |cRXP_LOOT_хвосты|r
    .complete 25127,1 --Хвост рабочего скорпида (8)
    .mob Рабочий скорпид
 step
    #completewith ScorpidTails
    >>|cRXP_WARN_Используйте|r |T133486:0|t[Дубинку мастера] |cRXP_WARN_на спящих |r|cRXP_FRIENDLY_Ленивых батраков|r
    .complete 25134,1 --Батраков разбужено (4)
    .use 16114
    .target Ленивый батрак
step
    #completewith ScorpidTails
    >>Собирайте |cRXP_LOOT_Кактусовые яблоки|r
    .complete 25136,1 --Кактусовое яблоко (6)
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хана'зуа|r
    .accept 25129 >>Принять квест [Саркот]
    .target Хана'зуа
step
    #label Sarkoth
    .goto 1411,40.55,67.23
    >>Убейте |cRXP_ENEMY_Саркота|r. Заберите его |cRXP_LOOT_клешню|r
    .complete 25129,1 --Изуродованная клешня Саркота (1)
    .mob Саркот
step
    #label ScorpidTails
    #loop
    .goto 1411,40.140,67.939,0
    .waypoint 1411,40.081,66.990,30,0
    .waypoint 1411,40.140,67.939,30,0
    .waypoint 1411,40.753,68.579,30,0
    .waypoint 1411,41.270,67.971,30,0
    .waypoint 1411,41.389,65.804,30,0
    .waypoint 1411,40.022,66.103,30,0
    >>Убивайте |cRXP_ENEMY_Рабочих скорпидов|r. Собирайте с них |cRXP_LOOT_хвосты|r
    .complete 25127,1 --Хвост рабочего скорпида (8)
    .mob Рабочий скорпид
step
    .goto 1411,42.72,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Галгаром|r
    .turnin 25136 >>Сдать квест [Кактус-сюрприз от Галгара]
    .target Галгар
    .isQuestComplete 25136
step
    .goto 1411,43.23,68.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горнеком|r
    .turnin 25127 >>Сдать квест [Жало скорпида]
    .target Горнек
step
    .goto 1411,42.47,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Канагой|r
    .accept 25128 >>Принять квест [Хана'зуа]
    .target Canaga Earthcaller
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зуритой|r
    .accept 25131 >>Принять квест [Мерзкие прихвостни]
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тазз'рилом|r
    .turnin 37446 >>Сдать квест [Ленивые батраки]
    .target Foreman Thazz'ril
	.isQuestComplete 37446
step
    #completewith VileFamiliars
    >>|cRXP_WARN_Используйте|r |T133486:0|t[Дубинку мастера] |cRXP_WARN_на спящих |r|cRXP_FRIENDLY_Ленивых батраков|r
    .complete 25134,1 --Батраков разбужено (4)
    .use 16114
    .target Ленивый батрак
step
    #completewith WakePeons
    >>Собирайте |cRXP_LOOT_Кактусовые яблоки|r
    .complete 25136,1 --Кактусовое яблоко (6)
step
    #label VileFamiliars
    #loop
    .goto 1411,45.26,57.37,0
    .goto 1411,46.90,59.59,40,0
    .goto 1411,46.94,58.61,40,0
    .goto 1411,46.25,58.00,40,0
    .goto 1411,46.48,57.25,40,0
    .goto 1411,45.86,57.43,40,0
    .goto 1411,45.82,56.60,40,0
    .goto 1411,45.22,57.51,40,0
    .goto 1411,45.10,56.72,40,0
    .goto 1411,44.55,56.14,40,0
    .goto 1411,44.38,56.79,40,0
    .goto 1411,43.78,57.46,40,0
    .goto 1411,43.95,58.65,40,0
    .goto 1411,43.11,58.25,40,0
    .goto 1411,45.26,57.37,40,0
    >>Убивайте |cRXP_ENEMY_Мерзких прихвостней|r
    .complete 25131,1 --Мерзкий прихвостень (8)
    .mob Мерзкий прихвостень
step
    #completewith next
    .goto 1411,43.90,57.80,20,0
    .goto 1411,42.85,57.27,20,0
    .goto 1411,41.15,58.91,20,0
    .goto 1411,40.91,60.24,20,0
    .goto 1411,40.43,62.93,20,0
    >>|cRXP_WARN_Используйте|r |T133486:0|t[Дубинку мастера] |cRXP_WARN_на спящих |r|cRXP_FRIENDLY_Ленивых батраков|r
    .complete 25134,1 --Батраков разбужено (4)
    .use 16114
    .target Ленивый батрак
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хана'зуа|r
    .turnin 25128 >>Сдать квест [Хана'зуа]
    .turnin 25129 >>Сдать квест [Саркот]
    .accept 25130 >>Принять квест [Назад в логово]
    .target Хана'зуа
step
    #label WakePeons
    #loop
    .goto 1411,45.53,65.80,0
    .goto 1411,38.84,61.82,20,0
    .goto 1411,39.78,67.17,20,0
    .goto 1411,40.71,68.62,20,0
    .goto 1411,40.42,62.96,20,0
    .goto 1411,46.74,60.65,20,0
    .goto 1411,47.08,57.87,20,0
    .goto 1411,43.90,57.78,20,0
    .goto 1411,42.84,57.25,20,0
    .goto 1411,41.14,58.93,20,0
    .goto 1411,40.89,60.23,20,0
    .goto 1411,45.53,65.80,20,0
    >>|cRXP_WARN_Используйте|r |T133486:0|t[Дубинку мастера] |cRXP_WARN_на спящих |r|cRXP_FRIENDLY_Ленивых батраков|r
    .complete 25134,1 --Батраков разбужено (4)
    .use 16114
    .target Ленивый батрак
step
    .goto 1411,42.73,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Галгаром|r
    .turnin 25136 >>Сдать квест [Кактус-сюрприз от Галгара]
    .target Галгар
    .isQuestComplete 25136
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зуритой|r
    .turnin 25131 >>Сдать квест [Мерзкие прихвостни]
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тазз'рилом|r
    .turnin 25134 >>Сдать квест [Ленивые батраки]
    .accept 25135 >>Принять квест [Кирка Тазз'рила]
    .target Foreman Thazz'ril
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зуритой|r
    .accept 25132 >>Принять квест [Медальон Пылающего Клинка]
    .target Zureetha Fargaze
step
    #loop
    .goto 1411,44.85,59.65,0
    .goto 1411,40.52,60.35,20,0
    .goto 1411,41.59,58.59,20,0
    .goto 1411,42.60,58.76,20,0
    .goto 1411,44.64,58.22,20,0
    .goto 1411,45.45,58.45,20,0
    .goto 1411,44.85,59.65,20,0
    >>Собирайте |cRXP_LOOT_Кактусовые яблоки|r
    .complete 25136,1 --6/6 Кактусовое яблоко
step
    #completewith next
    .goto 1411,45.41,55.69,30 >> Войдите в пещеру
step
    #completewith Yarrog
	>>Убивайте |cRXP_ENEMY_Скверноопалов|r
    .complete 25132,1 --5/5 Скверноопал убит
    .mob Скверноопал
step
    .goto 1411,45.36,56.44,15,0
    .goto 1411,44.57,54.76,15,0
    .goto 1411,43.73,53.79
    >>Заберите |cRXP_LOOT_Кирку Тазз'рила|r с земли
    .complete 25135,1 --1/1 Кирка Тазз'рила
step
	#label Yarrog
    .goto 1411,43.15,55.47,15,0
    .goto 1411,42.43,53.49
    >>Убейте |cRXP_ENEMY_Яррога Тенетника|r. Заберите его |cRXP_LOOT_медальон|r
    .complete 25132,2 --1/1 Медальон Пылающего Клинка
    .mob Яррог Тенетник
step
    .goto 1411,42.42,54.14,15,0
    .goto 1411,42.98,55.32,15,0
    .goto 1411,44.48,54.98,15,0
    .goto 1411,44.77,54.56,15,0
    .goto 1411,44.81,53.15,15,0
    .goto 1411,44.10,52.94,15,0
    .goto 1411,42.70,52.97
	>>Убивайте |cRXP_ENEMY_Скверноопалов|r
    .complete 25132,1 --5/5 Скверноопал убит
    .mob Скверноопал
step
    #completewith next
    .goto 1411,42.50,54.48,-1
    .goto 1411,44.77,54.64,-1
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    >>|cRXP_WARN_Убедитесь, что вы умрете рядом со стрелкой путевой точки|r
    .target Spirit Healer
step
    .goto 1411,43.23,68.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Горнеком|r
    .turnin 25130 >>Сдать квест [Назад в логово]
    .target Горнек
step
    .goto 1411,42.74,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Галгаром|r
    .turnin 25136 >>Сдать квест [Кактус-сюрприз от Галгара]
    .target Галгар
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зуритой|r
    .turnin 25132 >>Сдать квест [Медальон Пылающего Клинка]
    .accept 25133 >>Принять квест [Донесение в деревню Сен'джин] << Orc
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тазз'рилом|r
    .turnin 25135 >>Сдать квест [Кирка Тазз'рила]
    .target Foreman Thazz'ril

    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Острова Эхо
#next 6-10 Дуротар
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Troll
#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-60 (H) << mop
#subweight 10000

step << !Troll
    #completewith next
    +|cRXP_WARN_Вы выбрали руководство, предназначенное для троллей. Вам следует выбрать ту же начальную зону, в которой вы начинаете|r
step
    .goto 1411,62.45,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джин'талой|r
    .accept 31159 >> Принять [Возвышение Черного Копья] << Monk
	.accept 24770 >> Принять [Возвышение Черного Копья] << Rogue
	.accept 24607 >> Принять [Возвышение Черного Копья] << Warrior
	.accept 24750 >> Принять [Возвышение Черного Копья] << Mage
	.accept 24758 >> Принять [Возвышение Черного Копья] << Shaman
	.accept 24764 >> Принять [Возвышение Черного Копья] << Druid
	.accept 24776 >> Принять [Возвышение Черного Копья] << Hunter
	.accept 24782 >> Принять [Возвышение Черного Копья] << Priest
	.accept 26272 >> Принять [Возвышение Черного Копья] << Warlock
    .target Джин'тала
step << Monk
    .goto 463/1,-5441.400,-1149.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Забраксом|r
    .turnin 31159 >>Сдать квест [Возвышение Черного Копья]
    .accept 31158 >>Принять квест [Основы: бить по предметам]
    .target Забракс
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Легати|r
    .turnin 24770 >> Сдать квест [Возвышение Черного Копья]
    .accept 24771 >> Принять квест [Основы: бить по предметам]
    .target Легати
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нортетом|r
    .turnin 24607 >> Сдать квест [Возвышение Черного Копья]
    .accept 24639 >> Принять квест [Основы: бить по предметам]
    .target Нортет
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соратой|r
    .turnin 24750 >> Сдать квест [Возвышение Черного Копья]
    .accept 24751 >> Принять квест [Основы: бить по предметам]
    .target Сората
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Некали|r
    .turnin 24758 >> Сдать квест [Возвышение Черного Копья]
    .accept 24759 >> Принять квест [Основы: бить по предметам]
    .target Некали
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'таброй|r
    .turnin 24764 >> Сдать квест [Возвышение Черного Копья]
    .accept 24765 >> Принять квест [Основы: бить по предметам]
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ортеззой|r
    .turnin 24776 >> Сдать квест [Возвышение Черного Копья]
    .accept 24777 >> Принять квест [Основы: бить по предметам]
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тунари|r
    .turnin 24782 >> Сдать квест [Возвышение Черного Копья]
    .accept 24783 >> Принять квест [Основы: бить по предметам]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Волдрекой|r
    .turnin 26272 >> Сдать квест [Возвышение Черного Копья]
    .accept 26273 >> Принять квест [Основы: бить по предметам]
    .target Voldreka
step
    .goto 1411,66.912,83.481 << Hunter
    .goto 1411,67.907,84.600 << Druid
    .goto 1411,68.617,84.307 << Mage
    .goto 1411,67.825,82.582 << Priest
    .goto 1411,65.927,83.015 << Rogue
    .goto 1411,65.069,82.878 << Warlock
    .goto 1411,64.732,84.031 << Shaman
    .goto 1411,65.931,84.338 << Warrior
 	>>Бейте |cRXP_ENEMY_Тренировочные мишени|r
    .complete 31158,1 << Monk --Разбить тренировочную мишень (x6)
	.complete 24771,1 << Rogue --Разбить тренировочную мишень (x6)
	.complete 24639,1 << Warrior --Разбить тренировочную мишень (x6)
	.complete 24751,1 << Mage --Разбить тренировочную мишень (x6)
	.complete 24759,1 << Shaman --Разбить тренировочную мишень (x6)
	.complete 24765,1 << Druid --Разбить тренировочную мишень (x6)
	.complete 24777,1 << Hunter --Разбить тренировочную мишень (x6)
	.complete 24783,1 << Priest --Разбить тренировочную мишень (x6)
	.complete 26273,1 << Warlock --Разбить тренировочную мишень (x6)
	.mob Тренировочная мишень
step << Monk
    .goto 463/1,-5441.300,-1149.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Забраксом|r
    .turnin 31158 >>Сдать квест [Основы: бить по предметам]
    .accept 31160 >>Принять квест [Трудное начало]
    .target Забракс
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Легати|r
    .turnin 24771 >> Сдать квест [Основы: бить по предметам]
    .accept 24773 >> Принять квест [Трудное начало]
    .target Легати
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нортетом|r
    .turnin 24639 >> Сдать квест [Основы: бить по предметам]
    .accept 24641 >> Принять квест [Трудное начало]
    .target Нортет
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соратой|r
    .turnin 24751 >> Сдать квест [Основы: бить по предметам]
    .accept 24753 >> Принять квест [Трудное начало]
    .target Сората
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Некали|r
    .turnin 24759 >> Сдать квест [Основы: бить по предметам]
    .accept 24761 >> Принять квест [Трудное начало]
    .target Некали
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'таброй|r
    .turnin 24765 >> Сдать квест [Основы: бить по предметам]
    .accept 24767 >> Принять квест [Трудное начало]
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ортеззой|r
    .turnin 24777 >> Сдать квест [Основы: бить по предметам]
    .accept 24779 >> Принять квест [Трудное начало]
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тунари|r
    .turnin 24783 >> Сдать квест [Основы: бить по предметам]
    .accept 24785 >> Принять квест [Трудное начало]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Волдрекой|r
    .turnin 26273 >> Сдать квест [Основы: бить по предметам]
    .accept 26275 >> Принять квест [Трудное начало]
    .target Voldreka
step << Monk
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.49,80.21,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте с них |cRXP_LOOT_шкуры|r
	.complete 31160,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Rogue
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.49,80.21,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте с них |cRXP_LOOT_шкуры|r
	.complete 24773,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Warrior
    #loop
    .goto 1411,64.71,86.19,0
    .goto 1411,66.60,87.54,0
    .goto 1411,64.71,86.19,40,0
    .goto 1411,65.45,86.86,40,0
    .goto 1411,65.38,87.62,40,0
    .goto 1411,66.60,87.54,40,0
    .goto 1411,66.86,86.75,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте с них |cRXP_LOOT_шкуры|r
	.complete 24639,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Mage
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 24753,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Shaman
    #loop
    .goto 1411,63.99,83.54,0
    .goto 1411,64.99,79.80,0
    .goto 1411,63.99,83.54,40,0
    .goto 1411,64.73,81.40,40,0
    .goto 1411,64.52,80.28,40,0
    .goto 1411,64.99,79.80,40,0
    .goto 1411,65.55,80.36,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 24761,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Druid
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 24767,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Hunter
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,68.81,80.40,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 24779,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Priest
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,69.02,81.08,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 24785,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Warlock
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.78,81.23,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Убивайте |cRXP_ENEMY_Гривистых львов|r. Собирайте with them for their |cRXP_LOOT_Pelts|r
	.complete 26275,1 --Собрать шкуру гривистого льва (x6)
	.mob Гривистый лев
step << Monk
    .goto 463/1,-5441.300,-1149.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Забраксом|r
    .turnin 31160 >>Сдать квест [Трудное начало]
    .accept 31161 >>Принять квест [Испытательная яма]
    .target Забракс
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Легати|r
    .turnin 24773 >> Сдать квест [Трудное начало]
    .accept 24774 >> Принять квест [Испытательная яма]
    .target Легати
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нортетом|r
    .turnin 24641 >> Сдать квест [Трудное начало]
    .accept 24642 >> Принять квест [Испытательная яма]
    .target Нортет
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соратой|r
    .turnin 24753 >> Сдать квест [Трудное начало]
    .accept 24754 >> Принять квест [Испытательная яма]
    .target Сората
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Некали|r
    .turnin 24761 >> Сдать квест [Трудное начало]
    .accept 24762 >> Принять квест [Испытательная яма]
    .target Некали
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'таброй|r
    .turnin 24767 >> Сдать квест [Трудное начало]
    .accept 24768 >> Принять квест [Испытательная яма]
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ортеззой|r
    .turnin 24779 >> Сдать квест [Трудное начало]
    .accept 24780 >> Принять квест [Испытательная яма]
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тунари|r
    .turnin 24785 >> Сдать квест [Трудное начало]
    .accept 24786 >> Принять квест [Испытательная яма]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Волдрекой|r
    .turnin 26275 >> Сдать квест [Трудное начало]
    .accept 26276 >> Принять квест [Испытательная яма]
    .target Voldreka
step << Monk
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 31161,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Rogue
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 24774,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warrior
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
    .complete 24642,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Mage
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 24754,1 << Mage --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Shaman
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
    .complete 24762,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Druid
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 24768,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Hunter
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 24780,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Priest
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 24786,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warlock
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_тюремщиком Черного Копья|r
	.complete 26276,1 --Поговорите с тюремщиком Черного Копья (x1)
    .skipgossip
    .target Darkspear Jailor
step << Monk
    .goto 1411,65.29,83.74
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 31161,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Rogue
    .goto 1411,65.29,83.74
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24774,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Warrior
    .goto 1411,65.29,83.74
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24642,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Mage
    .goto 1411,67.37,83.94
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24754,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Shaman
    .goto 1411,65.29,83.74
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24762,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Druid
    .goto 1411,67.37,83.94
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24768,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Hunter
    .goto 1411,67.37,83.94
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24780,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Priest
    .goto 1411,67.37,83.94
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 24786,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Warlock
    .goto 1411,65.29,83.74
    >>Убейте |cRXP_ENEMY_пленного разведчика из племени Злобной Чешуи|r
	.complete 26276,2 --1/1 Пленный разведчик из племени Злобной Чешуи убит
    .mob Пленный разведчик из племени Злобной Чешуи
step << Monk
    .goto 463/1,-5429.900,-1151.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Забраксом|r
    .turnin 31161 >>Сдать квест [Испытательная яма]
    .accept 31162 >>Принять квест [Искусство монаха]
    .target Забракс
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Легати|r
    .turnin 24774 >>Сдать квест [Испытательная яма]
    .accept 24772 >>Принять квест [Искусство разбойника]
    .train 2098 >> Обучитесь |T132292:0|t[Потрошению] << Cata
    .target Легати
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нортетом|r
    .turnin 24642 >>Сдать квест [Испытательная яма]
    .accept 24640 >>Принять квест [Искусство воина]
    .train 100 >> |T132337:0|t[Рывок] << Cata
    .target Нортет
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соратой|r
    .turnin 24754 >>Сдать квест [Испытательная яма]
    .accept 24752 >>Принять квест [Искусство мага]
    .train 5143 >>Обучитесь |T136096:0|t[Чародейским стрелам] << Cata
    .target Сората
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Некали|r
    .turnin 24762 >>Сдать квест [Испытательная яма]
    .accept 24760 >>Принять квест [Искусство шамана]
    .train 73899 >>Обучитесь |T460956:0|t[Удару стихий] << Cata
    .target Некали
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'таброй|r
    .turnin 24768 >>Сдать квест [Испытательная яма]
    .accept 24766 >>Принять квест [Искусство друида]
    .train 774 >>Обучитесь |T136081:0|t[Омоложению] << Cata
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ортеззой|r
    .turnin 24780 >>Сдать квест [Испытательная яма]
    .accept 24778 >>Принять квест [Искусство охотника]
    .train 56641 >>Обучитесь |T132213:0|t[Верному выстрелу] << Cata
    .target Ortezza
step << Priest cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тунари|r
    .turnin 24786 >>Сдать квест [Испытательная яма]
    .accept 24784 >>Принять квест [Искусство жреца]
    .train 2061 >>Обучитесь |T135907:0|t[Быстрому исцелению] << Cata
    .target Tunari
step << Priest !cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тунари|r
    .turnin 24786 >>Сдать квест [Испытательная яма]
    .accept 24784 >>Принять квест [Learnin' tha Word]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Волдрекой|r
    .turnin 26276 >>Сдать квест [Испытательная яма]
    .accept 26274 >>Принять квест [Искусство чернокнижника]
    .train 348 >>Обучитесь |T135817:0|t[Жертвенному огню] << Cata
    .target Voldreka
step << Monk
	.goto 1411,65.91,83.45
	>>Используйте |T606551:0|t[Лапу тигра] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 31162,2 --Применить Лапу тигра (x1)
	.mob Тренировочная мишень
step << Rogue
	.goto 1411,65.91,83.45
	>>Используйте |T132292:0|t[Потрошение] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24772,2 << !Cata --Применить Потрошение (x3)
	.complete 24772,1 << Cata --Применить Потрошение (x3)
	.mob Тренировочная мишень
step << Warrior
	.goto 1411,65.98,84.42
	>>Используйте |T132337:0|t[Рывок] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24640,2 << !Cata --Применить Рывок (x3)
	.complete 24640,1 << Cata --Применить Рывок (x3)
	.mob Тренировочная мишень
step << Mage cata
	.goto 1411,68.91,84.31
	>>Используйте |T136096:0|t[Чародейские стрелы] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24752,2 << !Cata --Применить Чародейские стрелы (x3)
	.complete 24752,1 << Cata --Применить Чародейские стрелы (x3)
	.mob Тренировочная мишень
step << Mage !cata
	.goto 1411,68.91,84.31
	>>Используйте |T135848:0|t[Кольцо льда] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24752,2 --Применить Кольцо льда
	.mob Тренировочная мишень
step << Shaman
	.goto 1411,64.86,84.69
	>>Используйте |T460956:0|t[Удар стихий] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24760,2 << !Cata --Применить Удар стихий (x3)
	.complete 24760,1 << Cata --Применить Удар стихий (x3)
	.mob Тренировочная мишень
step << Druid cata
	.goto 1411,67.91,84.60
	>>Используйте |T136081:0|t[Омоложение] на |cRXP_FRIENDLY_раненого стража Черного Копья|r
	.complete 24766,1 --Применить Омоложение (x1)
	.target Раненый страж Черного Копья
step << Druid !cata
	.goto 1411,67.91,84.60
	>>Используйте |T136096:0|t[Лунный огонь] на |cRXP_FRIENDLY_раненого стража Черного Копья|r
	.complete 24766,2 --Применить Лунный огонь
	.target Раненый страж Черного Копья
step << Hunter
	.goto 1411,67.18,83.12
	>>Используйте |T132213:0|t[Верный выстрел] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24778,2 << !Cata --Верный выстрел (x3)
	.complete 24778,1 << Cata --Верный выстрел (x3)
	.mob Тренировочная мишень
step << Priest cata
	.goto 1411,67.35,83.24
	>>Используйте |T135907:0|t[Быстрое исцеление] на |cRXP_FRIENDLY_раненого стража Черного Копья|r
	.complete 24784,1 --Применить Быстрое исцеление (x5)
	.target Раненый страж Черного Копья
step << Priest !cata
	.goto 1411,65.07,82.88
	>>Используйте |T136207:0|t[Слово Тьмы: Боль] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 24784,2 --Применить Слово Тьмы: Боль
	.mob Тренировочная мишень
step << Warlock cata
	.goto 1411,65.07,82.88
	>>Используйте |T135817:0|t[Жертвенный огонь] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 26274,1 --Применить Жертвенный огонь (x3)
	.mob Тренировочная мишень
step << Warlock !cata
	.goto 1411,65.07,82.88
	>>Используйте |T136118:0|t[Порчу] на |cRXP_ENEMY_тренировочной мишени|r
	.complete 26274,2 --Применить Порчу
	.mob Тренировочная мишень
step << Monk
    .goto 463/1,-5430.300,-1151.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Забраксом|r
    .turnin 31162 >>Сдать квест [Искусство монаха]
    .accept 31163 >>Принять квест [Больше, чем ожидалось]
    .target Забракс
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Легати|r
    .turnin 24772 >>Сдать квест [Искусство разбойника]
    .accept 24775 >>Принять квест [Больше, чем ожидалось]
    .target Легати
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Нортетом|r
    .turnin 24640 >>Сдать квест [Искусство воина]
    .accept 24643 >>Принять квест [Больше, чем ожидалось]
    .target Нортет
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соратой|r
    .turnin 24752 >>Сдать квест [Искусство мага]
    .accept 24755 >>Принять квест [Больше, чем ожидалось]
    .target Сората
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Некали|r
    .turnin 24760 >>Сдать квест [Искусство шамана]
    .accept 24763 >>Принять квест [Больше, чем ожидалось]
    .target Некали
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'таброй|r
    .turnin 24766 >>Сдать квест [Искусство друида]
    .accept 24769 >>Принять квест [Больше, чем ожидалось]
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ортеззой|r
    .turnin 24778 >>Сдать квест [Искусство охотника]
    .accept 24781 >>Принять квест [Больше, чем ожидалось]
    .target Ortezza
step << Priest cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите with |cRXP_FRIENDLY_Тунари|r
    .turnin 24784 >>Сдать квест [Искусство жреца]
    .accept 24787 >>Принять квест [Больше, чем ожидалось]
    .target Tunari
step << Priest !cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите with |cRXP_FRIENDLY_Тунари|r
    .turnin 24784 >>Сдать квест [Learnin' tha Word]
    .accept 24787 >>Принять квест [Больше, чем ожидалось]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите with |cRXP_FRIENDLY_Волдрекой|r
    .turnin 26274 >>Сдать квест [Искусство чернокнижника]
    .accept 26277 >>Принять квест [Больше, чем ожидалось]
    .target Voldreka
step
    .goto 1411,68.86,88.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вол'джином|r
    .turnin 31163 >>Сдать квест [Больше, чем ожидалось] << Monk
    .turnin 24643 >>Сдать квест [Больше, чем ожидалось] << Warrior
    .turnin 24755 >>Сдать квест [Больше, чем ожидалось] << Mage
    .turnin 24763 >>Сдать квест [Больше, чем ожидалось] << Shaman
    .turnin 24769 >>Сдать квест [Больше, чем ожидалось] << Druid
    .turnin 24775 >>Сдать квест [Больше, чем ожидалось] << Rogue
    .turnin 24781 >>Сдать квест [Больше, чем ожидалось] << Hunter
    .turnin 24787 >>Сдать квест [Больше, чем ожидалось] << Priest
    .turnin 26277 >>Сдать квест [Больше, чем ожидалось] << Warlock
    .accept 25064 >>Принять квест [Морайя]
    .target Vol'Jin
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тора'джином|r
    .accept 25037 >> Принять квест [Ловля крабов]
    .target Tora'Jin
step
    .goto 1411,67.26,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морайей|r
    .turnin 25064 >> Сдать квест [Морайя]
    .accept 24622 >> Принять квест [Вернейший спутник тролля]
    .target Moraya
step
    #label CrossBridge
    #completewith Kijara
    .goto 1411,66.09,89.14,40,0
    .goto 1411,64.94,89.02,40,0
    .goto 1411,63.42,93.50,40 >> Перейдите через мост
step
    #require CrossBridge
    #completewith next
    >>Убивайте |cRXP_ENEMY_карликовых прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_мясо|r
    .complete 25037,1 --Собрать свежее мясо ползуна (x5)
    .mob Карликовый прибрежный ползун
step
    #label Kijara
    .goto 1411,63.20,95.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Киджарой|r
    .turnin 24622 >>Сдать квест [Вернейший спутник тролля]
    .accept 24623 >>Принять квест [Спасение молодняка]
    .target Kijara
step
    .goto 1411,63.44,95.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тегаши|r
    .accept 24625 >>Принять квест [Супруг морской ведьмы]
    .accept 24624 >>Принять квест [Милосердие для павших]
    .target Tegashi
step
    #completewith Bloodtalons
    >>Убивайте |cRXP_ENEMY_карликовых прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_мясо|r
    .complete 25037,1 --Собрать свежее мясо ползуна (x5)
    .mob Карликовый прибрежный ползун
step
	#completewith Bloodtalons
	.goto 1411,61.32,91.76,40,0
	>>Используйте |T132161:0|t[|cRXP_LOOT_Свисток Кровавого Когтя|r], когда вы находитесь рядом с |cRXP_FRIENDLY_потерявшимся детенышем Кровавого Когтя|r, чтобы спасти его
	.complete 24623,1 --Спасти детеныша Кровавого Когтя (x12)
	.target Потерявшийся детеныш Кровавого Когтя
	.use 52283
step
    #completewith next
   	.goto 1411,60.89,91.69,40,0
	>>Убивайте |cRXP_ENEMY_оскверненных Кровавых Когтей|r
	.complete 24624,1 --Убить оскверненного Кровавого Когтя (x8)
	.mob Оскверненный Кровавый Коготь
step
   	.goto 1411,60.39,89.79
	>>Убейте |cRXP_ENEMY_Надж'тесса|r. Заберите у него |cRXP_LOOT_сферу|r
	.complete 24625,1 --Забрать сферу порчи Надж'Тесса (x1)
	.mob Надж'тесс
step
	#label Bloodtalons
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Убивайте |cRXP_ENEMY_оскверненных Кровавых Когтей|r
	.complete 24624,1 --Убить оскверненного Кровавого Когтя (x8)
	.mob Оскверненный Кровавый Коготь
step
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Используйте |T132161:0|t[|cRXP_LOOT_Свисток Кровавого Когтя|r], когда вы находитесь рядом с |cRXP_FRIENDLY_потерявшимся детенышем Кровавого Когтя|r, чтобы спасти его
	.complete 24623,1 --Спасти детеныша Кровавого Когтя (x12)
	.target Потерявшийся детеныш Кровавого Когтя
	.use 52283
step
	#completewith next
    >>Убивайте |cRXP_ENEMY_карликовых прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_мясо|r
    .complete 25037,1 --Собрать свежее мясо ползуна (x5)
    .mob Карликовый прибрежный ползун
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тегаши|r и |cRXP_FRIENDLY_Киджарой|r
    .turnin 24625 >>Сдать квест [Супруг морской ведьмы]
    .turnin 24624 >>Сдать квест [Милосердие для павших]
    .goto 1411,63.44,95.23
    .turnin 24623 >>Сдать квест [Спасение молодняка]
    .accept 24626 >>Принять квест [Молодой и яростный]
    .goto 1411,63.20,95.52
    .target Tegashi
    .target Kijara
step
    #loop
	.line 463,45.93,86.53,46.15,88.00,43.81,88.49,43.46,91.82,44.25,91.93,45.27,89.85,45.95,89.71,46.91,93.18,47.68,92.85,47.84,88.58,48.45,90.12,47.51,88.96,47.42,86.91,46.21,85.10,46.03,83.83,44.17,82.86,42.43,83.12,41.15,85.98,40.87,88.56,42.30,88.10,43.60,85.27,44.56,85.10,45.93,86.53
    .goto 463,45.93,86.53,30,0
    .goto 463,44.56,85.10,30,0
    .goto 463,43.60,85.27,30,0
    .goto 463,42.30,88.10,30,0
    .goto 463,40.87,88.56,30,0
    .goto 463,41.15,85.98,30,0
    .goto 463,42.43,83.12,30,0
    .goto 463,44.17,82.86,30,0
    .goto 463,46.03,83.83,30,0
    .goto 463,46.21,85.10,30,0
    .goto 463,47.42,86.91,30,0
    .goto 463,47.51,88.96,30,0
    .goto 463,48.45,90.12,30,0
    .goto 463,47.84,88.58,30,0
    .goto 463,47.68,92.85,30,0
    .goto 463,46.91,93.18,30,0
    .goto 463,45.95,89.71,30,0
    .goto 463,45.27,89.85,30,0
    .goto 463,44.25,91.93,30,0
    .goto 463,43.46,91.82,30,0
    .goto 463,43.81,88.49,30,0
    .goto 463,46.15,88.00,30,0
    >>Используйте [Лассо Кровавого Когтя] на |cRXP_FRIENDLY_Быстрого Когтя|r
    >>|cRXP_WARN_Он появится рядом с вами и побежит против часовой стрелки вокруг острова|r
    .complete 24626,1 --1/1 Поймать Быстрого Когтя
    .unitscan Swiftclaw
    .use 50053
step
    .goto 1411,63.40,93.52,40,0
    .goto 1411,64.81,89.25,40,0
    .goto 1411,65.80,88.52
    >>Скачите на |cRXP_FRIENDLY_Быстром Когте|r назад к вольерам для ящеров
    .complete 24626,2 --1/1 Вернуть Быстрого Когтя в вольеры для ящеров
step
    .goto 1411,66.65,90.61
    .goto 1411,66.67,91.36
    .goto 1411,67.72,91.16
    .goto 1411,68.07,90.26
    .goto 1411,67.59,90.40
    >>Убивайте |cRXP_ENEMY_карликовых прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_мясо|r
    .complete 25037,1 --Собрать свежее мясо ползуна (x5)
    .mob Карликовый прибрежный ползун
step
    .goto 1411,67.24,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Морайей|r
    .turnin 24626 >>Сдать квест [Молодой и яростный]
    .target Moraya
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тора'джином|r
    .turnin 25037 >>Сдать квест [Ловля крабов]
    .target Tora'Jin
step << Troll
    .goto 1411,67.98,89.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тортунгой|r
    .accept 25035 >>Принять квест [Прорыв блокады]
    .target Tortunga << Troll
step << Troll
    .goto 1411,68.02,89.06
    .gossipoption 112038 >> Поговорите с |cRXP_FRIENDLY_Джорнуном|r
    .timer 39,Прорыв блокады - сценка
    .target Jornun
    .isOnQuest 25035
step << Troll
    .goto 1411,67.96,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Моракки|r
    .turnin 25035 >>Сдать квест [Прорыв блокады]
    .accept 24812 >>Принять квест [Никакой пощады]
    .accept 24813 >>Принять квест [Межевой фетиш]
    .target Morakki
step << Troll
    #completewith next
    >>Убивайте |cRXP_ENEMY_наг из племени Злобной Чешуи|r
    .complete 24812,1 --12/12 Наг из племени Злобной Чешуи убито
    .mob Нага из племени Злобной Чешуи — крушитель волн
    .mob Нага из племени Злобной Чешуи — сирена
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    .use 52065>>Установите [Межевой фетиш] рядом с |cRXP_PICK_флагами Злобной Чешуи|r
    .complete 24813,1 --8/8 Межевой фетиш установлен
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    >>Убивайте |cRXP_ENEMY_наг из племени Злобной Чешуи|r
    >>|cfff78300Не спрыгивайте вниз|r
    .complete 24812,1 --12/12 Наг из племени Злобной Чешуи убито
    .mob Нага из племени Злобной Чешуи — крушитель волн
    .mob Нага из племени Злобной Чешуи — сирена
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Моракки|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Сдать квест [Никакой пощады]
    .turnin 24813 >>Сдать квест [Межевой фетиш]
    .accept 24814 >>Принять квест [Древний враг]
    .target Morakki
step << Troll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Моракки|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Сдать квест [Никакой пощады]
    .turnin 24813 >>Сдать квест [Межевой фетиш]
    .target Morakki
step << skip
    .goto 1411,68.60,74.87,10,0
    .goto 1411,69.12,73.99,10,0
    .goto 1411,69.09,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вол'джином|r, чтобы начать событие
    .complete 24814,1 --Поговорить с Вол'джином в Бухте Злобной Чешуи (1)
    .skipgossip
    .target Vol'jin
step << skip
    .goto 1411,68.47,71.44
    >>Сосредоточьтесь на убийстве аддов, позвольте |cRXP_FRIENDLY_Ванире|r и |cRXP_FRIENDLY_Вол'джину|r убить |cRXP_ENEMY_Зар'джиру|r
    .complete 24814,2 --Зар'джира убита (1)
    .mob Zar'jira
    .isQuestTurnedIn 25035
step << skip
    .goto 1411,69.13,72.32
    .gossipoption 37251 >> Поговорите с |cRXP_FRIENDLY_Ванирой|r, чтобы вернуться в Крепость Черного Копья
    .target Vanira
    .isOnQuest 24814
    --VV Add timer in case it's not an instant teleport
step << skip
    .goto 1411,68.86,88.69
    -->>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вол'джином|r
    .turnin 24814 >>Сдать квест [Древний враг]
    .accept 25073 >>Принять квест [Деревня Сен'джин]
    .isQuestTurnedIn 25035
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Дуротар
#next 10-22 Азшара
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Orc/Troll
#group RXP Cataclysm 1-80 (H) << cata
#group RXP MoP 1-60 (H) << mop
#subweight 10000

step << skip
    #completewith BreakingtheChain
    .goto 1411,67.21,86.10,60,0
    .goto 1411,63.67,82.61,60,0
    .goto 1411,60.48,81.45,60,0
    .goto 1411,60.09,79.68,60,0
    .subzone 367 >> Отправляйтесь в деревню Сен'Джин
step << Troll
    #completewith BreakingtheChain
    .goto 1411,64.10,74.25,40,0
    .subzone 367 >> Отправляйтесь в деревню Сен'Джин
step << Orc
    #completewith BreakingtheChain
    .goto 1411,48.47,67.93,60,0
    .goto 1411,50.44,68.39,60,0
    .subzone 367 >> Отправляйтесь в деревню Сен'Джин
step
    #optional << Troll
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гадрином|r
    .turnin 25073 >>Сдать квест [Деревня Сен'джин] << Troll
    .turnin 25133 >>Сдать квест [Донесение в деревню Сен'джин] << Orc
    .accept 25167 >>Принять квест [Разорвать цепь]
    .target Master Gadrin
    .isQuestTurnedIn 24814 << Troll
step << Troll
    #label BreakingtheChain
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гадрином|r
    .accept 25167 >>Принять квест [Разорвать цепь]
    .target Master Gadrin
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Коной|r
    .train 8042 >> Обучитесь классовым способностям
    .target Cona
step << Druid Cata
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ден'чулу|r
    .train 8921 >> Обучитесь классовым способностям
    .target Den'chulu
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хай'заном|r
    .train 2973 >> Обучитесь классовым способностям
    .target Hai'zan
    .xp <6,1
step
    #completewith next
    .goto 1411,56.13,74.53,10,0
    .goto 1411,56.30,73.89,10 >> Зайдите в большую хижину
step << Mage/Priest/Warlock/Druid
    .goto 1411,56.41,73.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тай'таси|r
    .vendor >> Продайте хлам
    .target Tai'tasi
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Йенисс|r
    .train 34428 >> Обучитесь классовым способностям
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T133053:0|t[Деревянную киянку]
    .collect 2493,1,25168,1 --Собрать Деревянную киянку (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T135321:0|t[Гладиус]
    .collect 2488,1,25168,1 --Собрать Гладиус (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T135499:0|t[Изогнутый лук из рогового дерева]
    .collect 2506,1,25168,1 --Изогнутый лук из рогового дерева (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Shaman/Paladin
    #completewith Bombay
    +Экипируйте |T133053:0|t[Деревянную киянку]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith Bombay
    +Экипируйте |T135321:0|t[Гладиус]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bombay
    +Экипируйте |T135499:0|t[Изогнутый лук из рогового дерева]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T132401:0|t[Большой топор]
    .collect 2491,1,25168,1 --Большой топор (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith Bombay
    +Экипируйте |T132401:0|t[Большой топор]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage Cata/Priest Cata/Warlock Cata
    #completewith next
    .goto 1411,56.59,73.25,10,0
    .goto 1411,56.50,72.90,10,0
    .goto 1411,56.33,73.28,10 >> Поднимитесь наверх
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бомсанчу|r наверху
    .train 2136 >> Обучитесь классовым способностям
    .target Bomsanchu
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r наверху
    .train 589 >> Обучитесь классовым способностям
    .target Parata
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гусини|r наверху
    .train 87389 >> Обучитесь классовым способностям
    .target Gusini
step << Mage Cata/Priest Cata/Warlock Cata
    #completewith next
    .goto 1411,55.71,75.28,10 >> Спрыгните вниз к |cRXP_FRIENDLY_Бом'баю|r
step
    #label Bombay
    .goto 1411,55.71,75.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бом'баем|r
    .accept 25170 >>Принять квест [Очистка побережья]
    .target Bom'bay
step
    #completewith next
    .goto 1411,56.45,78.44,40,0
    .goto 1411,53.52,82.09,40,0
    .goto 1411,52.63,83.01,40,0
    >>Убивайте |cRXP_ENEMY_прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_слизь|r
    .complete 25170,1 --Собрать слизь ползуна (5)
    .mob Прибрежный ползун
step
    #loop
    .goto 1411,52.32,81.53,0
    .goto 1411,51.14,79.19,0
    .goto 1411,49.67,79.64,0
    .goto 1411,52.32,81.53,30,0
    .goto 1411,51.14,79.19,20,0
    .goto 1411,49.67,79.64,30,0
    >>Уничтожайте |cRXP_ENEMY_ящики с припасами Северной Стражи|r и убивайте |cRXP_ENEMY_матросов Северной Стражи|r
    >>|cRXP_WARN_Возможно, придется подождать их возрождения|r
    .complete 25167,1 --Ящики с припасами Северной Стражи уничтожены (3)
    .mob +Ящик с припасами Северной Стражи
    .complete 25167,2 --Матрос Северной Стражи (10)
    .mob +Матрос Северной Стражи
step
    #loop
    .goto 1411,55.68,78.92,0
    .goto 1411,53.52,82.09,0
    .waypoint 1411,56.59,79.22,40,0
    .waypoint 1411,55.68,78.92,40,0
    .waypoint 1411,55.74,79.45,40,0
    .waypoint 1411,55.79,80.54,40,0
    .waypoint 1411,55.15,80.25,40,0
    .waypoint 1411,54.67,80.47,40,0
    .waypoint 1411,54.48,81.37,40,0
    .waypoint 1411,53.52,82.09,40,0
    .waypoint 1411,52.63,83.01,40,0
    .waypoint 1411,56.45,78.44,40,0
    >>Убивайте |cRXP_ENEMY_прибрежных ползунов|r. Собирайте с них |cRXP_LOOT_слизь|r
    .complete 25170,1 --Собрать слизь ползуна (5)
    .mob Прибрежный ползун
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бом'баем|r, |cRXP_FRIENDLY_Гадрином|r и |cRXP_FRIENDLY_Ларом|r
    .turnin 25170 >>Сдать квест [Очистка побережья]
    .accept 25165 >>Принять квест [Не верь большим колючкам и улыбкам]
    .target +Bom'bay
    .goto 1411,55.78,75.36
    .turnin 25167 >>Сдать квест [Разорвать цепь]
    .accept 25168 >>Принять квест [Зачистка долины]
    .target +Master Gadrin
    .goto 1411,55.91,74.72
    .accept 25169 >>Принять квест [Война и агрессия Северной Стражи]
    .goto 1411,55.47,75.06
    .target +Lar Prowltusk
step
    #xprate >1.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бом'баем|r, |cRXP_FRIENDLY_Гадрином|r и |cRXP_FRIENDLY_Ларом|r
    .turnin 25170 >>Сдать квест [Очистка побережья]
    .target +Bom'bay
    .goto 1411,55.78,75.36
    .turnin 25167 >>Сдать квест [Разорвать цепь]
    .accept 25168 >>Принять квест [Зачистка долины]
    .target +Master Gadrin
    .goto 1411,55.91,74.72
    .accept 25169 >>Принять квест [Война и агрессия Северной Стражи]
    .target +Lar Prowltusk
    .goto 1411,55.47,75.06
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Коной|r
    .train 8042 >> Обучитесь классовым способностям
    .target Cona
step << Druid Cata
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ден'чулу|r
    .train 8921 >> Обучитесь классовым способностям
    .target Den'chulu
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хай'заном|r
    .train 2973 >> Обучитесь классовым способностям
    .target Hai'zan
    .xp <6,1
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Йенисс|r
    .train 34428 >> Обучитесь классовым способностям
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T133053:0|t[Деревянную киянку]
    .collect 2493,1,25168,1 --Собрать Деревянную киянку (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T135321:0|t[Гладиус]
    .collect 2488,1,25168,1 --Собрать Гладиус (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T135499:0|t[Изогнутый лук из рогового дерева]
    .collect 2506,1,25168,1 --Изогнутый лук из рогового дерева (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Warrior/Shaman/Paladin
    #completewith AttackPlans
    +Экипируйте |T133053:0|t[Деревянную киянку]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith AttackPlans
    +Экипируйте |T135321:0|t[Гладиус]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith AttackPlans
    +Экипируйте |T135499:0|t[Изогнутый лук из рогового дерева]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Поговорите с|r |cRXP_FRIENDLY_Трайексиром|r
    >>|cRXP_BUY_Купите у него|r |T132401:0|t[Большой топор]
    .collect 2491,1,25168,1 --Большой топор (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith AttackPlans
    +Экипируйте |T132401:0|t[Большой топор]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бомсанчу|r наверху
    .train 2136 >> Обучитесь классовым способностям
    .target Bomsanchu
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r наверху
    .train 589 >> Обучитесь классовым способностям
    .target Parata
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гусини|r наверху
    .train 87389 >> Обучитесь классовым способностям
    .target Gusini
step
    #xprate <1.1
    #loop
    .goto 1411,52.72,75.35,0
    .waypoint 1411,54.15,74.77,40,0
    .waypoint 1411,53.15,76.15,40,0
    .waypoint 1411,52.72,75.35,40,0
    .waypoint 1411,52.27,74.29,40,0
    .waypoint 1411,51.60,73.68,40,0
    .waypoint 1411,51.40,74.88,40,0
    >>Атакуйте |cRXP_ENEMY_звонких скорпидов|r
    >>|cRXP_WARN_Используйте|r |T136061:0|t[Тотем извлечения яда], |cRXP_WARN_когда|r |cRXP_ENEMY_звонкие скорпиды|r |cRXP_WARN_используют|r |T132287:0|t[Отравление]
    >>|cRXP_WARN_У тотема 15-секундная перезарядка. Агрите сразу нескольких|r |cRXP_ENEMY_звонких скорпидов|, |cRXP_WARN_чтобы ускорить процесс|r
    .complete 25165,1 --Образец яда скорпида собран (6)
    .mob Звонкий скорпид
    .use 52505
step
    #completewith AttackPlans
    .goto 1411,50.83,79.13,15,0
    >>Убивайте |cRXP_ENEMY_пехотинцев Северной Стражи|r и |cRXP_ENEMY_стрелков Северной Стражи|r
    .complete 25168,1 --Отряд Северной Стражи (12)
    .mob Пехотинец Северной Стражи
    .mob Стрелок Северной Стражи
step
    >>Уничтожьте |cRXP_PICK_планы нападения|r на земле
    .goto 1411,49.82,81.43
    .complete 25169,1 --План нападения: Долина Испытаний сожжен (1)
step
    >>Уничтожьте |cRXP_PICK_планы нападения|r на земле
    .goto 1411,47.91,77.56
    .complete 25169,2 --План нападения: деревня Сен'джин сожжен (1)
step
    #label AttackPlans
    .goto 1411,46.42,78.77
    >>Уничтожьте |cRXP_PICK_планы нападения|r на земле
    .complete 25169,3 --План нападения: Оргриммар сожжен (1)
step
    #loop
    .goto 1411,48.36,79.40,0
    .goto 1411,46.63,79.76,40,0
    .goto 1411,47.27,80.88,40,0
    .goto 1411,47.84,79.84,40,0
    .goto 1411,47.79,77.95,40,0
    .goto 1411,49.03,79.33,40,0
    .goto 1411,49.89,79.04,40,0
    .goto 1411,49.97,80.86,40,0
    .goto 1411,48.36,79.40,40,0
    >>Убивайте |cRXP_ENEMY_пехотинцев Северной Стражи|r и |cRXP_ENEMY_стрелков Северной Стражи|r
    .complete 25168,1 --Отряд Северной Стражи (12)
    .mob Пехотинец Северной Стражи
    .mob Стрелок Северной Стражи
step
    #completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    --VV Beta test needed
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бом'баем|r, |cRXP_FRIENDLY_Ларом|r и |cRXP_FRIENDLY_Гадрином|r
    .turnin 25165 >>Сдать квест [Не верь большим колючкам и улыбкам]
    .target +Bom'bay
    .goto 1411,55.74,75.42
    .turnin 25169 >>Сдать квест [Война и агрессия Северной Стражи]
    .target +Lar Prowltusk
    .goto 1411,55.42,75.11
    .turnin 25168 >>Сдать квест [Зачистка долины]
    .accept 25171 >>Принять квест [В путь!]
    .target +Master Gadrin
    .goto 1411,55.91,74.78
step
    #xprate >1.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ларом|r и |cRXP_FRIENDLY_Гадрином|r
    .turnin 25169 >>Сдать квест [Война и агрессия Северной Стражи]
    .target +Lar Prowltusk
    .goto 1411,55.42,75.11
    .turnin 25168 >>Сдать квест [Зачистка долины]
    .accept 25171 >>Принять квест [В путь!]
    .target +Master Gadrin
    .goto 1411,55.91,74.78
step
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Трайексиром|r
    .vendor >> Продайте хлам и починитесь
    .target Trayexir
step << Rogue Cata
    .goto 1411,56.05,73.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Муналти|r
    .train 15087 >> Обучитесь классовым способностям
    .target Munalti
    .xp <8,1
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Коной|r
    .train 324 >> Обучитесь классовым способностям
    .target Cona
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ден'чулу|r
    .goto 1411,56.18,75.24
    .train 768 >> Обучитесь классовым способностям
    .target Den'chulu
    .xp <8,1
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хай'заном|r
    .train 2973 >> Обучитесь классовым способностям
    .target Hai'zan
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Хай'заном|r
    .train 5116 >> Обучитесь классовым способностям
    .target Hai'zan
    .xp <8,1
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Йенисс|r
    .train 772 >> Обучитесь классовым способностям
    .target Yeniss
    .xp <7,1
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бомсанчу|r наверху
    .train 96089 >> Обучитесь классовым способностям
    .target Bomsanchu
    .xp <7,1
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r наверху
    .train 588 >> Обучитесь классовым способностям
    .target Parata
    .xp <8,1
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гусини|r наверху
    .train 687 >> Обучитесь классовым способностям
    .target Gusini
    .xp <8,1
step << cata
    #completewith RazorVisit1
    .goto 1411,55.26,74.66
    .gossipoption 112084 >> Поговорите с |cRXP_FRIENDLY_Джхашем|r
    >>|cRXP_WARN_Отправляйтесь верхом в Колючий Холм|r
    .timer 67, Поездка в Колючий Холм - сценка
    .target Raider Jhash
    .isOnQuest 25171
step << !cata
    #completewith RazorVisit1
    .goto Durotar,55.38,73.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_дрессировщиком Марнлеком|r
    .fly Razor Hill >>Летите в Колючий Холм
    .target Handler Marnlek
step
    .goto 1411,51.51,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гроском|r
    .home >> Привяжите камень возвращения к Колючему Холму
    .target Innkeeper Grosk
    .isQuestAvailable 2517
step
    .goto 1411,52.04,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гар'Током|r на верхнем этаже
    .turnin 25171 >>Сдать квест [В путь!]
    .accept 25173 >>Принять квест [Из огня да в полымя]
    .target Gar'Thok
step
    #label RazorVisit1
    .goto 1411,53.03,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гейл|r
    .accept 25176 >>Принять квест [Пользуясь случаем]
    .target Gail Nozzywig
step
    #label TravelToTiragarde
    #completewith Palliter
    .subzone 372>> Отправляйтесь в крепость Тирагард
step
    #completewith Palliter
    >>Убивайте |cRXP_ENEMY_матросов из Куль-Тираса|r и |cRXP_ENEMY_стрелков из Куль-Тираса|r
    .complete 25173,1 --Матрос из Куль-Тираса (6)
    .mob +Матрос из Куль-Тираса
    .complete 25173,2 --Стрелок из Куль-Тираса (6)
    .mob +Стрелок из Куль-Тираса
step
    #completewith Palliter
    >>Собирайте |cRXP_LOOT_сокровища Куль-Тираса|r на земле
    .complete 25176,1 --Сокровище Куль-Тираса (6)
step
    #completewith next
    #requires TravelToTiragarde
    .goto 1411,59.48,58.82,8,0
    .goto 1411,59.81,58.44,8,0
    .goto 1411,59.58,57.88,8,0
    .goto 1411,59.31,57.88,8 >>Идите к |cRXP_ENEMY_лейтенанту Паллитеру|r на второй этаж крепости
step
    #label Palliter
    .goto 1411,59.75,58.31
    >>Убейте |cRXP_ENEMY_лейтенанта Паллитера|r
    .complete 25173,3 --Лейтенант Паллитер (1)
    .mob Лейтенант Паллитер
step
    #completewith next
    >>Убивайте |cRXP_ENEMY_матросов из Куль-Тираса|r и |cRXP_ENEMY_стрелков из Куль-Тираса|r
    .complete 25173,1 --Матрос из Куль-Тираса (6)
    .mob +Матрос из Куль-Тираса
    .complete 25173,2 --Стрелок из Куль-Тираса (6)
    .mob +Стрелок из Куль-Тираса
step
    #loop
    .goto 1411,59.84,58.12,0
    .goto 1411,57.93,58.57,15,0
    .goto 1411,57.17,56.21,15,0
    .goto 1411,58.23,55.44,15,0
    .goto 1411,59.44,56.13,15,0
    .goto 1411,59.32,58.03,8,0
    .goto 1411,59.84,58.12,15,0
    >>Собирайте |cRXP_LOOT_сокровища Куль-Тираса|r на земле
    .complete 25176,1 --Сокровище Куль-Тираса (6)
step
    #loop
    .goto 1411,59.02,57.24,0
    .goto 1411,58.50,58.88,40,0
    .goto 1411,57.67,58.53,40,0
    .goto 1411,57.87,57.50,40,0
    .goto 1411,57.34,56.57,40,0
    .goto 1411,58.41,56.40,40,0
    .goto 1411,59.02,57.24,40,0
    >>Убивайте |cRXP_ENEMY_матросов из Куль-Тираса|r и |cRXP_ENEMY_стрелков из Куль-Тираса|r
    .complete 25173,1 --Матрос из Куль-Тираса (6)
    .mob +Матрос из Куль-Тираса
    .complete 25173,2 --Стрелок из Куль-Тираса (6)
    .mob +Стрелок из Куль-Тираса
step
    #completewith next
    .goto 1411,58.71,56.76,-1
    .goto 1411,58.56,54.00,-1
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    >>|cRXP_WARN_Убедитесь, что вы умрете рядом с вейпоинтом или севернее крепости|r
step
    .goto 1411,52.00,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гар'Током|r
    .turnin 25173 >>Сдать квест [Из огня да в полымя]
    .accept 25177 >>Принять квест [Штурм побережья]
    .target Gar'Thok
step << skip
    .goto 1411,50.70,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гримтаком|r
    .accept 6365 >>Принять квест [Мясо для Оргриммара]
    .target Grimtak
step
    .goto 1411,53.05,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гейл|r
    .turnin 25176 >>Сдать квест [Пользуясь случаем]
    .accept 25178 >>Принять квест [Поиски на месте кораблекрушения]
    .target Gail Nozzywig
step << skip
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Буроком|r
    .turnin 6365 >>Сдать квест [Мясо для Оргриммара]
    .accept 6384 >>Принять квест [Поездка в Оргриммар]
    .target Burok
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Каплаком|r в бункере на верхнем этаже
    .train 15087 >> Обучитесь классовым способностям
    .target Kaplak
    .xp <8,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Свартом|r внутри
    .train 324 >> Обучитесь классовым способям
    .target Swart
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джабулом|r
    .goto 1411,53.10,41.61
    .train 768 >> Обучитесь классовым способностям
    .target Jabul
    .xp <8,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотаром|r в бункере на нижнем этаже
    .train 5116 >> Обучитесь классовым способностям
    .target Thotar
    .xp <8,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таршоу|r внутри
    .train 772 >> Обучитесь классовым способностям
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ун'Тувой|r
    .train 122 >> Обучитесь классовым способностям
    .target Un'Thuwa
    .xp <8,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r внутри
    .train 588 >>Обучитесь классовым способностям
    .target Tai'jin
    .xp <8,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гхугру|r снаружи
    .train 687 >>Обучитесь классовым способностям
    .target Ghugru Gorelust
    .xp <8,1
step
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_раненым рубакой из Колючего Холма|r, лежащим на земле
    .accept 25179 >>Принять квест [Минимизация потерь]
    .target Раненый рубака из Колючего Холма
step
    #completewith GnomishTools
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_ранеными рубаками из Колючего Холма|r
    .complete 25179,1 --Раненый рубака из Колючего Холма спасен (4)
    .target Раненый рубака из Колючего Холма
    .skipgossip
step
    #completewith RazorGrunts
    >>Убивайте |cRXP_ENEMY_пенящихся морских элементалей|r
    .complete 25177,1 --Пенящийся морской элементаль (11)
    .mob Пенящийся морской элементаль
step
    #label GnomishTools
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Соберите |cRXP_PICK_гномские наборы инструментов|r на земле
    .complete 25178,1 --Гномские инструменты (4)
step
    #label RazorGrunts
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_ранеными рубаками из Колючего Холма|r
    .complete 25179,1 --Раненый рубака из Колючего Холма спасен (4)
    .target Раненый рубака из Колючего Холма
    .skipgossip
step
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Убивайте |cRXP_ENEMY_пенящихся морских элементалей|r
    .complete 25177,1 --Пенящийся морской элементаль (11)
    .mob Пенящийся морской элементаль
step
    #completewith next
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    .goto 1411,53.08,43.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гейл|r
    .turnin 25178 >>Сдать квест [Поиски на месте кораблекрушения]
    .accept 25227 >>Принять квест [Тонк]
    .target Gail Nozzywig
step
    .goto 1411,51.97,43.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гар'Током|r на верхнем этаже
    .turnin 25177 >>Сдать квест [Штурм побережья]
    .turnin 25179 >>Сдать квест [Минимизация потерь]
    .target Gar'Thok
step
    #xprate <1.2
    .goto 1411,52.25,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оргнилом|r
    .accept 25232 >>Принять квест [Пылающий Клинок]
    .target Orgnil Soulscar
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Каплаком|r в бункере на верхнем этаже
    .train 15087 >> Обучитесь классовым способностям
    .target Kaplak
    .xp <8,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Свартом|r внутри
    .train 324 >> Обучитесь классовым способностям
    .target Swart
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джабулом|r
    .goto 1411,53.10,41.61
    .train 768 >> Обучитесь классовым способностям
    .target Jabul
    .xp <8,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотаром|r в бункере на нижнем этаже
    .train 5116 >> Обучитесь классовым способностям
    .target Thotar
    .xp <8,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таршоу|r внутри
    .train 772 >> Обучитесь классовым способностям
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ун'Тувой|r
    .train 122 >> Обучитесь классовым способностям
    .target Un'Thuwa
    .xp <8,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r внутри
    .train 588 >>Обучитесь классовым способностям
    .target Tai'jin
    .xp <8,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гхугру|r снаружи
    .train 687 >>Обучитесь классовым способностям
    .target Ghugru Gorelust
    .xp <8,1
step
    .goto 1411,51.900,41.147
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Вуарком|r
    .vendor >> Продайте хлам и починитесь
    .target Wuark
step
    #optional
    .maxlevel 9,FlyORG
step
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Идите к сторожевой башне
step
    .goto 1411,49.60,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тонком|r на вершине сторожевой башни
    .turnin 25227 >>Сдать квест [Тонк]
    .accept 25187 >>Принять квест [Затерянные в наводнении]
    .target Thonk
step
    .goto 1411,49.60,40.17
    >>|cRXP_WARN_Используйте|r |T134441:0|t[Подзорную трубу Тонка], |cRXP_WARN_чтобы найти|r |cRXP_FRIENDLY_Раггарана|r|cRXP_WARN_,|r |cRXP_FRIENDLY_затопленную хижину|r|cRXP_WARN_,|r |cRXP_FRIENDLY_Мишу|r|cRXP_WARN_ и|r |cRXP_FRIENDLY_Зен'Таджи|r
    >>|cRXP_WARN_Эту сценку нельзя пропустить|r
    .complete 25187,1 --Найти Раггарана (1)
    .complete 25187,2 --Найти затопленную хижину (1)
    .complete 25187,3 --Найти Мишу (1)
    .complete 25187,4 --Найти Зен'Таджи (1)
    .use 52514
step
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тонком|r
    .turnin 25187 >>Сдать квест [Затерянные в наводнении]
    .accept 25188 >>Принять квест [Дозор на водоразделе]
    .target Thonk
step
    .goto 1411,43.38,30.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мишей|r
    .accept 25193 >>Принять квест [Потеряно, но не забыто]
    .target Misha Tor'kren
step
    #completewith Screamlash
    >>Убивайте |cRXP_ENEMY_зуболомов из логова Смерти|r. Собирайте с них |cRXP_LOOT_зубы|r
    .complete 25193,1 --Зуб дуротарского кроколиска (250)
    .mob Зуболом из логова Смерти
step
    #completewith next
    .goto 1411,35.84,41.38,30 >> Идите к |cRXP_FRIENDLY_Зен'Таджи|r
step
    .goto 1411,35.84,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'Таджи|r
    .accept 25194 >>Принять квест [Незваные гости]
    .target Zen'Taji
step
    #loop
    .goto 1411,35.26,39.70,0
    .goto 1411,35.26,39.70,50,0
    .goto 1411,34.96,36.71,50,0
    .goto 1411,34.90,35.09,50,0
    .goto 1411,34.96,32.48,50,0
    .goto 1411,35.05,30.18,50,0
    .goto 1411,35.23,28.96,50,0
    .goto 1411,34.79,43.39,50,0
    .goto 1411,34.64,44.87,50,0
    .goto 1411,35.37,46.05,50,0
    .goto 1411,35.26,39.70,50,0
    >>Атакуйте |cRXP_ENEMY_заблудившихся степных долгоногов|r вдоль реки, чтобы прогнать их в Степи
    .complete 25194,1 --Заблудившийся степной долгоног вернулся (3)
    .unitscan Заблудившийся степной долгоног
step
    .goto 1411,35.84,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'Таджи|r
    .turnin 25194 >>Сдать квест [Незваные гости]
    .accept 25195 >>Принять квест [С этим ящером покончено]
    .target Zen'Taji
step
    #loop
    .goto 1411,35.819,33.161,0
    .goto 1411,35.643,29.209,0
    .waypoint 1411,35.819,33.161,40,0
    .waypoint 1411,36.019,31.471,40,0
    .waypoint 1411,35.643,29.209,40,0
    >>Убейте |cRXP_ENEMY_Визгуна|r
    .complete 25195,1 --Визгун (1)
    .unitscan Screamslash
    --VV Coords
step
    #label Screamlash
    .goto 1411,35.83,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Зен'Таджи|r
    .turnin 25195 >>Сдать квест [С этим ящером покончено]
    .complete 25188,4 --Помочь Зен'Таджи (1)
    .target Zen'Taji
step
    #loop
    .goto 1411,42.441,35.524,0
    .goto 1411,39.455,34.623,0
    .waypoint 1411,43.839,34.132,40,0
    .waypoint 1411,42.441,35.524,40,0
    .waypoint 1411,41.548,35.852,40,0
    .waypoint 1411,40.731,36.627,40,0
    .waypoint 1411,39.455,34.623,40,0
    >>Убивайте |cRXP_ENEMY_зуболомов из логова Смерти|r. Собирайте с них |cRXP_LOOT_зубы|r
    .complete 25193,1 --Зуб дуротарского кроколиска (250)
    .mob Зуболом из логова Смерти
step
    .goto 1411,43.45,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Мишей|r
    .turnin 25193 >>Сдать квест [Потеряно, но не забыто]
    .complete 25188,3 --Помочь Мише Тор'крен (1)
    .target Misha Tor'kren
step
    .goto 1411,40.49,35.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Теклой|r
    .accept 25189 >>Принять квест [Слава духам!]
    .target Grandmatron Tekla
step
    .goto 1411,42.70,49.90
    >>Сопровождайте |cRXP_FRIENDLY_Теклу|r к |cRXP_FRIENDLY_Раггарану|r
    .complete 25189,1 --Сопроводить матрону Теклу к Раггарану
    --.complete 25188,1 --Помочь матроне Текле (1) --завершается при сдаче квеста 25189
    .target Grandmatron Tekla
step
    .goto 1411,42.66,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Раггараном|r
    .turnin 25189 >>Сдать квест [Слава духам!]
    .accept 25190 >>Принять квест [Ярость Раггарана]
    .target Raggaran
step
    #loop
    .goto 1411,43.57,50.27,0
    .goto 1411,43.57,50.27,40,0
    .goto 1411,44.15,49.45,40,0
    .goto 1411,44.54,50.09,40,0
    .goto 1411,46.66,48.37,40,0
    .goto 1411,47.43,48.63,40,0
    .goto 1411,48.53,49.04,40,0
    .goto 1411,49.21,48.60,40,0
    .goto 1411,50.13,49.39,40,0
    .goto 1411,43.57,50.27,40,0
    >>Убивайте |cRXP_ENEMY_иглошкуров из племени Стальной Гривы|r и |cRXP_ENEMY_разведчиков из племени Стальной Гривы|r
    .complete 25190,1 --Иглошкур из племени Стальной Гривы (4)
    .mob +Иглошкур из племени Стальной Гривы
    .complete 25190,2 --Разведчик из племени Стальной Гривы (4)
    .mob +Разведчик из племени Стальной Гривы
step
    .goto 1411,42.75,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Раггараном|r
    .turnin 25190 >>Сдать квест [Ярость Раггарана]
    .accept 25192 >>Принять квест [Бешенство Раггарана]
    .target Raggaran
step
#loop
	.line 1411,41.83,39.47,41.83,39.47,42.34,40.36,43.09,40.43,43.67,41.35,44.42,40.23,44.34,39.12,44.40,38.38,45.08,37.76,43.88,37.22,43.32,37.02,42.63,36.62,41.98,36.95
	.goto 1411,41.83,39.47,30,0
	.goto 1411,41.83,39.47,30,0
	.goto 1411,42.34,40.36,30,0
	.goto 1411,43.09,40.43,30,0
	.goto 1411,43.67,41.35,30,0
	.goto 1411,44.42,40.23,30,0
	.goto 1411,44.34,39.12,30,0
	.goto 1411,44.40,38.38,30,0
	.goto 1411,45.08,37.76,30,0
	.goto 1411,43.88,37.22,30,0
	.goto 1411,43.32,37.02,30,0
	.goto 1411,42.63,36.62,30,0
	.goto 1411,41.98,36.95,30,0
    >>Убивайте |cRXP_ENEMY_бегунов из племени Стальной Гривы|r и |cRXP_ENEMY_гвардейцев из племени Стальной Гривы|r
    .complete 25192,1 --Бегун из племени Стальной Гривы (5)
    .mob +Бегун из племени Стальной Гривы
    .complete 25192,2 --Гвардеец из племени Стальной Гривы (5)
    .mob +Гвардеец из племени Стальной Гривы
step
    .goto 1411,42.72,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Раггараном|r
    .turnin 25192 >>Сдать квест [Бешенство Раггарана]
    .complete 25188,2 --Помочь Раггарану (1)
    .target Raggaran
step
    #xprate > 1.19
    #completewith FlyORG
    .hs >> Используйте камень возвращения в Колючий Холм
    .cooldown item,6948,>0,1
step
    #xprate > 1.19
    #completewith FlyORG
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    .cooldown item,6948,<0
step
    #xprate > 1.19
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Идите к башне
step
    #xprate > 1.19
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тонком|r
    .turnin 25188 >>Сдать квест [Дозор на водоразделе]
    .target Thonk
step
    #xprate <1.2
    #completewith DustwindCave
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Каплаком|r в бункере на верхнем этаже
    .train 61922 >> Обучитесь классовым способностям
    .target Kaplak
    .xp <10,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Свартом|r внутри
    .train 3599 >> Обучитесь классовым способностям
    .target Swart
    .xp <10,1
step << Druid Cata
    .goto 1411,53.10,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джабулом|r
    .train 5215 >> Обучитесь классовым способностям
    .target Jabul
    .xp <10,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотаром|r в бункере на нижнем этаже
    .train 1978 >> Обучитесь классовым способностям
    .target Thotar
    .xp <10,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таршоу|r внутри
    .train 71 >> Обучитесь классовым способностям
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ун'Тувой|r
    .train 2139 >> Обучитесь классовым способностям
    .target Un'Thuwa
    .xp <9,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r внутри
    .train 8092 >> Обучитесь классовым способностям
    .target Tai'jin
    .xp <9,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гхугру|r снаружи
    .train 1120 >> Обучитесь классовым способностям
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #label DustwindCave
    #completewith next
    .goto 1411,52.82,28.88,40 >> Войдите в пещеру
step
    #xprate <1.2
    #loop
    .goto 1411,52.66,29.15,0
    .goto 1411,52.66,29.15,15,0
    .goto 1411,53.04,29.18,15,0
    .goto 1411,52.75,28.40,15,0
    .goto 1411,53.02,27.87,15,0
    .goto 1411,53.14,27.29,15,0
    .goto 1411,53.44,26.94,15,0
    .goto 1411,52.77,26.67,15,0
    .goto 1411,52.20,26.90,15,0
    .goto 1411,51.90,26.06,15,0
    .goto 1411,52.20,24.46,15,0
    .goto 1411,52.66,29.15,15,0
    >>Убивайте |cRXP_ENEMY_неофитов Пылающего Клинка|r и |cRXP_ENEMY_головорезов Пылающего Клинка|r. Собирайте с них |cRXP_LOOT_свитки заклинаний|r
    .complete 25232,1 --Свиток заклинаний Пылающего Клинка (6)
    .mob Головорез Пылающего Клинка
    .mob Неофит Пылающего Клинка
step
    #xprate <1.2
    #completewith next
    .goto 1411,54.36,29.18,70,0
    .goto 1411,56.13,28.06,70,0
    .goto 1411,56.30,24.76,70,0
    .goto 1411,56.11,21.96,40,0
    .goto 1411,56.21,20.23 >> Идите к Век'нагу
step
    #xprate <1.2
    .goto 1411,56.21,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Век'нагом|r
    .accept 25256 >>Принять квест [Послан за помощью]
    .target Vek'nag
step
    #xprate <1.2
    .goto 1411,58.81,23.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Острозубом|r
    .turnin 25256 >>Сдать квест [Послан за помощью]
    .accept 25257 >>Принять квест [Гислания]
    .accept 25258 >>Принять квест [Грисуолд Ханнистон]
    .accept 25259 >>Принять квест [Гаур Ледяной Рог]
    .target Spiketooth
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.41,23.47
    +|cRXP_WARN_Поговорите с |cRXP_FRIENDLY_Гауром Ледяным Рогом|r, чтобы он стал враждебным|r
    .target Gaur Icehorn
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.41,23.47
    >>Убейте |cRXP_ENEMY_Гаура Ледяного Рога|r
    .complete 25259,1 --Гаур побежден (1)
    .mob Gaur Icehorn
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.68,22.63
    +|cRXP_WARN_Поговорите с |cRXP_FRIENDLY_Гисланией|r, чтобы она стала враждебной|r
    .target Ghislania
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.68,22.63
    >>Убейте |cRXP_ENEMY_Гисланию|r
    .complete 25257,1 --Гислания побеждена (1)
    .mob Ghislania
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.06,22.26
    +|cRXP_WARN_Поговорите с |cRXP_FRIENDLY_Грисуолдом|r, чтобы он стал враждебным|r
    .target Griswold
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.06,22.26
    >>Убейте |cRXP_ENEMY_Грисуолда|r
    .complete 25258,1 --Грисуолд побежден (1)
    .mob Griswold
step
    #xprate <1.2
    .goto 1411,58.80,23.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Острозубом|r
    .turnin 25257 >>Сдать квест [Гислания]
    .turnin 25258 >>Сдать квест [Грисуолд Ханнистон]
    .turnin 25259 >>Сдать квест [Гаур Ледяной Рог]
    .target Spiketooth
step
    #xprate <1.2
    #completewith Orgnil
    .goto 1411,57.13,27.37,40,0
    .goto 1411,55.79,31.03,40,0
    .goto 1411,53.90,35.53,40,0
    .goto 1411,52.81,39.75,40 >> Бегите назад в Колючий Холм
    .cooldown item,6948,<0
step
    #xprate <1.2
    #completewith Orgnil
    .hs >> Используйте камень возвращения в Колючий Холм
    .cooldown item,6948,>0
step
    #xprate <1.2
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оргнилом|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Сдать квест [Пылающий Клинок]
    .accept 25196 >>Принять квест [Блокада Драношара]
    .target Orgnil Soulscar
    .maxlevel 9
step
    #xprate <1.2
    #label Orgnil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Оргнилом|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Сдать квест [Пылающий Клинок]
    .target Orgnil Soulscar
step << Rogue Cata
    #xprate <1.2
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Каплаком|r в бункере на верхнем этаже
    .train 61922 >> Обучитесь классовым способностям
    .target Kaplak
    .xp <10,1
step << Shaman Cata
    #xprate <1.2
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Свартом|r внутри
    .train 3599 >> Обучитесь классовым способностям
    .target Swart
    .xp <10,1
step << Druid Cata
    #xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Джабулом|r
    .goto 1411,53.10,41.61
    .train 5215 >> Обучитесь классовым способностям
    .target Jabul
    .xp <10,1
step << Hunter Cata
    #xprate <1.2
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотаром|r в бункере на нижнем этаже
    .train 1978 >> Обучитесь классовым способностям
    .target Thotar
    .xp <10,1
step << Warrior Cata
    #xprate <1.2
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Таршоу|r внутри
    .train 71 >> Обучитесь классовым способностям
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage Cata
    #xprate <1.2
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ун'Тувой|r
    .train 2139 >> Обучитесь классовым способностям
    .target Un'Thuwa
    .xp <9,1
step << Priest Cata
    #xprate <1.2
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Паратой|r внутри
    .train 8092 >> Обучитесь классовым способностям
    .target Tai'jin
    .xp <9,1
step << Warlock Cata
    #xprate <1.2
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гхугру|r снаружи
    .train 1120 >> Обучитесь классовым способностям
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Идите к башне
step
    #xprate <1.2
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тонком|r
    .turnin 25188 >>Сдать квест [Дозор на водоразделе]
    .target Thonk
step
    #label FlyORG
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Буроком|r
    .fly Orgrimmar >>Летите в Оргриммар
    .target Burok
    .xp <10,1
step
    #optional
    .abandon 25227 >>Отменить квест [Тонк]

    --Следующий раздел, если игрок еще не 10 уровня

step
    #xprate <1.2
    #optional
    #completewith next
    .goto 1411,46.26,30.19
    >>|cRXP_WARN_Идите к вейпоинту. Не умирайте, пока не доберетесь туда|r
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Резлаком|r
    .accept 834 >>Принять квест [Ветра пустыни]
    .target Rezlak
    .maxlevel 9
step
    #xprate <1.2
    #optional
    .goto 1411,48.95,22.34,0
    .goto 1411,48.95,22.34,40,0
    .goto 1411,49.75,21.95,40,0
    .goto 1411,49.62,24.17,40,0
    .goto 1411,50.52,25.32,40,0
    .goto 1411,50.08,25.72,40,0
    .goto 1411,50.87,25.99,40,0
    .goto 1411,51.68,27.75,40,0
    .goto 1411,50.56,27.33,40,0
    .goto 1411,49.89,26.88,40,0
    .goto 1411,49.63,32.13,40,0
    .goto 1411,49.12,33.11,40,0
    .goto 1411,48.53,32.01,40,0
    .goto 1411,48.13,32.02,40,0
    .goto 1411,47.07,30.87,40,0
    .goto 1411,47.16,29.67,40,0
    .goto 1411,48.95,22.34,40,0
    >>Соберите |cRXP_LOOT_куль-тирасские мешки с припасами|r на земле
    .complete 834,1 --Мешок с припасами (5)
    .isOnQuest 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Резлаком|r
    .turnin 834 >>Сдать квест [Ветра пустыни]
    .accept 835 >>Принять квест [Безопасность торговых путей]
    .target Rezlak
    .isQuestComplete 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Резлаком|r
    .accept 835 >>Принять квест [Безопасность торговых путей]
    .target Rezlak
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,49.76,28.04,0
    .goto 1411,48.86,22.10,40,0
    .goto 1411,49.76,23.27,40,0
    .goto 1411,50.13,25.15,40,0
    .goto 1411,50.76,25.90,40,0
    .goto 1411,51.34,27.16,40,0
    .goto 1411,51.89,27.45,40,0
    .goto 1411,54.08,27.34,40,0
    .goto 1411,54.05,23.47,40,0
    .goto 1411,51.98,20.78,40,0
    .goto 1411,52.88,24.14,40,0
    .goto 1411,51.26,23.79,40,0
    .goto 1411,49.76,28.04,40,0
    >>Убивайте любых |cRXP_ENEMY_гарпий из племени Пыльных Ветров|r
    .complete 835,1 --Дуротарская гарпия (12)
    .mob Налетчица из племени Пыльных Ветров
    .mob Гарпия из племени Пыльных Ветров
    .mob Дикарка из племени Пыльных Ветров
    .mob Громовая ведьма из племени Пыльных Ветров
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Резлаком|r
    .turnin 835 >>Сдать квест [Безопасность торговых путей]
    .target Rezlak
    .isQuestComplete 835
step
    #xprate <1.2
    #optional
    #completewith Fizzled
    .goto 1411,45.11,13.65,30 >> Бегите к |cRXP_FRIENDLY_Гору|r
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r и |cRXP_FRIENDLY_Шином|r
    .turnin 25196 >>Сдать квест [Блокада Драношара]
    --.accept 25206 >>Принять [Невзирая на предупреждения]
    .accept 25236 >>Принять [Гром под ногами]
    .accept 25260 >>Принять [Физзл]
    --.accept 25648 >>Принять [За пределами Дуротара]
    .goto 1411,45.01,14.78
    .accept 25205 >>Принять [Волк и кодо]
    .goto 1411,44.90,14.83
    .target Gor the Enforcer
    .target Shin Stonepillar
step
    #xprate <1.2
    #optional
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r
    .turnin 25196 >>Сдать квест [Блокада Драношара]
    --.accept 25206 >>Принять [Невзирая на предупреждения]
    .accept 25236 >>Принять [Гром под ногами]
    .accept 25260 >>Принять [Физзл]
    --.accept 25648 >>Принять [За пределами Дуротара]
    .target Gor the Enforcer
    .maxlevel 9
step
    #xprate <1.2
    #optional
    #label Fizzled
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r
    .turnin 25196 >>Сдать квест [Блокада Драношара]
    --.accept 25206 >>Принять [Невзирая на предупреждения]
    .accept 25236 >>Принять [Гром под ногами]
    .accept 25260 >>Принять [Физзл]
    --.accept 25648 >>Принять [За пределами Дуротара]
    .target Gor the Enforcer
    .maxlevel 9

    --BB Квест 25205 сейчас забагован на бете

step << skip
    .goto 1411,44.90,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шином|r
    .gossipoption 112089 >> Поговорите с |cRXP_FRIENDLY_Шином|r
    .target Shin Stonepillar
step << skip
    .goto 1411,52.47,16.47
    >>Идите к |cRXP_FRIENDLY_кодо|r
    >>|cRXP_WARN_Используйте|r |T132120:0|t[Порыв] |cRXP_WARN_по КД|r
    .complete 25205,1 --Выслушать басню шамана (1)
    .unitscan The Kodo
step << skip
    .goto 1411,44.89,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Шином|r
    .turnin 25205 >>Сдать квест [Волк и кодо]
    .target Shin Stonepillar
    .skipgossip
step << skip
    #loop
    .goto 1411,38.041,16.299,0
    .waypoint 1411,40.401,15.857,40,0
    .waypoint 1411,38.041,16.299,40,0
    .waypoint 1411,38.738,18.791,40,0
    .waypoint 1411,40.108,17.593,40,0
    >>Убивайте |cRXP_ENEMY_кишащих водных стражей|r и |cRXP_ENEMY_яростных земных стражей|r
    .complete 25206,1 --Враждующий элементаль (12)
    .mob Текучий водный страж
    .mob Яростный земной страж
step
    #xprate <1.2
    #optional
    #completewith next
    >>Кликайте на |cRXP_FRIENDLY_утонувших громовых ящериц|r под водой
    .complete 25236,1 --Утонувшая громовая ящерица убрана (8)
    .target Утонувшая громовая ящерица
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #label Fizzle
    .goto 1411,42.11,26.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с трупом |cRXP_FRIENDLY_Физзла|r под водой. Заберите его |cRXP_PICK_сферу|r
    .complete 25260,1 --Сфера Физзла (1)
    .skipgossip 3203,1,1
    .target Fizzle Darkclaw
    .isOnQuest 25260
    --BB Забагован на бете
step
    #xprate <1.2
    #optional
    #loop
    .goto 1411,41.22,24.55,0
    .goto 1411,39.29,28.19,0
    .waypoint 1411,41.65,25.09,40,0
    .waypoint 1411,41.22,24.55,40,0
    .waypoint 1411,40.54,24.19,40,0
    .waypoint 1411,39.57,23.63,40,0
    .waypoint 1411,39.53,24.99,40,0
    .waypoint 1411,38.97,25.05,40,0
    .waypoint 1411,39.01,26.25,40,0
    .waypoint 1411,39.49,26.96,40,0
    .waypoint 1411,38.97,27.69,40,0
    .waypoint 1411,39.29,28.19,40,0
    .waypoint 1411,39.73,27.97,40,0
    .waypoint 1411,40.25,28.09,40,0
    .waypoint 1411,40.52,29.77,40,0
    .waypoint 1411,39.15,29.74,40,0
    .waypoint 1411,41.93,23.95,40,0
    >>Кликайте на |cRXP_FRIENDLY_утонувших громовых ящериц|r
    .complete 25236,1 --Утонувшая громовая ящерица убрана (8)
    .target Утонувшая громовая ящерица
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #completewith FizzledTurnin
    .deathskip >> Умрите и возродитесь у |cRXP_FRIENDLY_Целителя душ|r
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r
    --.turnin 25206 >>Сдать квест [Невзирая на предупреждения]
    .turnin 25236 >>Сдать квест [Гром под ногами]
    .turnin 25260 >>Сдать квест [Физзл]
    .target Gor the Enforcer
    .isQuestComplete 25236
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r
    --.turnin 25206 >>Сдать квест [Невзирая на предупреждения]
    .turnin 25260 >>Сдать квест [Физзл]
    .target Gor the Enforcer
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    #label FizzledTurnin
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гором|r
    --.turnin 25206 >>Сдать квест [Невзирая на предупреждения]
    .turnin 25236 >>Сдать квест [Гром под ногами]
    .target Gor the Enforcer
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,45.506,11.949,30,0
    .zone Orgrimmar >>Войдите в Оргриммар
    .isQuestTurnedIn 25196
step << skip
    .goto 1454,54.083,74.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Грышкой|r
    .turnin 6384 >>Сдать квест [Поездка в Оргриммар]
    .target Innkeeper Gryshka

    ]])
