--Translator ZamestoTV
local addonName, addon = ...

local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "ruRU", false)
if not L then return end

_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton1:LeftButton"] =
    "Кнопка активного предмета 1"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton2:LeftButton"] =
    "Кнопка активного предмета 2"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton3:LeftButton"] =
    "Кнопка активного предмета 3"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton4:LeftButton"] =
    "Кнопка активного предмета 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton1:LeftButton"] =
    "Кнопка активной дружелюбной цели 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton2:LeftButton"] =
    "Кнопка активной дружелюбной цели 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton3:LeftButton"] =
    "Кнопка активной дружелюбной цели 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton4:LeftButton"] =
    "Кнопка активной дружелюбной цели 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton1:LeftButton"] =
    "Кнопка активной вражеской цели 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton2:LeftButton"] =
    "Кнопка активной вражеской цели 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton3:LeftButton"] =
    "Кнопка активной вражеской цели 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton4:LeftButton"] =
    "Кнопка активной вражеской цели 4"

-- Слова
L.delimiter = ' '
L.words = {
    ["Accept"] = "Принять",
    ["accept"] = "принять",
    ["Kill"] = "Убейте",
    ["kill"] = "убейте",
    ["Talk"] = "Поговорите",
    ["talk"] = "поговорите",
    ["to"] = "к",
    ["with"] = "с",
    ["Turn"] = "Сдать",
    ["turn"] = "сдать",
    ["in"] = "квест",
    ["Loot"] = "Соберите",
    ["loot"] = "соберите",
    ["Go"] = "Идите",
    ["go"] = "идите",
    ["Travel"] = "Путешествуйте",
    ["travel"] = "путешествуйте",
    ["Get"] = "Получите",
    ["get"] = "получите",
    ["Set"] = "Установите",
    ["set"] = "установите",
    ["your"] = "ваш",
    ["Hearthstone"] = "Камень возвращения",
    ["Die"] = "Умрите",
    ["and"] = "и",
    ["respawn"] = "возродитесь",
    ["at"] = "в",
    ["the"] = "",
    ["graveyard"] = "кладбище",
    ["Fly"] = "Лететь",
    ["Open"] = "Открыть",
    ["flight"] = "полет",
    ["path"] = "путь",
    ["Train"] = "Обучитесь",
    ["train"] = "обучитесь",
    ["skills"] = "навыкам",
    ["Stable"] = "Поместите в стойла",
    ["pet"] = "питомца",
    ["Sell"] = "Продайте",
    ["sell"] = "продайте",
    ["junk"] = "хлам",
    ["resupply"] = "пополните запасы",
    ["Abandon"] = "Откажитесь от",
    ["Quest"] = "задания",
    ["Equip"] = "Наденьте",
    ["equip"] = "наденьте",
    ["Use"] = "Используйте",
    ["use"] = "используйте",
    ["Buy"] = "Купите",
    ["buy"] = "купите",
    ["from"] = "у",
    ["him"] = "него",
    ["her"] = "нее",
    ["inside"] = "внутри",
    ["into"] = "в",
    ["for"] = "для",
    ["their"] = "их",
}

--Communications.lua
L["Give Feedback for step"] = "Оставить отзыв о шаге"
L["I just leveled from %d to %d in %s"] = "Я только что повысил уровень с %d до %d за %s"
L["I just leveled up to %d"] = "Я только что повысил уровень до %d"
L["There's a new addon version (%s) available"] = "Доступна новая версия аддона (%s)"
L["There's a new version (%s) available for %s"] = "Доступна новая версия (%s) для %s"
L["Flying to %s ETA %s"] = "Лечу в %s, расчетное время прибытия %s"
L["Describe your issue:"] = "Опишите вашу проблему:"
L["Do not edit below this line"] = "Не редактируйте ниже этой линии"
L["RestedXP Feedback Form"] = "Форма обратной связи RestedXP"
L["day"] = "день"
L["days"] = "дни"
L["hour"] = "час"
L["hours"] = "часы"
L["minute"] = "минута"
L["minutes"] = "минуты"
L["second"] = "секунда"
L["seconds"] = "секунды"

--functions.lua
L["Error parsing guide"] = "Ошибка разбора руководства"
L["Objective Complete"] = "Цель выполнена"
L["Missing pre-requisites"] = "Отсутствуют предварительные условия"
L["Retrieving quest data"] = "Получение данных о задании"
L["Go to"] = "Идти к"
L["Set your Hearthstone to "] = "Установите ваш Камень возвращения в "
L["Get the %s flight path"] = "Получите маршрут полета %s"
L["Fly to"] = "Лететь в"
L["Die and respawn at the graveyard"] = "Умрите и возродитесь на кладбище"
L["Throw away %s%s from your bags"] = "Выбросьте %s%s из ваших сумок"
L["Grind until you are %d xp away from level %s"] = "Фармите, пока не будете в %d опыта от уровня %s"
L["Grind until you are %s xp into level %s"] = "Фармите, пока не наберете %s опыта на уровне %s"
L["Grind until you are %.0f%% into level %s"] = "Фармите, пока не достигнете %.0f%% на уровне %s"
L["Grind until you are %d away from %s with %s"] = "Фармите, пока не будете в %d от %s с %s"
L["Grind until you are %s into %s with %s"] = "Фармите, пока не наберете %s в %s с %s"
L["Grind until you are %.0f%% into %s with %s"] = "Фармите, пока не достигнете %.0f%% в %s с %s"
L["Sell junk/resupply"] = "Продать хлам/пополнить запасы"
L["Train skills"] = "Обучить навыки"
L["Stable your pet"] = "Поместить питомца в стойло"
L["Click to view the link"] = "Нажмите, чтобы просмотреть ссылку"
L["Collect the following items:"] = "Соберите следующие предметы:"
L["Do the Blasted Lands collection quests"] = "Выполните задания по сбору в Выжженных землях"
L["Attempting to deposit"] = "Попытка внести"
L["Attempting to withdraw"] = "Попытка изъять"
L["Skip to step %d if you are level %d or above"] = "Пропустите до шага %d, если ваш уровень %d или выше"
L["(Skip this step if you are level %d or above)"] = "(Пропустите этот шаг, если ваш уровень %d или выше)"

--GuideLoader.lua
L["Failed to ReadCacheData"] = "Не удалось прочитать данные кэша"
L["Incomplete or invalid encoded string"] = "Неполная или недействительная закодированная строка"
L["Total guides loaded: %d/%s"] = "Всего загружено руководств: %d/%s"
L["Loading Guides"] = "Загрузка руководств"
L["Guides Loaded Successfully"] = "Руководства успешно загружены"
L["Error parsing guide"] = "Ошибка разбора руководства"
L["Error parsing "] = "Ошибка разбора "
L["Guide has no name"] = "Руководство не имеет названия"

--GuideWindow.lua
L["Hide tips"] = "Скрыть подсказки"
L["Step %d"] = "Шаг %d"
L["Go to step"] = "Перейти к шагу"
L["Select another guide"] = "Выбрать другое руководство"
L["Reload Guide"] = "Перезагрузить руководство"
L["Give Feedback for step"] = "Оставить отзыв о шаге"
L["Welcome to RestedXP Guides\nRight click to pick a guide"] = "Добро пожаловать в руководства RestedXP\nПКМ, чтобы выбрать руководство"
L["Available Guides"] = "Доступные руководства"
L["Gold Farming Guides"] = "Руководства по фарму золота"
L["Unused Guides"] = "Неиспользуемые руководства"
L["Deactivate Hardcore mode"] = "Деактивировать режим Хардкор"
L["Activate Hardcore mode"] = "Активировать режим Хардкор"
L["Activate the Quest Guide mode"] = "Активировать режим руководства по заданиям"
L["Activate the Gold Assistant mode"] = "Активировать режим помощника по золоту"
L["Import guide"] = "Импортировать руководство"
L["Leveling report"] = "Отчет о прокачке"
L["Open Feedback Form"] = "Открыть форму обратной связи"

--HardcoreIntroUI.lua
L["STOCKS"] = "ТЮРЬМА"
L["ULDA"] = "УЛЬДАМАН"
L["SM"] = "МАО"

--Help.lua
L["TomTom"] = "TomTom"
L["SilverDragon"] = "SilverDragon"
L["TotemTimers"] = "TotemTimers"
L["Leatrix Maps"] = "Leatrix Maps"
L["Narcissus"] = "Narcissus"

--InventoryManager.lua
L["|c%sSorting arrows/bullets|r"] = "|c%sСортировка стрел/патронов|r"
L["|c%sInventory is full, sorting arrows/bullets|r"] = "|c%sИнвентарь полон, сортировка стрел/патронов|r"
L["|c%sSet %s as useful|r"] = "|c%sУстановить %s как полезное|r"
L["|c%sSet %s as junk|r"] = "|c%sУстановить %s как хлам|r"
L["|c%sDeleting %sx%s|r"] = "|c%sУдаление %sx%s|r"
L["|c%sInventory is full, deleting %sx%s|r"] = "|c%sИнвентарь полон, удаление %sx%s|r"
L["Delete Cheapest Junk Item"] = "Удалить самый дешевый хлам"
L["|c%sSold junk items for|r %s"] = "|c%sПроданы хлам предметы за|r %s"

--LevelingTracker.lua
L["Enable Leveling Report Inspections"] = "Включить проверку отчетов о прокачке"
L["Send or receive inspection requests for other Leveling Reports"] = "Отправлять или получать запросы на проверку других отчетов о прокачке"
L["Resetting level %d start time to now!"] = "Сброс времени начала уровня %d на текущее!"
L["Max"] = "Макс"
L["Reached Level"] = "Достигнут уровень"
L["In-progress"] = "В процессе"
L["Time spent"] = "Время потрачено"
L["Zones & Dungeons"] = "Зоны и подземелья"
L["Experience Sources"] = "Источники опыта"
L["Teamwork"] = "Командная работа"
L["Extras"] = "Дополнительно"
L["Unable to retrieve report for"] = "Не удалось получить отчет для"
L["Missing data"] = "Отсутствуют данные"
L["Level"] = "Уровень"
L["Level Splits"] = "Разделение уровней"
L["Temporarily hide, use '/rxp splits' to show again"] = "Временно скрыть, используйте '/rxp splits' для повторного показа"
L["Export"] = "Экспорт"
L["Import"] = "Импорт"
L["Compare"] = "Сравнить"
L["Level Time"] = "Время уровня"
L["Time to"] = "Время до"
L["Total Time"] = "Общее время"
L["Level %d time"] = "Время уровня %d"

--QuestLog.lua
L["Quest is being picked up at"] = "Задание берется в"
L["Quest is being turned in at"] = "Задание сдается в"

--RXPGuides.lua
L["Development"] = "Разработка"

--SettingsPanel.lua
L["Please restart your game client and try again"] = "Пожалуйста, перезапустите игровой клиент и попробуйте снова"
L["Failed to Import Guides: Invalid Import String"] = "Не удалось импортировать руководства: Недействительная строка импорта"
L["Guide Import"] = "Импорт руководства"
L["Paste encoded strings"] = "Вставьте закодированные строки"
L["Guides to import"] = "Руководства для импорта"
L["Currently loaded imported guides"] = "Текущие загруженные импортированные руководства"
L["Delete imported guide"] = "Удалить импортированное руководство"
L["Remove"] = "Удалить"
L["Purge All Data"] = "Очистить все данные"
L["Reload guides and UI"] = "Перезагрузить руководства и интерфейс"
L["Import"] = "Импорт"
L["This requires a reload to take effect, continue?"] = "Это требует перезагрузки для вступления в силу, продолжить?"
L["Join Discord"] = "Присоединиться к Discord"
L["Open Feedback Form"] = "Открыть форму обратной связи"
L["Run Guide Configurator"] = "Запустить конфигуратор руководства"
L["Show all Enabled Frames"] = "Показать все включенные фреймы"
L["Toggles all addon frames on or off"] = "Включает или выключает все фреймы аддона"
L["Lock Frames"] = "Заблокировать фреймы"
L["Autohide in Raids"] = "Автоскрытие в рейдах"
L["Check for Addon Incompatibility"] = "Проверить несовместимость аддонов"
L["Enable Minimap Button"] = "Включить кнопку миникарты"
L["Add main options menu to minimap"] = "Добавить главное меню опций на миникарту"
L["Enable World Map Button"] = "Включить кнопку карты мира"
L["Add options menu to map"] = "Добавить меню опций на карту"
L["Hide Window"] = "Скрыть окно"
L["Hides the main window"] = "Скрывает главное окно"
L["Hide waypoint arrow"] = "Скрыть стрелку путевой точки"
L["Hide Active Item window"] = "Скрыть окно активного предмета"
L["Vendor Treasures"] = "Сокровища торговцев"
L["Show Flight Timers"] = "Показать таймеры полетов"
L["Automation"] = "Автоматизация"
L["Quest auto accept/turn in"] = "Автопринятие/сдача заданий"
L["Quest auto rewards"] = "Автонаграды за задания"
L["Automatic quest sharing"] = "Автоматический обмен заданиями"
L["Trainer automation"] = "Автоматизация тренера"
L["Flight Path automation"] = "Автоматизация маршрутов полетов"
L["Innkeeper Bind automation"] = "Автоматизация привязки к трактирщику"
L["Skip Gossip"] = "Пропустить диалоги"
L["Show junk item indicator"] = "Показать индикатор хлама"
L["Any items marked as junk will display a gold coin icon on the top left corner of the item icon within your bags"] = "Любые предметы, помеченные как хлам, будут отображать значок золотой монеты в верхнем левом углу значка предмета в ваших сумках"
L["Discard junk items if bag is full"] = "Выбрасывать хлам, если сумка полна"
L["Automatically attempts to discard the cheapest junk item from your bags if your inventory is full"] = "Автоматически пытается выбросить самый дешевый хлам из ваших сумок, если инвентарь полон"
L["Toggle junk with modified right click"] = "Переключать хлам модифицированным правым щелчком"
L["Allows you to toggle items as junk by clicking on it with CTRL+RightClick or ALT+RightClick"] = "Позволяет переключать предметы как хлам, щелкая по ним с CTRL+ПКМ или ALT+ПКМ"
L["Right Click Modifier"] = "Модификатор правого щелчка"
L["Auto Sell Junk"] = "Автопродажа хлама"
L["Automatically sell all gray items and all other items that you set as junk"] = "Автоматически продавать все серые предметы и все остальные предметы, которые вы пометили как хлам"
L["Delete Cheapest Junk Item Keybind"] = "Клавиша для удаления самого дешевого хлама"
L["Click to set a keybind"] = "Нажмите, чтобы установить клавишу"
L["Enable Talents Guides"] = "Включить руководства по талантам"
L["Enable Talent Previews"] = "Включить предварительный просмотр талантов"
L["Enable Talent Plan"] = "Включить план талантов"
L["Highlight or list levels for each talent"] = "Подсвечивать или перечислять уровни для каждого таланта"
L["Talent Plan Number"] = "Количество плана талантов"
L["Sets maximum number of talents to layout"] = "Устанавливает максимальное количество талантов для планировки"
L["Guide Routing"] = "Маршрутизация руководства"
L["Detect Rate"] = "Частота обнаружения"
L["Checks for heirlooms and experience buffs"] = "Проверяет наличие реликвий и баффов опыта"
L["Experience rates"] = "Скорость набора опыта"
L["Skip overleveled steps"] = "Пропускать шаги для высоких уровней"
L["Skip steps you're overleveled for"] = "Пропускать шаги, для которых у вас слишком высокий уровень"
L["Show Group Quests"] = "Показать групповые задания"
L["Solo Self Found Mode"] = "Режим одиночной игры"
L["Northrend Loremaster"] = "Мастер истории Нордскола"
L["Loremaster Mode"] = "Режим мастера истории"
L["Show Chromie Time Guides"] = "Показать руководства по времени Хроми"
L["Content phase"] = "Фаза контента"
L["Hardcore mode"] = "Режим Хардкор"
L["Season"] = "Сезон"
L["Dungeons"] = "Подземелья"
L["Quest Cleanup"] = "Очистка заданий"
L["Cleanup Orphaned Quests"] = "Очистить осиротевшие задания"
L["Cleanup obsolete or leftover quests"] = "Очистить устаревшие или оставшиеся задания"
L["Abandon the following quests?"] = "Отказаться от следующих заданий?"
L["Targeting Macro"] = "Макрос наведения"
L["Macro capacity reached"] = "Достигнута максимальная емкость макроса"
L["Create Targeting Macro"] = "Создать макрос наведения"
L["Automatically create a targeting macro"] = "Автоматически создать макрос наведения"
L["Notify on new target"] = "Уведомлять о новой цели"
L["Notify when a new target is loaded"] = "Уведомлять, когда загружается новая цель"
L["Active Targets"] = "Активные цели"
L["Enable Active Targets"] = "Включить активные цели"
L["Automatically scan nearby targets"] = "Автоматически сканировать ближайшие цели"
L["Only show when in range"] = "Показывать только в зоне действия"
L["Scan Friendly Targets"] = "Сканировать дружественные цели"
L["Scan for friendly targets"] = "Сканировать дружественные цели"
L["Mark Friendly Targets"] = "Отмечать дружественные цели"
L["Scan Enemy Targets"] = "Сканировать вражеские цели"
L["Scan for enemy targets"] = "Сканировать вражеские цели"
L["Maximize Nameplate Distance"] = "Максимизировать дистанцию табличек имен"
L["Automatically maximize nameplate visibility distance for better target detection (Requires reload)"] = "Автоматически максимизировать дистанцию видимости табличек имен для лучшего обнаружения целей (требуется перезагрузка)"
L["Mark Enemy Targets"] = "Отмечать вражеские цели"
L["Mark special enemy targets with moon"] = "Отмечать особые вражеские цели луной"
L["Mark Enemy Mobs"] = "Отмечать вражеских мобов"
L["Mark enemy mobs with skull, cross, and square"] = "Отмечать вражеских мобов черепом, крестом и квадратом"
L["Scan for Nearby Rares"] = "Сканировать ближайших редких мобов"
L["Checks for nearby rare spawns"] = "Проверяет наличие ближайших редких мобов"
L["Notify on Rares"] = "Уведомлять о редких мобах"
L["Notify when a new rare is found"] = "Уведомлять, когда найден новый редкий моб"
L["Hide Targets Background"] = "Скрыть фон целей"
L["Make background transparent"] = "Сделать фон прозрачным"
L["Active Targets Scale"] = "Масштаб активных целей"
L["Scale of the Active Targets frame"] = "Масштаб фрейма активных целей"
L["Flash Client Icon"] = "Мигать значком клиента"
L["Play Sound"] = "Воспроизвести звук"
L["Sends sound on enemy target found"] = "Воспроизводит звук при обнаружении вражеской цели"
L["Sound Channel"] = "Звуковой канал"
L["Leveling Tracker"] = "Трекер прокачки"
L["Enable Leveling Tracker"] = "Включить трекер прокачки"
L["Enable Leveling Report Inspections"] = "Включить проверку отчетов о прокачке"
L["Level Splits"] = "Разделение уровней"
L["Enable Level Splits"] = "Включить разделение уровней"
L["Compare Next Level"] = "Сравнить следующий уровень"
L["When comparing, show next level's time"] = "При сравнении показывать время следующего уровня"
L["Show Total Time Split"] = "Показать общее время разделения"
L["When comparing, show total time difference"] = "При сравнении показывать разницу в общем времени"
L["Hide Splits Background"] = "Скрыть фон разделения"
L["Level Splits History"] = "История разделения уровней"
L["Historical levels to show"] = "Исторические уровни для показа"
L["Level Splits Font Size"] = "Размер шрифта разделения уровней"
L["Level Splits Opacity"] = "Прозрачность разделения уровней"
L["Communications"] = "Коммуникации"
L["Announcements"] = "Объявления"
L["Announce Level Ups (Emote)"] = "Объявлять повышение уровня (эмоция)"
L["Make a public emote when you level up"] = "Делать публичную эмоцию при повышении уровня"
L["Announce Level Ups (Party Chat)"] = "Объявлять повышение уровня (чат группы)"
L["Announce in party chat when you level up"] = "Объявлять в чате группы при повышении уровня"
L["Announce Level Ups (Guild Chat)"] = "Объявлять повышение уровня (чат гильдии)"
L["Announce in guild chat when you level up"] = "Объявлять в чате гильдии при повышении уровня"
L["Announce Step completion"] = "Объявлять, когда шаг задания завершен"
L["Announce Step collection"] = "Объявлять, когда собраны все предметы шага"
L["Announce Step flying timers"] = "Объявлять таймеры шагов полета"
L["Enable Addon Version Checks"] = "Включить проверку версий аддона"
L["Ignore Questie announcements"] = "Игнорировать объявления Questie"
L["Tips"] = "Подсказки"
L["Enable Tips"] = "Включить подсказки"
L["Enable Tips Frame"] = "Включить фрейм подсказок"
L["Quest Sellable Recommendation"] = "Рекомендация по продаваемым предметам за задания"
L["Displays the best sellable quest reward"] = "Показывает лучшую продаваемую награду за задание"
L["Enable Warning"] = "Включить предупреждение"
L["Enable Warning Sound"] = "Включить звуковое предупреждение"
L["Threshold"] = "Порог"
L["Emergency Actions"] = "Экстренные действия"
L["Enable Animations"] = "Включить анимации"
L["Dangerous Mobs Tracking"] = "Отслеживание опасных мобов"
L["Track Mobs on Map"] = "Отслеживать мобов на карте"
L["Scan for dangerous mobs"] = "Сканировать опасных мобов"
L["Choose active theme"] = "Выбрать активную тему"
L["Quest Reward Recommendation"] = "Рекомендация по наградам за задания"
L["Displays the best calculated item upgrade"] = "Показывает лучшее рассчитанное улучшение предмета"
L["Quest Reward Automation"] = "Автоматизация наград за задания"
L["Look and Feel"] = "Внешний вид"
L["Choose Theme"] = "Выбрать тему"
L["Set primary background"] = "Установить основной фон"
L["Step List Background"] = "Фон списка шагов"
L["Step Highlight"] = "Подсветка шага"
L["Step mouseover highlight color"] = "Цвет подсветки шага при наведении"
L["Map Pins"] = "Пины карты"
L["Map Pin color"] = "Цвет пина карты"
L["Tooltip"] = "Подсказка"
L["RGB hex color code"] = "Код цвета RGB в шестнадцатеричном формате"
L["Font"] = "Шрифт"
L["Font Path"] = "Путь к шрифту"
L["Text Color"] = "Цвет текста"
L["Requires Reload to take effect"] = "Требуется перезагрузка для вступления в силу"
L["Preview Changes"] = "Предпросмотр изменений"
L["Preview theme changes"] = "Предпросмотр изменений темы"
L["Warning"] = "Предупреждение"
L["Pick Up"] = "Взять"
L["Buy"] = "Купить"
L["Disable Colors"] = "Отключить цвета"
L["Guide Window"] = "Окно руководства"
L["Window Scale"] = "Масштаб окна"
L["Guide Font Size"] = "Размер шрифта руководства"
L["Change font size of the Guide Window"] = "Изменить размер шрифта окна руководства"
L["Current step frame anchor"] = "Якорь фрейма текущего шага"
L["Show step list"] = "Показать список шагов"
L["Hide completed steps"] = "Скрыть завершенные шаги"
L["Show unused guides"] = "Показать неиспользуемые руководства"
L["Waypoint Arrow"] = "Стрелка путевой точки"
L["Arrow Scale"] = "Масштаб стрелки"
L["Scale of the Waypoint Arrow"] = "Масштаб стрелки путевой точки"
L["Arrow Text Size"] = "Размер текста стрелки"
L["Size of the waypoint arrow text"] = "Размер текста стрелки путевой точки"
L["Reset Arrow Position"] = "Сбросить позицию стрелки"
L["Active Items"] = "Активные предметы"
L["Active Item Scale"] = "Масштаб активного предмета"
L["Scale of the Active Item frame"] = "Масштаб фрейма активного предмета"
L["Hide Background"] = "Скрыть фон"
L["Hide Mini Map Pins"] = "Скрыть пины миникарты"
L["Highlight active map pins"] = "Подсвечивать активные пины карты"
L["Number of Map Pins"] = "Количество пинов карты"
L["Number of map pins shown on the world map"] = "Количество пинов карты, показанных на карте мира"
L["Map Pin Scale"] = "Масштаб пина карты"
L["Adjusts the size of the world map pins"] = "Регулирует размер пинов карты мира"
L["Distance Between Pins"] = "Расстояние между пинами"
L["Map Pin Background Opacity"] = "Прозрачность фона пина карты"
L["Advanced Settings"] = "Расширенные настройки"
L["Enable Beta Features"] = "Включить бета-функции"
L["Enables new features, forces reload to take effect"] = "Включает новые функции, требует перезагрузки для вступления в силу"
L["Enable Debug"] = "Включить отладку"
L["Hearthstone batching"] = "Пакетная обработка Камня возвращения"
L["Batching window size (ms)"] = "Размер окна пакетной обработки (мс)"
L["Skip quests with missing pre-requisites"] = "Пропускать задания с отсутствующими предварительными условиями"
L["Set current profile as default"] = "Установить текущий профиль по умолчанию"
L["Enable embedded Cpt. Stadics' Vendor Treasures"] = "Включить встроенные сокровища торговцев Cpt. Stadics"

--Talents.lua
L["Available Guides"] = "Доступные руководства"
L["Left click to apply talents"] = "ЛКМ, чтобы применить таланты"
L["Error parsing guide"] = "Ошибка разбора руководства"
L["Too low for %s"] = "Слишком низкий уровень для %s"
L["Too high for %s"] = "Слишком высокий уровень для %s"
L["Reached maximum level for guide"] = "Достигнут максимальный уровень для руководства"
L["Loaded next guide, %s"] = "Загружено следующее руководство, %s"

--Targeting.lua
L["Targeting macro updated with:%s"] = "Макрос наведения обновлен с:%s"
L["current step has no configured targets"] = "текущий шаг не имеет настроенных целей"
L["Rare Found! %s is nearby."] = "Найден редкий моб! %s поблизости."

--DB\classic\db.lua
L["Alliance"] = "Альянс"
L["Horde"] = "Орда"

--libs\AceConfig-3.0\AceConfigCmd-3.0\AceConfigCmd-3.0.lua
L["unknown argument"] = "неизвестный аргумент"
L["invalid input"] = "недействительный ввод"
L["on"] = "вкл"
L["off"] = "выкл"
L["default"] = "по умолчанию"
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - ожидается 'вкл', 'выкл' или 'по умолчанию', или отсутствие аргумента для переключения."
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - ожидается 'вкл' или 'выкл', или отсутствие аргумента для переключения."
L["expected number"] = "ожидается число"
L["must be equal to or higher than %s"] = "должно быть равно или больше %s"
L["must be equal to or lower than %s"] = "должно быть равно или меньше %s"
L["unknown selection"] = "неизвестный выбор"
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - ожидается 'вкл', 'выкл' или 'по умолчанию', или отсутствие аргумента для переключения."
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - ожидается 'вкл' или 'выкл', или отсутствие аргумента для переключения."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - ожидается 'RRGGBBAA' или 'r g b a'."
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - все значения должны быть в диапазоне 0..1 или 0..255."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - ожидается 'RRGGBB' или 'r g b'."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - все значения должны быть в диапазоне 0-1 или 0-255."
L["'%s' - Invalid Keybinding."] = "'%s' - Недействительная привязка клавиши."
