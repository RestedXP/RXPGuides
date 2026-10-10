if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 霍迪尔之子日常任务路线

step
	+要解锁霍迪尔之子的日常任务，你必须先完成他们在风暴峭壁的任务线。请使用霍迪尔之子解锁日常任务指南来解锁这些日常任务
	.isQuestAvailable 13047
step
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽，霍迪尔之矛和安格里姆对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>接受任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >>接受任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >>接受任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔，冰霜座狼母兽和霍迪尔之矛对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>接受任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >>接受任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>与弗约恩之砧、霍迪尔之角和霍迪尔之盔对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>击杀脆弱的复仇者，并从它们身上拾取冰之精华
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >>在弗约恩之砧附近的暗硫残渣旁使用冰之精华，拾取战利品冻铁碎片
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >>击杀该区域的尼弗莱姆先祖和不安分的霜巨人。对它们的尸体使用背包中的霍迪尔的号角，以解放它们
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>在你的背包中对坠落座狼的尸体使用虚空座狼之牙。跟随虚空冰霜座狼直到其追踪到风铸入侵者，然后击杀它。
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >>对游荡的巨人杀手使用阿恩格里姆之牙，将其伤害至30%或更低生命值，但不要击杀它
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>在你的背包中对坠落座狼的尸体使用虚空座狼之牙。跟随虚空冰霜座狼直到其追踪到风铸入侵者，然后击杀它。
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>击杀冬眠洞穴中的粘性油泥，并拾取它们的油
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >>使用背包里的霍迪尔之矛钩住一条野生猛龙。在做此之前确保你处于满生命值状态
	>>反复使用抓住 (1)增加抓握。当猛龙挥击时使用躲避利爪 (2)。卡CD使用长矛猛刺 (3)和复仇长矛猛刺 (4)
	>>记住要持续使用抓住 (1)，否则你会掉下去，特别是当你只狂按(3)和(4)时！
	>>当野生猛龙低于30%生命值时，你的攻击条会改变。使用撬开下颚 (1)五次，然后使用致命一击 (3)。如果致命一击失败，继续使用撬开下颚 (1)直到致命一击 (3)冷却好
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽，霍迪尔之矛和安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >>交任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、霍迪尔之矛和安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >>交任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔，冰霜座狼母兽和霍迪尔之矛对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >>交任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>回到丹尼芬雷
	>>与 弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽 和 安格里姆 对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔和贪婪的安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔和霍迪尔之矛对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >>交任务 屠龙记
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔 和冰霜座狼母兽对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角和霍迪尔之盔对话
    .turnin -12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
step
	+你已完成了今天霍迪尔之子的所有日常任务.:) 记住你还可以交付在该地区发现的永冻冰片来获得额外声望，以及交付奥杜尔圣物！
]])
