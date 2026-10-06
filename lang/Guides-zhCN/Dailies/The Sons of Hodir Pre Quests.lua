if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 霍迪尔之子解锁日常任务

step
    +你已完成霍迪尔之子的前置任务链，请使用霍迪尔之子的日常任务指南来完成日常任务
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>飞往K3
    >>进入旅馆。与格莉丝对话
    .accept 12843 >>接受任务 她们把男人都抓走了！
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>飞向希弗列尔达村
	>>击杀希弗列尔达部族获取寒铁钥匙，对该区域内牢笼里的地精囚犯使用钥匙
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>返回K3。在旅馆内与格莉丝对话
    .turnin 12843 >>交任务 她们把男人都抓走了！
    .accept 12846 >>接受任务 一个地精也不能少
step << !Human
	#completewith tribute
	>>拾取掉落自风暴峭壁各地小怪的奥杜尔圣物。或者从拍卖行购买
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>进入弗洛伦矿洞，与洛莉拉对话
    .turnin 12846 >>交任务 一个地精也不能少
    .accept 12841 >>接受任务 女巫的交易
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>在弗洛伦矿洞内击杀监督者希尔拉，拾取她掉落的伊尔奎符文
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>返回洛莉拉处
    .turnin 12841 >>交任务 女巫的交易
    .accept 12905 >>接受任务 残酷的米尔德蕾
step
    .goto TheStormPeaks,44.39,68.93
	>>登上楼梯，与米尔德丽德对话
    .turnin 12905 >>交任务 残酷的米尔德蕾
    .accept 12906 >>接受任务 训诫
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >>在矿道里对筋疲力尽的维库人使用你背包里的训诫之杖
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>和米尔德丽德对话
    .turnin 12906 >>交任务 训诫
    .accept 12907 >>接受任务 杀一儆百
step
    .goto TheStormPeaks,45.40,69.10
	>>在洞穴内米尔德丽德的东方击杀加哈尔
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>和米尔德丽德对话
    .turnin 12907 >>交任务 杀一儆百
    .accept 12908 >>接受任务 特殊的囚犯
step
    .goto TheStormPeaks,42.80,68.90
	>>与洛莉拉对话
    .turnin 12908 >>交任务 特殊的囚犯
    .accept 12921 >>接受任务 改头换面
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>离开弗洛伦矿洞。飞往布伦希尔达村
    .turnin 12921 >>交任务 改头换面
    .accept 12969 >>接受任务 这是你的地精吗？
step
    .goto TheStormPeaks,48.25,69.77
	>>与安格妮塔对话。击杀她以救出菲兹巴克
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>与洛莉拉对话
    .turnin 12969 >>交任务 这是你的地精吗？
    .accept 12970 >>接受任务 海德比武会
	>>与女巫洛莉拉谈论她的想法
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>交任务 海德比武会
    .accept 12971 >>接受任务 迎接挑战者
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>与该地区的胜利挑战者对话以发起战斗，击杀他们
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>与洛莉拉对话
    .turnin 12971 >>交任务 迎接挑战者
    .accept 12972 >>接受任务 你需要一头熊
step
    .goto TheStormPeaks,53.14,65.72
	>>和布莉亚娜对话
    .turnin 12972 >>交任务 你需要一头熊
    .accept 12851 >>接受任务 熊熊大作战
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>在布莉亚娜旁边召唤坐骑冰牙
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>使用烈焰箭（1）焚烧冰霜巨狼和冰霜巨人。不要使用加速爆发（2），只需专注于击中所有目标
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>使用“速度爆发”（2）更快地回到布里亚娜身边。与她交谈
    .turnin 12851 >>交任务 熊熊大作战
    .accept 12856 >>接受任务 冰冷的心
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>飞往丹尼芬雷。骑上一只被捕获的始祖幼龙，它们被锁在丹尼芬雷外墙周围的大冰刺上
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>当靠近被寒冰屏障冻结的布伦希尔达囚徒时，使用你的龙的第一个技能。
    >>当你的龙上有3个囚徒时，回到布伦希尔达。重复此操作3次
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>和布莉亚娜对话
    .turnin 12856 >>交任务 冰冷的心
    .accept 13063 >>接受任务 证明价值
step
    .goto TheStormPeaks,49.75,71.81
	>>回到布伦希尔达。与艾丝崔对话
    .turnin 13063 >>交任务 证明价值
    .accept 12900 >>接受任务 制造挽具
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>击杀冰鬃雪人。拾取它们的毛皮作为战利品
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>与艾丝崔对话
    .turnin 12900 >>交任务 制造挽具
    .accept 12983 >>接受任务 最后的母熊
    .accept 12989 >>接受任务 黑暗的冰虫
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>进入冬眠洞穴
step
    .goto TheStormPeaks,54.8,60.4
	>>杀死洞穴里的虫蛆
 	>>暂时不要骑在洞穴中央受伤的熊
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>右键点击冰爪母兽，骑乘它离开冬眠洞穴
step
    .goto TheStormPeaks,49.82,71.12
	>>骑熊回到布伦希尔达。这需要1分8秒，所以你可以在这段时间休息
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>与艾丝崔对话
    .turnin 12983 >>交任务 最后的母熊
    .accept 12996 >>接受任务 热身赛
    .turnin 12989 >>交任务 黑暗的冰虫
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >>飞往基加拉格。使用你的背包中的冰喉母熊的缰绳来骑乘它。
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>击杀 基加拉格。使用重殴（1）造成伤害。使用粉碎（2）接冲锋（3）造成额外伤害。
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>下熊。与艾丝崔对话
    .turnin 12996 >>交任务 热身赛
    .accept 12997 >>接受任务 进入利齿之坑
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >>飞往利齿之坑。使用你的背包中的冰喉母熊的缰绳来骑乘它。
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>击杀坑里的战熊。使用重殴（1）造成伤害。使用粉碎（2）接冲锋（3）造成额外伤害。
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>下熊。与艾丝崔对话
    .turnin 12997 >>交任务 进入利齿之坑
    .accept 13061 >>接受任务 为荣耀而战
step
    .goto TheStormPeaks,47.47,69.09
	>>与洛莉拉对话
    .turnin 13061 >>交任务 为荣耀而战
    .accept 13062 >>接受任务 洛莉拉的离别赠礼
step
    .goto TheStormPeaks,50.88,65.58
	>>与格雷塔对话
    .turnin 13062 >>交任务 洛莉拉的离别赠礼
    .accept 12886 >>接受任务 驭龙赛
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>骑龙飞往风暴神殿（这需要1分10秒，可以在此期间休息）。使用你的背包中的海德尼尔鱼叉跳到龙骑士的龙上，并击杀他们
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>在风暴神殿的柱子上使用海德尼尔鱼叉对着装饰石柱（较小的球体）跳上去。
	>>与托里姆对话
    .turnin 12886 >>交任务 驭龙赛
    .accept 13064 >>接受任务 骨肉相残
	>>与托里姆对话
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>交任务 骨肉相残
    .accept 12915 >>接受任务 弥补关系
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>击杀风暴锻铸铁巨人，拾取它们掉落的熔渣包裹的金属，然后开始任务
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>接受任务 精炼之火
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>击杀所有你看到的沸腾复仇者，并拾取他们的火花
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>在霜域湖和乔恩姆之砧的地面上拾取花岗岩巨石（一次只能携带一个）
	.use 41505 >>当你在风暴熔铸钢铁巨人处拥有投石时，使用背包中的托里姆的大地符咒来帮助击杀它们
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>击杀风暴铸铁巨人，拾取它们的熔渣覆盖的金属，然后开始任务
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>接受任务 精炼之火
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>击杀火热的亡魂。拾取它们的火花
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>点击弗约恩的砧
    .turnin 12922 >>交任务 精炼之火
    .accept 12956 >>接受任务 希望的火花
step
    .goto TheStormPeaks,77.34,62.87
	>>在霜域湖和乔恩姆之砧的地面上拾取花岗岩巨石（一次只能携带一个）
	.use 41505 >>当你拥有投石时，使用背包中的托里姆的大地符咒来帮助击杀它们
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>飞往托里姆
    .turnin 12915 >>交任务 弥补关系
    .turnin 12956 >>交任务 希望的火花
    .accept 12924 >>接受任务 重铸盟约
step
	.goto TheStormPeaks,65.45,60.16
	>>和约库姆国王对话
    .accept 12966 >>接受任务 你不会找不到他
step
	.goto TheStormPeaks,75.37,63.57
	>>和亚米尔德对话
    .turnin 12966 >>交任务 你不会找不到他
    .accept 12967 >>接受任务 元素之战
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>右键点击斯诺雷以骑乘他 :3
step
    .goto TheStormPeaks,77.2,62.7
	>>使用"收集雪"(1)从附近的雪堆获得雪。对火热的亡魂使用"抛掷雪球"(2)来击杀他们。
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>和亚米尔德对话
    .turnin 12967 >>交任务 元素之战
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>返回丹尼芬雷，与亚米尔德和砧对话
    .turnin 12924 >>交任务 重铸盟约
    .accept 13009 >>接受任务 新的开始
    .accept 12985 >>接受任务 雷铸徽记
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>返回丹尼芬雷，与亚米尔德和砧对话
    .turnin 12924 >>交任务 重铸盟约
    .accept 13009 >>接受任务 新的开始
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>和约库姆国王对话
    .accept 13011 >>接受任务 斩除尤卡塔尔
    .accept 12975 >>接受任务 回首往事
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>和约库姆国王对话
    .accept 12975 >>接受任务 回首往事
step << Human
	#completewith HornF
	>>留意该区域的永冻之冰碎片物品。如果看到，拾取它并开始任务
	.accept 13420 >>接受任务 永冻之冰
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>击杀脆弱的复仇者，并从它们身上拾取冰之精华
	.use 42424 >>对死亡铁巨人使用钻石尖锄，有时会刷新小怪，需要击杀它们，然后拾取它们掉落的风暴之眼
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>击杀脆弱的复仇者，并从它们身上拾取冰之精华
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >>在弗约恩之砧附近的暗硫残渣旁使用冰之精华，拾取战利品冻铁碎片
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>拾取该区域地面上的小扁石
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>返回丹尼芬雷，与卡尔德、约库姆国王、亚米尔德、弗约恩之砧和霍迪尔的角力对话
	.turnin 13420 >>交任务 永冻之冰
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>交任务 回首往事
    .accept 12976 >>接受任务 亡者的纪念碑
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>交任务 亡者的纪念碑
    .turnin 12985 >>交任务 雷铸徽记
    .accept 12987 >>接受任务 放置霍迪尔之盔
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>返回丹尼芬雷，与约库姆国王、亚米尔德和弗约恩之砧对话
    .turnin 12975 >>交任务 回首往事
    .accept 12976 >>接受任务 亡者的纪念碑
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>交任务 亡者的纪念碑
    .turnin 12985 >>交任务 雷铸徽记
    .accept 12987 >>接受任务 放置霍迪尔之盔
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>返回丹尼芬雷，与约库姆国王、弗约恩之砧和亚米尔德对话
    .turnin 12975 >>交任务 回首往事
    .accept 12976 >>接受任务 亡者的纪念碑
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>交任务 亡者的纪念碑
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>你可能需要交一次奥杜尔圣物来获得与霍迪尔之子的友善声望。如果你的声望已经是友善，可以跳过这个任务
    >>可以通过击杀风暴群山周围的所有小怪来获得奥杜尔圣物，也可以从拍卖行购买获得
	>>和李奥霍夫对话
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>交任务 霍迪尔的供品
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>和亚米尔德对话
    .accept 12985 >>接受任务 雷铸徽记
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >>对死亡铁巨人使用钻石尖锄，有时会刷新小怪，需要击杀它们，然后拾取它们掉落的风暴之眼
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>返回丹尼芬雷，与亚米尔德和霍迪尔的角力对话
    .turnin 12985 >>交任务 雷铸徽记
    .accept 12987 >>接受任务 放置霍迪尔之盔
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >>飞往丹尼芬雷闪闪发光的冰锥，骑上飞行坐骑后，使用背包中的宣告碑
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>和亚米尔德对话
    .turnin 12987 >>交任务 放置霍迪尔之盔
step
    .goto TheStormPeaks,64.22,59.39
	>>和你刚放置的头盔对话
    .daily 13006 >>接受任务 粘滞清洁
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>和约库姆国王对话
    .accept 13011 >>接受任务 斩除尤卡塔尔
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>击杀冬眠洞穴中的粘性油泥，并拾取它们的油
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >>进入冬眠洞穴并沿着右边走，在死亡的冰喉熊上使用永冻刀片，直到你获得冰喉熊腰肉
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>继续沿着右边走直到到达主房间，在冰冻的、满是尖刺的湖中央使用冰喉熊腰肉——击杀约库塔
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>击杀冬眠洞穴中的粘性油泥怪，拾取它们的油
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>飞往风暴神殿顶部的托里姆。和他对话
    .turnin 13009 >>交任务 新的开始
    .accept 13050 >>接受任务 维拉努斯
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>在山顶的鸟巢中拾取蛋
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>飞往风暴神殿顶部的托里姆。和他对话
    .turnin 13050 >>交任务 维拉努斯
    .accept 13051 >>接受任务 侵犯领土
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >>在育母的巢穴顶部使用背包中的偷来的原生龙蛋来引诱维拉努斯
	.timer 42,维拉努斯 剧情RP（继续做任务）
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>飞往风暴神殿顶部的托里姆处。与他对话。在托里姆等待前一个任务的剧情RP完成。大约需要1分钟
    .turnin 13051 >>交任务 侵犯领土
    .accept 13010 >>接受任务 科洛米尔，风暴之锤
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>飞往丹尼芬雷
	.isQuestAvailable 13047
step
	>>和霍迪尔的号角交谈
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>与丹尼芬雷的霍迪尔头盔和约库姆国王交谈
    .turnin 13006 >>交任务 粘滞清洁
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>交任务 杀戮乔库塔尔
	.vehicle >>与约库姆国王对话。骑它前往落雷谷
	.timer 118,科洛米尔，风暴之锤 剧情RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>留意该区域的永冻之冰碎片物品。如果看到，拾取它并开始任务
	.accept 13420 >>接受任务 永冻之冰
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >>击杀该区域的尼弗莱姆先祖和不安分的霜巨人。对它们的尸体使用背包中的霍迪尔的号角，以解放它们
	>>你可以在剧情演出进行时进行此操作
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>等待剧情演出完成
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>在托里姆消失前与其对话
    .turnin 13010 >>交任务 科洛米尔，风暴之锤
    .accept 13057 >>接受任务 造物者圣台
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >>击杀该区域的尼弗莱姆先祖和不安分的霜巨人。对它们的尸体使用背包中的霍迪尔的号角，以解放它们
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>与在造物者圣台的托里姆对话
    .turnin 13057 >>交任务 造物者圣台
    .accept 13005 >>接受任务 土灵的誓言
    .accept 13035 >>接受任务 洛肯的副官
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >>使用背包中的角力来帮助你击杀前往指定怪物途中的铁矮人和铁哨兵
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >>使用背包中的角力召唤一支小型军队，用它击杀哈勒夫尼尔
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >>使用背包中的角力召唤一支小型军队，用它击杀杜洛恩
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >>使用角力来帮助你击杀艾森法斯特洞穴外的铁哨兵
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>前往位于山脉东侧底部的塑造者之厅
	.use 42840 >>使用峭壁号角来召唤一支小军队。用它击杀伊森法斯
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >>使用背包中的角力来帮助你击杀该区域内的铁矮人和铁哨兵
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>在造物者圣台与托里姆对话
    .turnin 13005 >>交任务 土灵的誓言
    .turnin 13035 >>交任务 洛肯的喽啰
    .accept 13047 >>接受任务 清算之战
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>飞往奥杜尔外部
    .fp Ulduar >>开启奥杜尔的飞行点
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>飞往位于奥杜尔外面的托里姆。与他对话，等待剧情RP事件完成
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,清算之战 剧情演出
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>飞往奥杜尔外部
    .fp Ulduar >>开启奥杜尔的飞行点
	.fly Dun Niffelem >>飞往丹尼芬雷。这需要1分44秒，你可以在此期间休息一下
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >>骑乘你的飞行坐骑飞往丹尼芬雷
    .skill riding,<300,1
step
	>>返回丹尼芬雷。与乔库姆、卡尔德和霍迪尔的号角交谈
    .turnin 13047 >>交任务 清算之战
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >>交任务 永冻之冰
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>返回丹尼芬雷。与乔库姆和霍迪尔的号角交谈
    .turnin 13047 >>交任务 清算之战
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>在丹尼芬雷和博学者兰德维尔对话
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>接受任务 打造霍迪尔之矛
	.reputation 1119,honored,<0,1
step
	>>击杀坚韧猛犸象。剥取它们的皮革
	.goto TheStormPeaks,58.68,60.94,60,0
	>>在冬眠洞穴拾取永冻碎片
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>在丹尼芬雷和博学者兰德维尔对话
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>交任务 打造霍迪尔之矛
	.isQuestComplete 13001
step
    +你已完成霍迪尔之子前置任务链。请使用霍迪尔之子日常任务路线指南完成日常任务。请注意，由于之前已完成，一些任务今天可能不可用
	.isQuestTurnedIn 13047
]])
