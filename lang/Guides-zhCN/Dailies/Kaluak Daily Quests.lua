if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 卡鲁亚克每日任务

step
	>>前往龙骨荒野的莫亚基港口。与莫伊对话
    .daily 11960 >>接受任务 为了将来
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>右键点击小屋附近的飘雪林地幼崽
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>返回莫亚基港口。与莫伊对话
    .turnin 11960 >>交任务 为了将来
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>前往北风苔原的卡斯卡拉。与乌泰克对话
    .daily 11945 >>接受任务 做最坏的打算
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>拾取村庄周围的小篮子
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>返回乌泰克身边
    .turnin 11945 >>交任务 做最坏的打算
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>前往嚎风峡湾的卡玛古。与阿努尼克对话
    .daily 11472 >>接受任务 心心相印……
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>在该区域对美味的暗礁鱼群使用你背包中的阿努尼克的网来捕捉约7-8条美味的暗礁鱼。大约投网2次就能获得
	.use 34127 >>在最大距离处向雄性暗礁海狮投掷美味的暗礁鱼，它现在会走到你站立的地方
	>>将其引到海岸线另一边的雌性暗礁海狮
	>>如果你用完了鱼，再捕获7-8条并重试
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>与阿努尼克对话
    .turnin 11472 >>交任务 心心相印……
	.isQuestComplete 11472
]])
