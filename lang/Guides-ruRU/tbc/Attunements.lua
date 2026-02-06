if GetLocale() ~= "ruRU" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Гайды по доступам
#name 1. Каражан
#title Каражан

step
    #optional
    +|cRXP_WARN_Вы должны быть как минимум 68 уровня, чтобы начать цепочку заданий на доступ в Каражан|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >> Отправляйтесь в Перевал Мертвого Ветра в Восточных Королевствах
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >> Отправляйтесь в Каражан
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Верховным магом Альтурусом|r
    .accept 9824 >> Примите задание "Магические возмущения"
    .accept 9825 >> Примите задание "Призрачная активность"
    .target Верховный маг Альтурус
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Спуститесь по лестнице в Погреба Мастера
step
    #optional
    #completewith Reading2
    >>Убивайте |cRXP_ENEMY_призраков|r вокруг Каражана. Собирайте с них |cRXP_LOOT_призрачную эссенцию|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Неживой смотритель
    .mob Проклятая душа
    .mob Беспокойная тень
    .mob Стенающий призрак
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> |cRXP_WARN_Используйте|r |T134075:0|t[Фиолетовый кристалл прорицания], |cRXP_WARN_стоя в|r |cRXP_PICK_Подземном пруду|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Вернитесь тем же путем, чтобы выйти из Погребов Мастера. Вскоре вы снова войдете через другой вход|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Спуститесь по другой лестнице в Погреба Мастера
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> |cRXP_WARN_Используйте|r |T134075:0|t[Фиолетовый кристалл прорицания] |cRXP_WARN_рядом с|r |cRXP_PICK_Подземным колодцем|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Убивайте |cRXP_ENEMY_призраков|r вокруг Каражана. Собирайте с них |cRXP_LOOT_призрачную эссенцию|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Неживой смотритель
    .mob Проклятая душа
    .mob Беспокойная тень
    .mob Стенающий призрак
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Верховным магом Альтурусом|r
    .turnin 9824 >> Сдайте задание "Магические возмущения"
    .turnin 9825 >> Сдайте задание "Призрачная активность"
    .accept 9826 >> Примите задание "Связь с Далараном"
    .target Верховный маг Альтурус
step
    #completewith next
    .zone Alterac Mountains >> Отправляйтесь в Альтеракские горы
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Верховным магом Седриком|r
    .turnin 9826 >> Сдайте задание "Связь с Далараном"
    .accept 9829 >> Примите задание "Кадгар"
    .target Верховный маг Седрик
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Слугой Кадгара|r
    .turnin 9829 >> Сдайте задание "Кадгар"
    .accept 9831 >> Примите задание "Вход в Каражан"
    .target Кадгар
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> |cRXP_WARN_Найдите группу в подземелье Темный лабиринт в лесу Тероккар. Как только группа будет найдена, войдите в Темный лабиринт|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_После того как убьете |cRXP_ENEMY_Ворчуна|r, откройте |cRXP_PICK_Магический контейнер|r на земле, чтобы призвать|r |cRXP_ENEMY_Стража первого фрагмента|r
    >>Убейте |cRXP_ENEMY_Стража первого фрагмента|r. Заберите с него |cRXP_LOOT_Первый фрагмент ключа|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob Страж первого фрагмента
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Слугой Кадгара|r
    .turnin 9831 >> Сдайте задание "Вход в Каражан"
    .accept 9832 >> Примите задание "Второй и третий фрагменты"
    .target Кадгар
step
    >>Теперь вы должны пройти Паровое подземелье и Аркатрац. Неважно, что первым
    >>Оказавшись внутри любого из подземелий, откройте |cRXP_PICK_Магический контейнер|r, чтобы призвать |cRXP_ENEMY_Стража фрагмента|r
    >>Убейте |cRXP_ENEMY_Стража фрагмента|r. Соберите с них |cRXP_LOOT_Второй фрагмент ключа|r и |cRXP_LOOT_Третий фрагмент ключа|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Страж второго фрагмента
    .mob Страж третьего фрагмента
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Слугой Кадгара|r
    .turnin 9832 >> Сдайте задание "Второй и третий фрагменты"
    .accept 9836 >> Примите задание "Прикосновение Мастера"
    .target Кадгар
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_Теперь вы должны пройти Черные топи, однако для входа в них вам нужно выполнить задание "Побег из Дарнхольда", пройдя подземелье Старые предгорья Хилсбрада в Пещерах Времени|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> |cRXP_WARN_Найдите группу в подземелье Черные топи. Как только группа будет найдена, войдите в Черные топи|r
step
    >>Пройдите Черные топи
    >>|cRXP_WARN_Убедитесь, что вы стоите рядом с |cRXP_FRIENDLY_Медивом|r, как только убьете|r |cRXP_ENEMY_Эонуса|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Медивом|r
    .turnin 9836 >> Сдайте задание "Прикосновение Мастера"
    .accept 9837 >> Примите задание "Возвращение к Кадгару"
    .target Медив
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Слугой Кадгара|r
    .turnin 9837 >> Сдайте задание "Возвращение к Кадгару"
    .accept 9838 >> Примите задание "Аметистовое Око"
    .target Кадгар
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_Поздравляем! Вы получили доступ в Каражан|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Гайды по доступам
#name 2. Змеиное святилище
#title Змеиное святилище

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> |cRXP_WARN_Найдите группу в ГЕРОИЧЕСКИЙ: Рабские топи в Зангартопи. Как только группа будет найдена, войдите в Рабские топи|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите со |cRXP_FRIENDLY_Скар'тисом Еретиком|r
    .accept 10901 >> Примите задание "Посох Кар'деша"
    .target Скар'тис Еретик
step
    >>|cRXP_WARN_Найдите рейды в Логово Груула и Каражан|r
    >>Убейте |cRXP_ENEMY_Груула|r. Заберите с него |cRXP_LOOT_земляную печать|r
    >>Убейте |cRXP_ENEMY_Ночную Погибель|r. Заберите с него |cRXP_LOOT_пылающую печать|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Вернитесь к |cRXP_FRIENDLY_Скар'тису Еретику|r внутри ГЕРОИЧЕСКИХ: Рабских топей|r
    .turnin 10901 >> Сдайте задание "Посох Кар'деша"
    .target Скар'тис Еретик
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_Поздравляем! Вы получили доступ в Змеиное святилище|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Гайды по доступам
#name 3. Крепость Бурь
#title Крепость Бурь

step
    #completewith next
    .zone Shadowmoon Valley >> Отправляйтесь в Долину Призрачной Луны
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Софурусом|r
    .accept 10680 >> Примите задание "Рука Гул'дана"
	.target Тотемист Софурус
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Сплинтуфом|r
    .accept 10681 >> Примите задание "Рука Гул'дана"
	.target Тотемист Сплинтуф
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Толоком|r
    .turnin 10680 >> Сдайте задание "Рука Гул'дана" << Alliance
    .turnin 10681 >> Сдайте задание "Рука Гул'дана" << Horde
    .accept 10458 >> Примите задание "Разъяренные духи Огня и Земли"
	.target Тотемист Толок
step
    .use 30094 >>|cRXP_WARN_Используйте|r |T135462:0|t[Тотем духов] |cRXP_WARN_и убивайте|r |cRXP_ENEMY_разъяренных духов огня|r и |cRXP_ENEMY_разъяренных духов земли|r
    >>|cRXP_WARN_Убедитесь, что вы убиваете их, пока они находятся рядом с|r |T135462:0|t[Тотемом духов]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Разъяренный дух земли
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Разъяренный дух огня
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Толоком|r
    .turnin 10458 >> Сдайте задание "Разъяренные духи Огня и Земли"
    .accept 10480 >> Примите задание "Разъяренные духи Воды"
	.target Тотемист Толок
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Используйте|r |T135462:0|t[Тотем духов] |cRXP_WARN_и убивайте|r |cRXP_ENEMY_разъяренных духов воды|r
    >>|cRXP_WARN_Убедитесь, что вы убиваете их, пока они находятся рядом с|r |T135462:0|t[Тотемом духов]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Разъяренный дух воды
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Толоком|r
    .turnin 10480 >> Сдайте задание "Разъяренные духи Воды"
    .accept 10481 >> Примите задание "Разъяренные духи Воздуха"
	.target Тотемист Толок
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Используйте|r |T135462:0|t[Тотем духов] |cRXP_WARN_и убивайте|r |cRXP_ENEMY_разъяренных духов воздуха|r
    >>|cRXP_WARN_Убедитесь, что вы убиваете их, пока они находятся рядом с|r |T135462:0|t[Тотемом духов]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Разъяренный дух воздуха
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Толоком|r
    .turnin 10481 >> Сдайте задание "Разъяренные духи Воздуха"
    .accept 10513 >> Примите задание "Оронок Горемычный"
	.target Тотемист Толок
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ороноком Горемычным|r
    .turnin 10513 >> Сдайте задание "Оронок Горемычный"
    .accept 10514 >> Примите задание "Кем я только не был..."
	.target Оронок Горемычный
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_Встаньте на верхушку маленьких растений на земле и используйте|r |T132161:0|t[Свисток для вепря Оронока], |cRXP_WARN_чтобы ближайшие прирученные скверновепри выкопали|r |cRXP_LOOT_клубни Призрачной Луны|r
    >>|cRXP_WARN_Очень важно НЕ убивать прирученных скверновепрей|r
    >>Собирайте |cRXP_LOOT_клубни Призрачной Луны|r, которые появляются на земле после этого
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ороноком Горемычным|r
    .turnin 10514 >> Сдайте задание "Кем я только не был..."
    .accept 10515 >> Примите задание "Преподанный урок"
	.target Оронок Горемычный
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Нажимайте на |cRXP_ENEMY_яйца прожорливого свежевателя|r на земле, чтобы уничтожить их
    >>|cRXP_WARN_Остерегайтесь элитной|r |cRXP_ENEMY_Матери прожорливых свежевателей|r, |cRXP_WARN_которая патрулирует область|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ороноком Горемычным|r
    .turnin 10515 >> Сдайте задание "Преподанный урок"
    .accept 10519 >> Примите задание "Код Проклятия – Правда и история"
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Оронок Горемычный
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ороноком Горемычным|r
    .turnin 10519 >> Сдайте задание "Код Проклятия – Правда и история"
    .accept 10521 >> Примите задание "Гром'тор, сын Оронока"
    .accept 10527 >> Примите задание "Ар'тор, сын Оронока"
    .accept 10546 >> Примите задание "Борак, сын Оронока"
	.target Оронок Горемычный
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гром'тором, сыном Оронока|r
    .turnin 10521 >> Сдайте задание "Гром'тор, сын Оронока"
    .accept 10522 >> Примите задание "Код Проклятия - поручение Гром'тора"
	.target Гром'тор, сын Оронока
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Убивайте |cRXP_ENEMY_наг из племени Кольцевой Чешуи|r. Собирайте с них |cRXP_LOOT_ключи от сундука племени Кольцевой Чешуи|r
    >>Открывайте |cRXP_PICK_сундуки племени Кольцевой Чешуи|r, пока не найдете |cRXP_LOOT_первый фрагмент Кода Проклятия|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Защитник из племени Кольцевой Чешуи
	.mob Грязегляд из племени Кольцевой Чешуи
	.mob Мирмидон из племени Кольцевой Чешуи
	.mob Сирена из племени Кольцевой Чешуи
	.mob Колдунья из племени Кольцевой Чешуи
	.mob Хранительница воды из племени Кольцевой Чешуи
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Гром'тором, сыном Оронока|r
    .turnin 10522 >> Сдайте задание "Код Проклятия - поручение Гром'тора"
    .accept 10523 >> Примите задание "Код Проклятия – Первый фрагмент найден"
	.target Гром'тор, сын Оронока
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ар'тором, сыном Оронока|r
    .turnin 10527 >> Сдайте задание "Ар'тор, сын Оронока"
    .accept 10528 >> Примите задание "Демонические кристаллические тюрьмы"
	.target Ар'тор, сын Оронока
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Убейте |cRXP_ENEMY_Хозяйку боли Габриссу|r. Заберите с нее |cRXP_LOOT_кристаллический ключ|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Хозяйка боли Габрисса
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ар'тором, сыном Оронока|r
    .turnin 10528 >> Сдайте задание "Демонические кристаллические тюрьмы"
	.target Ар'тор, сын Оронока
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_духом Ар'тора|r
    .accept 10537 >> Примите задание "Лон'горон, лук Горемычного"
	.target Дух Ар'тора
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Убивайте |cRXP_ENEMY_иллидари|r. Собирайте с них |cRXP_LOOT_Лон'горон, лук Горемычного|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Ужас иллидари
	.mob Истязательница иллидари
	.mob Ловчий Смерти иллидари
	.mob Штурмовик иллидари
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_духом Ар'тора|r
    .turnin 10537 >> Сдайте задание "Лон'горон, лук Горемычного"
    .accept 10540 >> Примите задание "Код Проклятия - поручение Ар'тора"
	.target Дух Ар'тора
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Идите на юго-восток, пока |cRXP_FRIENDLY_Дух Ар'тора|r следует за вами, ходите по этой области, пока он не призовет|r |cRXP_ENEMY_Винератуса Многоликого|r
    >>Убейте |cRXP_ENEMY_Винератуса Многоликого|r. Заберите с него |cRXP_LOOT_второй фрагмент Кода Проклятия|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Винератус Многоликий
	.target Дух Ар'тора
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_духом Ар'тора|r
    .turnin 10540 >> Сдайте задание "Код Проклятия - поручение Ар'тора"
    .accept 10541 >> Примите задание "Код Проклятия – Второй фрагмент найден"
	.target Дух Ар'тора
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10546 >> Сдайте задание "Борак, сын Оронока"
    .accept 10547 >> Примите задание "О любителях чертополоха и яйцах..."
	.target Борак, сын Оронока
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Собирайте |cRXP_PICK_тухлые яйца араккоа|r на земле
    >>|cRXP_WARN_Будьте осторожны, так как они могут нанести вам урон при сборе|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тобиасом Грязеедом|r
    .turnin 10547 >> Сдайте задание "О любителях чертополоха и яйцах..."
    .accept 10550 >> Примите задание "Связка кровавого чертополоха"
	.target Тобиас Грязеед
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10550 >> Сдайте задание "Связка кровавого чертополоха"
    .accept 10570 >> Примите задание "Как поймать любителя чертополоха"
	.target Борак, сын Оронока
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Используйте|r |T133651:0|t[Связку кровавого чертополоха] |cRXP_WARN_в конце моста|r
    .timer 78,Сцена задания "Как поймать любителя чертополоха"
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Убейте |cRXP_ENEMY_посланника Икария|r, когда он станет атакуемым. Заберите с него |cRXP_LOOT_послание Ярости Бури|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Посланник Икарий
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10570 >> Сдайте задание "Как поймать любителя чертополоха"
    .accept 10576 >> Примите задание "Суматоха в Долине Призрачной Луны"
	.target Борак, сын Оронока
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Убивайте |cRXP_ENEMY_солдат из отряда Затмения|r. Соберите с них |cRXP_LOOT_броню|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Архимаг из отряда Затмения
	.mob Рыцарь крови из отряда Затмения
	.mob Кровавый страж из отряда Затмения
	.mob Центурион из отряда Затмения
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10576 >> Сдайте задание "Суматоха в Долине Призрачной Луны"
    .accept 10577 >> Примите задание "Что хочет Иллидан, Иллидан получит..."
	.target Борак, сын Оронока
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Используйте|r |T133564:0|t[Маскировку под эльфа крови]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Поговорите с |cRXP_FRIENDLY_главнокомандующим Рууском|r
    >>|cRXP_WARN_Убедитесь, что на вас надета|r |T133564:0|t[Маскировка под эльфа крови]|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Главнокомандующий Рууск
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10577 >> Сдайте задание "Что хочет Иллидан, Иллидан получит..."
    .accept 10578 >> Примите задание "Код Проклятия - поручение Борака"
	.target Борак, сын Оронока
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Убейте |cRXP_ENEMY_Руула Опустошителя|r. Заберите с него |cRXP_LOOT_третий фрагмент Кода Проклятия|r
    >>|cRXP_ENEMY_Руул Опустошитель|r |cRXP_WARN_бьет очень сильно. Рекомендуется выполнять это задание в полной группе с танком и лекарем|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Руул Опустошитель
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Бораком, сыном Оронока|r
    .turnin 10578 >> Сдайте задание "Код Проклятия - поручение Борака"
    .accept 10579 >> Примите задание "Код Проклятия – Третий фрагмент найден"
	.target Борак, сын Оронока
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Ороноком Горемычным|r
    .turnin 10523 >> Сдайте задание "Код Проклятия – Первый фрагмент найден"
    .turnin 10541 >> Сдайте задание "Код Проклятия – Второй фрагмент найден"
    .turnin 10579 >> Сдайте задание "Код Проклятия – Третий фрагмент найден"
    .accept 10588 >> Примите задание "Код Проклятия"
	.target Оронок Горемычный
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Поддерживайте заклинание|r |T134423:0|t[Код Проклятия] |cRXP_WARN_в течение 20 секунд, чтобы призвать|r |cRXP_ENEMY_Кируха Повелителя Огня|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Убейте |cRXP_ENEMY_Кируха Повелителя Огня|r
    >>|cRXP_ENEMY_Кирух Повелитель Огня|r |cRXP_WARN_имеет 369к здоровья. Рекомендуется выполнять это задание в полной группе с танком и лекарем. NPC также будут вам помогать|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Кирух Повелитель Огня
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Тотемистом Толоком|r
    .turnin 10588 >> Сдайте задание "Код Проклятия"
	.target Тотемист Толок
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кадгаром|r
    .accept 10883 >> Примите задание "Ключ Бурь"
    .target Кадгар
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_А'далом|r
    .turnin 10883 >> Сдайте задание "Ключ Бурь"
    .accept 10884 >> Примите задание "Испытание наару: милосердие"
    .accept 10885 >> Примите задание "Испытание наару: сила"
    .accept 10886 >> Примите задание "Испытание наару: стойкость"
    .target А'дал
step
    >>|cRXP_WARN_Теперь у вас есть 3 задания-испытания. Все они должны быть выполнены при прохождении подземелий на ГЕРОИЧЕСКОЙ сложности|r
    >>|cRXP_WARN_Подземелья, которые вы должны пройти: Разрушенные залы, Паровое подземелье, Аркатрац и Темный лабиринт|r
    >>Пройдите Разрушенные залы в течение 55 минут после убийства |cRXP_ENEMY_Главного чернокнижника Нетрекура|r. Вы должны убить |cRXP_ENEMY_Палача из клана Изувеченной Длани|r в конце подземелья в течение отведенного времени. Заберите с него |cRXP_LOOT_Неиспользованный топор палача|r
    >>Убейте |cRXP_ENEMY_Полководца Калитреша|r в Паровом подземелье. Заберите с него |cRXP_LOOT_Трезубец Калитреша|r
    >>Убейте |cRXP_ENEMY_Ворчуна|r в Темном лабиринте. Заберите с него |cRXP_LOOT_Эссенцию Ворчуна|r
    >>Пройдите Аркатрац. Убедитесь, что |cRXP_FRIENDLY_Миллхаус Манашторм|r остался жив после победы над финальным боссом, |cRXP_ENEMY_Предвестником Скайриссом|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_А'далом|r
    .turnin 10884 >> Сдайте задание "Испытание наару: милосердие"
    .turnin 10885 >> Сдайте задание "Испытание наару: сила"
    .turnin 10886 >> Сдайте задание "Испытание наару: стойкость"
    .accept 10888 >> Примите задание "Испытание наару: Магтеридон"
    .target А'дал
step
    >>Убейте |cRXP_ENEMY_Магтеридона|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_А'далом|r
    .turnin 10888 >> Сдайте задание "Испытание наару: Магтеридон"
    .target А'дал
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_Поздравляем! Вы получили доступ в Око: Крепость Бурь|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Гайды по доступам
#name 4. Гора Хиджал
#title Гора Хиджал

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Отправляйтесь в Пещеры Времени
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соридорми|r
    >>|cRXP_FRIENDLY_Соридорми|r |cRXP_WARN_немного патрулирует|r
    .accept 10445 >> Примите задание "Флаконы Вечности"
    .target Соридорми
step
    >>Убейте |cRXP_ENEMY_Леди Вайш|r. Заберите с нее |cRXP_LOOT_Остаток флакона Вайш|r
    >>Убейте |cRXP_ENEMY_Кель'таса Солнечного Скитальца|r. Заберите с него |cRXP_LOOT_Остаток флакона Келя|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Вернитесь в Пещеры Времени
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Соридорми|r
    >>|cRXP_FRIENDLY_Соридорми|r |cRXP_WARN_немного патрулирует|r
    .turnin 10445 >> Сдайте задание "Флаконы Вечности"
    .target Соридорми
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_Поздравляем! Вы получили доступ на гору Хиджал|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Гайды по доступам
#name 5. Черный храм
#title Черный храм

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Отправляйтесь в Долину Призрачной Луны
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Послушницей Сейлой|r
    .accept 10568 >> Примите задание "Скрижали Баа'ри"
	.target Послушница Сейла
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >> Отправляйтесь в Долину Призрачной Луны
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арканистом Телисом|r
    .accept 10683 >> Примите задание "Скрижали Баа'ри"
    .target Арканист Телис
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Собирайте |cRXP_PICK_фрагменты скрижали Баа'ри|r на земле
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Собирайте |cRXP_PICK_фрагменты скрижали Баа'ри|r на земле
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Послушницей Сейлой|r
    .turnin 10568 >> Сдайте задание "Скрижали Баа'ри"
    .accept 10571 >> Примите задание "Орону Старейший"
	.target Послушница Сейла
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арканистом Телисом|r
    .turnin 10683 >> Сдайте задание "Скрижали Баа'ри"
    .accept 10684 >> Примите задание "Орону Старейший"
    .target Арканист Телис
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Убейте |cRXP_ENEMY_Орону|r на балконе
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Орону Старейший
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Убейте |cRXP_ENEMY_Орону|r на балконе
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Орону Старейший
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Послушницей Сейлой|r
    .turnin 10571 >> Сдайте задание "Орону Старейший"
    .accept 10574 >> Примите задание "Осквернители из племени Пеплоустов"
	.target Послушница Сейла
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арканистом Телисом|r
    .turnin 10684 >> Сдайте задание "Орону Старейший"
    .accept 10685 >> Примите задание "Осквернители из племени Пеплоустов"
    .target Арканист Телис
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Лакаана|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Лакаан
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Уларалу|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Уларалу
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Эйкенена|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Эйкенен
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Халума|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона Халума|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Халум
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Халума|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона Халума|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Халум
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Эйкенена|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Эйкенен
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Уларалу|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Уларалу
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Уничтожьте тотемы, защищающие |cRXP_ENEMY_Лакаана|r. Убейте его и заберите |cRXP_LOOT_фрагмент медальона|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Лакаан
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Послушницей Сейлой|r
    .turnin 10574 >> Сдайте задание "Осквернители из племени Пеплоустов"
    .accept 10575 >> Примите задание "Клетка Стражницы"
	.target Послушница Сейла
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Арканистом Телисом|r
    .turnin 10685 >> Сдайте задание "Осквернители из племени Пеплоустов"
    .accept 10686 >> Примите задание "Клетка Стражницы"
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Санору|r
    .turnin 10575 >> Сдайте задание "Клетка Стражницы"
    .accept 10622 >> Примите задание "Доказательство верности"
	.target Санору
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Санору|r
    .turnin 10686 >> Сдайте задание "Клетка Стражницы"
    .accept 10622 >> Примите задание "Доказательство верности"
	.target Санору
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Убейте |cRXP_ENEMY_Зандраса|r
    >>|cRXP_ENEMY_Зандрас|r |cRXP_WARN_патрулирует крышу наверху|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob Зандрас
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Санору|r
    .turnin 10622 >> Сдайте задание "Доказательство верности"
    .accept 10628 >> Примите задание "Акама"
	.target Санору
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    >>|cRXP_FRIENDLY_Акама|r |cRXP_WARN_находится дальше внутри Клетки Стражницы|r
    .turnin 10628 >> Сдайте задание "Акама"
    .accept 10705 >> Примите задание "Провидец Удало"
	.target Акама
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >> |cRXP_WARN_Найдите группу в Аркатрац. Вы должны поговорить с |cRXP_FRIENDLY_Удало|r внутри подземелья|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Удало|r
    .turnin 10705 >> Сдайте задание "Провидец Удало"
    .accept 10706 >> Примите задание "Таинственное предзнаменование"
	.target Удало
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    .turnin 10706 >> Сдайте задание "Таинственное предзнаменование"
    .accept 10707 >> Примите задание "Терраса Ата'мала"
	.target Акама
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Убейте трех |cRXP_ENEMY_похитителей душ из Призрачной Луны|r, чтобы |cRXP_ENEMY_Темный повелитель Смертный Шепот|r спустился на землю|r
    >>Убейте |cRXP_ENEMY_Темного повелителя Смертный Шепот|r. Заберите с него |cRXP_LOOT_Сердце Ярости|r
    >>|cRXP_WARN_Рекомендуется выполнять это в полной группе с танком и лекарем|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob Темный повелитель Смертный Шепот
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    .turnin 10707 >> Сдайте задание "Терраса Ата'мала"
    .accept 10708 >> Примите задание "Обещание Акамы"
	.target Акама
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_А'далом|r
    .turnin 10708 >> Сдайте задание "Обещание Акамы"
	.target А'дал
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Войдите в рейд Змеиное святилище. Вы должны победить босса |cRXP_ENEMY_Повелителя глубин Каратресса|r, затем поговорить с |cRXP_FRIENDLY_Провидцем Олумом|r, который находится позади него|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Провидцем Олумом|r
    .accept 10944 >> Примите задание "Тайна раскрыта"
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    .turnin 10944 >> Сдайте задание "Тайна раскрыта"
    .accept 10946 >> Примите задание "Уловка Пеплоустов"
	.target Акама
step
    .use 31946 >>Убейте |cRXP_ENEMY_Ал'ара|r в Крепости Бурь, надев |T133132:0|t[Капюшон Пеплоустов]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    .turnin 10946 >> Сдайте задание "Уловка Пеплоустов"
    .accept 10947 >> Примите задание "Артефакт из прошлого"
	.target Акама
step
    >>Убейте |cRXP_ENEMY_Лютого Хлада|r на горе Хиджал. Заберите с него |cRXP_LOOT_Временной филактерий|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Акамой|r
    .turnin 10947 >> Сдайте задание "Артефакт из прошлого"
    .accept 10948 >> Примите задание "Плененная душа"
	.target Акама
step
    #completewith next
    .zone Shattrath City >> Отправляйтесь в Шаттрат
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_А'далом|r
    .turnin 10948 >> Сдайте задание "Плененная душа"
    .accept 10949 >> Примите задание "Вход в Черный храм"
	.target А'дал
step
    #completewith next
    .zone Shadowmoon Valley >> Вернитесь в Долину Призрачной Луны
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кси'ри|r
    >>|cRXP_WARN_Если вы в группе, убедитесь, что другие участники сдали задание, прежде чем принимать следующее. Автоматическое принятие отключено для этого шага|r
    .turnin 10949 >> Сдайте задание "Вход в Черный храм"
    .accept 10985,1 >> Примите задание "Отвлекающий маневр для Акамы"
    .target Кси'ри
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Поговорите с |cRXP_FRIENDLY_Кси'ри|r, чтобы начать сцену. Возможно, вам придется подождать рядом с ним 1-2 минуты, пока появится |cRXP_FRIENDLY_Акама|r. Как только появится |cRXP_FRIENDLY_Акама|r, следуйте за ним и продолжайте участвовать в сцене|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Кси'ри
    .target Акама
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговорите с |cRXP_FRIENDLY_Кси'ри|r
    .turnin 10985 >> Сдайте задание "Отвлекающий маневр для Акамы"
    .accept 10958 >> Примите задание "В поисках Пеплоустов"
    .target Кси'ри
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_Поздравляем! Вы получили доступ в Черный храм|r
]])
