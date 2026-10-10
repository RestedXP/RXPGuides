if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 专业技能日常任务
#wotlk
#cata
#name 钓鱼

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >>在达拉然与|cRXP_FRIENDLY_玛西娅·切斯|r 对话。她有5个日常钓鱼任务中的1个可用。接受任意一个可用的任务
	>>幽灵鱼 -- 13830
	>>下水道中的珍宝 -- 13832
	>>血浓于水 -- 13833
	>>危险的美食 -- 13834
	>>缴械! -- 13836
	.target Marcia Chase

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>记得为你的钓鱼竿购买浮漂
	.fly Valiance Landing Camp >>与奥鲁丹对话以飞往冬拥湖 -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step << Horde
	#completewith next
	>>记得为你的钓鱼竿购买浮漂
	.fly Warsong Camp, Wintergrasp>>与奥鲁丹对话以飞往冬拥湖 -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >>前往冬拥湖
	.isOnQuest 13834
step << Alliance
	>>在冬拥湖任意位置钓|cRXP_LOOT_恐怖鱼|r
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>在冬拥湖任意位置钓|cRXP_LOOT_恐怖鱼|r
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>飞往达拉然
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>飞往达拉然
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>与 |cRXP_FRIENDLY_玛西娅·切斯|r在达拉然对话
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>交任务 危险的美食
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>记得为你的钓鱼竿购买浮漂
	.fly River's Heart >>与|cRXP_FRIENDLY_奥鲁丹|r对话以飞往索拉查盆地
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
	.target Aludane
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >>前往索拉查盆地
	.isOnQuest 13830
step
	#completewith next
	>>在河流之心钓鱼以获得 |cRXP_LOOT_幽灵鱼|r
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>吃掉在你背包里的|cRXP_LOOT_幽灵鱼|r
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>飞往达拉然
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>与 |cRXP_FRIENDLY_玛西娅·切斯|r在达拉然对话
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>交任务 幽灵鱼
	.isQuestComplete 13830
	.target Marcia Chase

-- Quest: Jewel Of The Sewers -- 13832
step
	>>记得为你的钓鱼竿购买浮漂
	>>进入达拉然下水道，钓取|cRXP_LOOT_被腐蚀的珠宝|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>与 |cRXP_FRIENDLY_玛西娅·切斯|r在达拉然对话
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>交任务 下水道中的珍宝
	.isQuestComplete 13832
	.target Marcia Chase
-- Quest: Disarmed! -- 13836
step
	>>记得为你的钓鱼竿购买浮漂
	>>在达拉然紫罗兰监狱外钓鱼，获得 |cRXP_LOOT_浮肿的鳗鱼|r
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>打开你的背包里的 |cRXP_LOOT_浮肿的鳗鱼|r ，拾取 |cRXP_LOOT_断臂|r
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>在达拉然与 |cRXP_FRIENDLY_善良的欧莉萨拉|r 对话
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>交任务 胳膊丢了！
	.isQuestComplete 13836
	.target Olisarra the Kind

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>记得为你的钓鱼竿购买浮漂
	.fly Une'pe >>与|cRXP_FRIENDLY_奥鲁丹|r 对话以飞往北风苔原的乌努比
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step << Horde
	#completewith next
	>>记得为你的钓鱼竿购买浮漂
	.fly Taunka'le >>与|cRXP_FRIENDLY_奥鲁丹|r对话以飞往北风苔原的牦牛村
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>前往北风苔原
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>在北风苔原击杀任意|cRXP_ENEMY_动物|r ，让自己染上动物的血渍debuff
	>>跳入水中移除减益，这会创建一个 |cRXP_PICK_鲜血之池|r
	.goto BoreanTundra,75.56,42.01,60,0
	>>在这个 |cRXP_LOOT_血池|r 钓鱼获得 |cRXP_PICK_血齿狂鱼|r
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>飞往达拉然
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>与 |cRXP_FRIENDLY_玛西娅·切斯|r在达拉然对话
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>交任务 血腥的美食
	.isQuestComplete 13833
	.target Marcia Chase
step
	+你已完成了今天的钓鱼日常任务
]])
