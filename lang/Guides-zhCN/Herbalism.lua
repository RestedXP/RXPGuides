if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group 专业技能升级
<< Horde
#name 1-450 草药学 (部落)
#displayname 1-450 草药学

step << Mage
    #completewith next
    .zone Undercity >>飞往幽暗城
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .hs >>炉石回到达拉然
    .zoneskip Dalaran
    .zoneskip Undercity
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .goto Dalaran,55.9,24.1
    .zone Undercity >>在达拉然，通过传送门前往幽暗城
    .skill herbalism,70,1
step
    .goto Undercity,54.0,49.5
    .train 2366 >>从幽暗城的马尔萨学习初级草药学(1-75)
    .skill herbalism,70,1
step
    #completewith next
    .goto Undercity,53.8,54.5,-1
    .goto Undercity,67.8,14.4,-1
    .goto Undercity,67.8,14.4,70 >>跳跃到楼梯附近的光亮上，然后登出并重新登入，这样可以节省大量时间
    .link https://www.youtube.com/watch?v=ES8vZZ0XH2k >>https://www.youtube.com/watch?v=ES8vZZ0XH2k >> 点击此处查看指南
    >>如果你做不到，就正常跑出幽暗城
    .skill herbalism,70,1
    .zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,61.9,64.9
    .zone Tirisfal Glades >>离开幽暗城，前往提瑞斯法林地
    .skill herbalism,70,1
step
    .openmap Tirisfal Glades
    .skill herbalism,70 >>在提瑞斯法林地将你的草药学从1升级到70，按'M'打开你的地图查看路线。
    .loop 60,Tirisfal Glades,53.7,59.8,51.5,62.2,49.1,66.4,43.4,67.3,42.5,64.3,42.1,60.1,41.3,53.8,39.4,50.5,30.6,49.7,30.5,46.6,37.4,45.9,39.1,39.1,44.7,40.5,43.7,31.9,48.7,29.8,52.2,28.6,47.8,43.1,45.7,46.1,46.8,52.0,50.1,55.2,52.8,48.5,56.0,48.5,58.5,47.6,60.2,44.8,57.4,39.0,57.0,33.1,58.3,30.6,61.6,32.7,63.7,35.4,66.6,35.6,63.5,44.0,63.7,48.5,65.5,51.4,58.5,58.2,56.8,59.6,53.7,59.8
step << Mage
    #completewith next
    .zone Undercity >>飞往幽暗城
    .skill herbalism,115,1
step << !Mage
    .goto Undercity,66.2,1.5,20,0
    .goto Undercity,65.9,44.1,50,0
    .goto Undercity,54.0,49.5,50 >>回到幽暗城的马尔萨处
    .skill herbalism,115,1
    .cooldown item,6948,<0,1
step << !Mage
    .hs >>炉石返回到达拉然
    .zoneskip Undercity
    .skill herbalism,115,1
step << !Mage
    #completewith next
    .goto Dalaran,55.9,24.1
    .zone Undercity >>在达拉然，通过传送门前往幽暗城
    .skill herbalism,115,1
step
    .goto Undercity,54.0,49.5
    .train 2368 >>从幽暗城的马尔萨学习中级草药学(75-150)
    .skill herbalism,115,1
step
    #completewith next
    .goto Undercity,65.9,44.1,50,0
    .goto Undercity,63.3,48.6
    .fly Sepulcher >>飞往瑟伯切尔
    .skill herbalism,115,1
    .zoneskip Silverpine Forest
step
    .skill herbalism,115 >>在银松森林，将你的草药学从70升级到115
    .loop 60,Silverpine Forest,51.9,42.9,48.9,33.3,45.1,30.3,47.6,24.9,52.0,20.9,55.1,15.7,58.4,12.1,64.3,9.1,65.3,11.3,60.5,14.1,56.2,18.7,55.8,22.5,56.2,29.3,55.4,31.9,52.5,31.2,54.6,35.9,54.4,43.1,52.2,49.8,54.7,58.5,55.8,64.5,61.5,64.3,64.2,76.9,60.1,78.3,55.1,76.3,51.7,77.6,49.5,80.1,46.1,80.8,50.1,74.3,51.4,68.1,51.7,56.4,48.0,52.6,45.5,53.6,44.1,50.4,45.1,47.5,49.0,46.8,51.9,42.9
step
    #completewith next
    .goto Silverpine Forest,45.6,42.6,-1
    .goto Hillsbrad Foothills,21.0,46.2,-1
    >>前往希尔斯布莱德丘陵。如果你靠近边界，就骑马去那里；否则骑马回到瑟伯切尔并飞到塔伦米尔
    .fly Tarren Mill >>飞往塔伦米尔，希尔斯布莱德
    .zoneskip Hillsbrad Foothills
    .skill herbalism,150,1
step
    .skill herbalism,150 >>在希尔斯布莱德丘陵，将你的草药学从115升级到150
    .loop 60,Hillsbrad Foothills,56.2,28.0,55.7,17.7,58.6,15.0,63.6,13.0,66.8,8.2,70.4,15.9,71.8,23.2,75.9,30.5,84.4,33.4,87.3,37.3,86.3,39.8,76.7,32.9,70.7,38.6,64.9,45.7,64.3,52.4,70.2,53.2,75.4,55.4,70.6,63.1,67.1,69.0,68.9,83.8,64.6,73.0,60.9,67.0,56.2,52.8,51.5,46.2,46.3,47.6,45.6,51.5,43.3,61.3,40.1,64.3,35.6,63.5,37.4,56.0,33.2,55.4,25.4,53.2,21.7,54.1,16.9,54.1,14.7,51.6,18.1,44.2,22.4,42.4,25.7,42.7,26.2,33.9,31.6,29.8,38.7,32.7,42.0,38.2,47.5,35.1,48.2,31.2,53.1,31.6,56.2,28.0
step
    .goto Hillsbrad Foothills,60.1,18.6
    .train 3570 >>从塔伦米尔的阿兰奈学习高级草药学(150-225)
    .skill herbalism,225,1
step << Mage
    #completewith next
    .zone Swamp of Sorrows >>传送至斯通纳德
    .skill herbalism,225,1
step << !Mage
    #completewith next
    .goto Hillsbrad Foothills,60.1,18.6
    .fly Stonard >>飞往斯通纳德
    .skill herbalism,225,1
step
    >>先专注于活根草和皇血草，等技能达到160后再采集枯叶草
    .skill herbalism,170 >>在悲伤沼泽，将你的草药学从150升级到170
    .loop 60,Swamp of Sorrows,37.2,46.5,30.0,51.3,26.8,58.7,23.4,58.8,19.4,55.1,17.0,59.8,13.2,62.7,13.6,52.7,18.3,45.4,12.2,32.9,21.9,44.7,28.7,38.8,34.0,35.0,45.2,34.0,61.3,33.1,74.1,24.2,76.7,15.2,82.4,25.6,78.3,36.0,87.5,43.8,83.4,47.6,86.9,58.8,81.6,62.5,78.4,67.0,83.3,71.7,76.0,77.5,68.9,69.8,58.9,59.0,56.8,49.0,46.8,39.5,37.2,46.5
step
    >>现在专注于金棘草，当你的技能达到185时，再采集卡德加的胡须
    .skill herbalism,225 >>在悲伤沼泽，将你的草药学从170升级到225
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,63.4,20.9,70.3,13.1,81.2,22.0,86.4,42.3,86.2,62.1,82.8,72.2,75.4,86.1,69.1,77.5,64.5,68.6,73.3,72.4,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << Mage
    #completewith next
    .zone Orgrimmar >>传送至奥格瑞玛
    .skill herbalism,300,1
step << !Mage
    .goto Blasted Lands,52.0,7.7,60,0
    .goto Blasted Lands,58.8,60.2,50,0
    .goto Hellfire Peninsula,88.9,50.2
    .zone Hellfire Peninsula >>进入诅咒之地。穿过黑暗传送门
    .skill herbalism,300,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Hellfire Peninsula
    .skill herbalism,300,1
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >>在达拉然，通过传送门前往奥格瑞玛
    .skill herbalism,300,1
step
    #completewith next
    .goto Orgrimmar,43.1,41.4,70,0
    .goto Orgrimmar,45.9,43.6,40,0
    .goto Orgrimmar,49.4,39.6,40,0
    .goto Orgrimmar,54.5,41.0,40 >>从暗巷区上部的后门进入
    .skill herbalism,300,1
step
    .goto Orgrimmar,55.6,39.5
    .train 11993 >>从奥格瑞玛建筑内的加迪处学习专家级草药学(225-300)
    .skill herbalism,300,1
step << Mage
    #completewith next
    .zone Swamp of Sorrows >>传送至斯通纳德
    .skill herbalism,300,1
step << !Mage
    .goto Durotar,45.5,12.2
    .zone Durotar >>离开奥格瑞玛前往杜隆塔尔。或者，付费让法师传送你到斯通纳德
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step << !Mage
    .goto Durotar,50.7,13.3,20,0
    .goto Durotar,50.6,12.6
    .zone Stranglethorn Vale >>上飞艇塔楼。乘坐飞艇前往荆棘谷
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step << !Mage
    #completewith next
    .goto Stranglethorn Vale,32.5,29.4
    .fly Stonard >>飞往斯通纳德
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step
    .skill herbalism,300 >>在悲伤沼泽，将你的草药学从225升级到300
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,60.0,33.2,63.4,20.9,70.3,13.1,81.2,22.0,79.1,31.5,,84.2,35.4,,86.4,42.3,86.2,62.1,82.8,72.2,78.5,77.4,71.1,68.9,76.9,67.2,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << !Mage
    .goto Blasted Lands,52.0,7.7,60,0
    .goto Blasted Lands,58.8,60.2,50,0
    .goto Hellfire Peninsula,88.9,50.2
    .zone Hellfire Peninsula >>进入诅咒之地。穿过黑暗传送门
    .skill herbalism,325,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Shattrath City >>传送至沙塔斯城
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Shattrath City
    .skill herbalism,325,1
step << !Mage
    #completewith next
    .goto Dalaran,56.4,22.8
    .zone Shattrath City >>在达拉然通过传送门前往沙塔斯城
    .skill herbalism,325,1
step
    #completewith Ruak
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >>飞往萨尔玛，地狱火半岛
    .skill herbalism,325,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,52.2,36.2
    .zone Hellfire Peninsula >>骑飞行坐骑飞往地狱火半岛的萨尔玛
    .skill herbalism,325,1
    .skill riding,<300,1
step
    #label Ruak
    .goto Hellfire Peninsula,52.7,36.6,15,0
    .goto Hellfire Peninsula,52.2,36.2
    .train 28695 >>从萨尔玛建筑内的鲁埃克·硬角学习大师级草药学(300-375)
    .skill herbalism,325,1
step
    .skill herbalism,325 >>在地狱火半岛，将你的草药学从300升级到325
    .loop 60,Hellfire Peninsula,27.9,80.6,31.1,61.8,43.5,63.9,43.0,72.9,38.1,87.2,45.7,85.5,49.8,69.2,62.0,68.9,67.4,77.9,65.4,58.4,72.3,62.3,80.3,79.6,73.8,59.2,66.8,55.5,67.1,52.2,71.9,51.9,73.9,40.2,66.8,43.7,65.7,28.1,59.0,35.9,55.6,28.9,51.0,23.9,49.2,36.5,45.1,41.9,49.0,47.1,59.8,47.1,61.0,53.7,52.5,54.6,48.6,58.9,42.9,56.0,37.7,42.6,41.0,30.8,35.5,29.3,27.5,36.8,31.4,48.6,24.1,44.4,20.5,40.1,18.2,46.1,14.6,36.8,12.1,55.2,13.8,61.8,17.2,53.6,22.7,54.9,22.9,65.9,27.9,80.6
step << Mage
    #completewith next
    .zone Shattrath City >>传送至沙塔斯城
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
step << !Mage
    .goto Terokkar Forest,60.5,24.2
    .zone Terokkar Forest >>飞往泰罗卡森林
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石返回到达拉然
    .zoneskip Shattrath City
    .skill herbalism,350,1
step << !Mage
    #completewith next
    .goto Dalaran,56.4,22.8
    .zone Shattrath City >>在达拉然通过传送门前往沙塔斯城
    .skill herbalism,350,1
step
    #completewith next
    .goto Terokkar Forest,39.6,24.8
    .zone Terokkar Forest >>飞往泰罗卡森林
    .skill herbalism,350,1
step
    #label Terokkar
    .skill herbalism,350 >>在泰罗卡森林，将你的草药学从325升级到350
    .loop 60,Terokkar Forest,20.8,16.4,22.8,7.8,25.5,10.2,35.8,8.6,44.0,18.1,44.9,13.9,50.8,17.5,50.1,25.7,37.8,35.7,40.6,40.5,45.6,33.4,50.5,35.6,55.3,27.7,61.2,24.4,54.9,38.2,60.2,42.9,65.2,30.5,72.9,30.6,67.1,43.7,60.9,45.2,69.0,50.4,64.9,56.0,60.2,49.7,54.9,58.6,56.5,65.5,65.6,69.5,73.5,82.7,73.4,87.4,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.4,66.2,24.7,65.1,25.6,77.3,18.3,78.0,17.9,66.0,27.5,50.2,32.3,36.4,20.8,16.4
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >>通过传送门前往奥格瑞玛
    .skill herbalism,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill herbalism,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >>登上飞艇塔楼，乘坐飞艇前往北风苔原
step << Mage
    #completewith next
    .zone Dalaran >>传送至达拉然
    .skill herbalism,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Shattrath City
    .skill herbalism,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >>骑飞行坐骑飞往北风苔原
    .skill herbalism,375,1
    .skill riding,<300,1
step << !mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Warsong Hold >>飞往北风苔原（战歌要塞）
    .skill herbalism,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tansy
    .goto Borean Tundra,42.0,53.6
    .train 50300 >>从战歌要塞的塔希·蛮鬃处学习宗师级草药学 (350-450)
    .skill herbalism,375,1
step
    #label BoreanTundra
    .skill herbalism,375 >>在北风苔原，将升级你的草药学从350至400
    .loop 20,Borean Tundra,77.0,30.1,77.5,35.8,75.5,41.7,69.0,41.8,64.5,39.8,60.7,42.5,61.6,58.4,57.4,48.8,49.8,69.5,49.2,74.9,46.2,72.2,32.8,63.5,32.5,54.3,44.0,43.9,52.7,49.0,52.7,41.0,58.0,40.4,60.1,32.5,54.9,27.9,48.4,23.2,50.0,20.0,58.1,18.7,61.8,14.3,66.0,16.1,73.4,25.9,70.1,31.0,72.6,34.2,77.0,30.1
step
    #completewith next
    .goto Sholazar Basin,50,50
    .zone Sholazar Basin >>飞往索拉查盆地
    .skill herbalism,425,1
step
    .skill herbalism,425 >>在索拉查盆地，将你的草药学从375升级至425
    .loop 20,Sholazar Basin,70.1,68.4,67.1,70.9,65.7,75.3,58.3,77.7,60.9,84.4,54.4,85.7,48.6,83.5,48.1,71.7,47.8,65.8,49.6,52.4,46.4,51.7,45.1,56.3,42.1,58.0,40.9,64.3,42.2,83.2,33.5,83.1,27.2,80.1,26.6,72.8,34.2,66.3,33.8,59.8,22.2,59.2,23.1,48.1,28.6,52.7,30.1,44.5,35.4,45.0,33.4,35.1,41.4,22.8,58.3,27.8,62.1,35.0,56.1,35.7,57.3,42.3,59.2,47.0,56.7,55.9,54.2,61.5,61.7,67.2,70.1,68.4
step
    #completewith next
    .goto The Storm Peaks,50.0,50.0
    .zone The Storm Peaks >>骑飞行坐骑飞往风暴峭壁
    .skill herbalism,450,1
    .skill riding,<300,1
step << Mage
    #completewith next
    .zone Dalaran >>传送至达拉然
    .skill herbalism,450,1
    .skill riding,300.1
    .zoneskip Dalaran
    .zoneskip The Storm Peaks
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Sholazar Basin,50.2,61.5
    .fly K3 >>飞往风暴峭壁 (K3)
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
step
    #label TheStormPeaks
    .skill herbalism,450 >>在风暴峭壁，将你的草药学技能从 425 提升至 450
    .loop 20,The Storm Peaks,56.1,65.5,59.2,59.3,63.5,62.6,72.5,63.3,71.1,55.4,71.9,48.3,67.0,45.9,65.4,41.6,61.1,44.2,58.8,48.7,55.7,50.2,50.5,53.3,49.8,59.8,46.9,62.5,38.0,62.9,38.0,53.9,44.0,52.8,43.1,43.6,37.6,44.5,34.9,40.1,32.3,49.3,28.4,50.3,26.7,56.7,22.6,57.0,25.0,63.1,27.8,61.8,26.7,72.5,31.5,65.8,36.9,66.3,37.4,77.0,30.6,83.4,32.7,89.9,39.0,88.5,39.6,80.7,50.0,74.3,56.1,65.5
step
    +恭喜！你达到草药学技能等级 450！
]])

RXPGuides.RegisterGuide([[
#wotlk
#group 专业技能升级
<< Alliance
#name 1-450 草药学 (联盟)
#displayname 1-450 草药学


step << Mage
    #completewith next
    .zone Stormwind City >>传送到暴风城
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Dalaran
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .goto Dalaran,39.8,62.5
    .zone Stormwind City >>在达拉然通过传送门前往暴风城
    .skill herbalism,70,1
step
    .goto Stormwind City,54.3,84.1
    .train 2366 >>从暴风城的塔尼莎处训练初级草药学 (1-75)
    .skill herbalism,70,1
step
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >>离开暴风城，进入艾尔文森林
    .skill herbalism,70,1
step
    .openmap Elwynn Forest
    .skill herbalism,70 >>在艾尔文森林将你的草药学技能从 1 提升至 70，按"M"打开你的地图查看路线。
    .loop 60,Elwynn Forest,32.4,56.2,36.5,58.7,40.5,54.7,47.7,59.3,60.9,59.2,65.8,64.8,68.9,62.3,68.9,52.0,65.8,45.5,72.2,40.0,79.6,39.4,81.6,49.7,80.7,56.4,86.9,61.5,85.9,73.2,87.3,79.2,85.2,82.6,79.9,80.9,76.0,82.8,62.7,77.7,57.4,78.2,49.4,84.3,42.2,89.1,40.4,87.5,42.0,80.8,39.3,74.8,36.0,81.9,34.8,85.6,26.4,90.9,26.5,81.2,23.0,75.9,26.0,74.7,29.4,68.2,29.1,62.0,30.5,58.5,32.4,56.2
step << Mage
    #completewith next
    .zone Stormwind City >>传送到暴风城
    .skill herbalism,150,1
step << !Mage
    .goto Stormwind City,73.0,89.9
    .zone Stormwind City >>返回暴风城
    .skill herbalism,150,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Stormwind City
    .skill herbalism,150,1
step << !Mage
    #completewith next
    .goto Dalaran,39.8,62.5
    .zone Stormwind City >>在达拉然通过传送门前往暴风城
    .skill herbalism,150,1
step
    .goto Stormwind City,54.3,84.1
    .train 2368 >>从暴风城的塔尼莎处训练中级草药学 (75-150)
    .skill herbalism,151,1
step
    #completewith next
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    .fly Lakeshire >>飞往湖畔镇
    .zoneskip Redridge Mountains
    .skill herbalism,150,1
step
    .skill herbalism,150 >>在赤脊山，将你的草药学技能从 70 提升至 150
    .loop 60,Redridge Mountains,24.8,72.7,30.8,80.7,36.2,73.4,40.0,76.0,55.8,75.4,60.4,72.4,64.7,78.2,69.1,77.6,73.9,82.4,77.1,73.4,77.1,66.7,81.4,69.8,82.8,66.0,87.0,62.0,80.4,39.9,76.6,39.3,76.8,50.5,71.2,50.2,64.2,44.8,54.8,44.1,49.5,41.1,43.2,34.2,30.5,22.5,24.8,24.1,23.8,29.1,20.7,40.7,15.4,52.2,22.3,60.8,11.8,76.0,24.8,72.7
step
    .goto Redridge Mountains,21.7,45.8
    .train 3570 >>从湖畔镇的奥玛学习高级草药学(150-225)
    .skill herbalism,226,1
step
    #completewith next
    .goto Redridge Mountains,30.6,59.4
    .fly Nethergarde >>飞往守望堡，诅咒之地
    .skill herbalism,225,1
    .zoneskip Swamp of Sorrows
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,40,0
    .goto Swamp of Sorrows,33.9,65.9
    .zone Swamp of Sorrows >>前往悲伤沼泽
    .skill herbalism,225,1
step
    >>先专注于活根草和皇血草，等技能达到160后再采集枯叶草
    .skill herbalism,170 >>在悲伤沼泽，将你的草药学从150升级到170
    .loop 60,Swamp of Sorrows,37.2,46.5,30.0,51.3,26.8,58.7,23.4,58.8,19.4,55.1,17.0,59.8,13.2,62.7,13.6,52.7,18.3,45.4,12.2,32.9,21.9,44.7,28.7,38.8,34.0,35.0,45.2,34.0,61.3,33.1,74.1,24.2,76.7,15.2,82.4,25.6,78.3,36.0,87.5,43.8,83.4,47.6,86.9,58.8,81.6,62.5,78.4,67.0,83.3,71.7,76.0,77.5,68.9,69.8,58.9,59.0,56.8,49.0,46.8,39.5,37.2,46.5
step
    >>现在专注于金棘草，当你的技能达到185时，再采集卡德加的胡须
    .skill herbalism,225 >>在悲伤沼泽，将你的草药学从170升级到225
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,63.4,20.9,70.3,13.1,81.2,22.0,86.4,42.3,86.2,62.1,82.8,72.2,75.4,86.1,69.1,77.5,64.5,68.6,73.3,72.4,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,-1
    .goto Deadwind Pass,56.8,42.0,-1
    .zone Redridge Mountains >>前往逆风小径或诅咒之地，选择比较近的一个
    .zoneskip Deadwind Pass
    .zoneskip Blasted Lands
    .skill herbalism,300,1
step
    #completewith next
    .goto Blasted Lands,65.5,24.3,-1
    .goto Duskwood,77.5,44.3,-1
    .fly Lakeshire >>飞往湖畔镇
    .skill herbalism,300,1
step
    .goto Redridge Mountains,21.7,45.8
    .train 11993 >>从湖畔镇的奥玛学习专家级草药学(225-300)
    .skill herbalism,300,1
step
    #completewith next
    .goto Redridge Mountains,30.6,59.4
    .fly Nethergarde >>飞往守望堡，诅咒之地
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,40,0
    .goto Swamp of Sorrows,33.9,65.9
    .zone Swamp of Sorrows >>前往悲伤沼泽
    .skill herbalism,300,1
step
    .skill herbalism,300 >>在悲伤沼泽，将你的草药学从225升级到300
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,60.0,33.2,63.4,20.9,70.3,13.1,81.2,22.0,79.1,31.5,,84.2,35.4,,86.4,42.3,86.2,62.1,82.8,72.2,78.5,77.4,71.1,68.9,76.9,67.2,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << Mage
    #completewith next
    .zone Shattrath City >>传送至沙塔斯城
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.2,66.2
    .zone Shattrath City >>通过传送门前往沙塔斯城
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step
    #completewith Rorelien
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >>飞往荣耀堡
    .skill herbalism,325,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,53.6,65.8
    .zone Hellfire Peninsula >>骑飞行坐骑飞往地狱火半岛的荣耀堡
    .skill herbalism,325,1
    .skill riding,<300,1
step
    #label Rorelien
    .goto Hellfire Peninsula,54.2,65.4,15,0
    .goto Hellfire Peninsula,53.6,65.8
    .train 28695 >>从荣耀堡内建筑中的罗雷利恩处训练大师级草药学 (300-375)
    .skill herbalism,325,1
step
    .skill herbalism,325 >>在地狱火半岛，将你的草药学从300升级到325
    .loop 45,Hellfire Peninsula,27.9,80.6,31.1,61.8,43.5,63.9,43.0,72.9,38.1,87.2,45.7,85.5,49.8,69.2,62.0,68.9,67.4,77.9,65.4,58.4,72.3,62.3,80.3,79.6,73.8,59.2,66.8,55.5,67.1,52.2,71.9,51.9,73.9,40.2,66.8,43.7,65.7,28.1,59.0,35.9,55.6,28.9,51.0,23.9,49.2,36.5,45.1,41.9,49.0,47.1,59.8,47.1,61.0,53.7,52.5,54.6,48.6,58.9,42.9,56.0,37.7,42.6,41.0,30.8,35.5,29.3,27.5,36.8,31.4,48.6,24.1,44.4,20.5,40.1,18.2,46.1,14.6,36.8,12.1,55.2,13.8,61.8,17.2,53.6,22.7,54.9,22.9,65.9,27.9,80.6
step << Mage
    #completewith next
    .zone Shattrath City >>传送至沙塔斯城
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
step
    #completewith next
    .goto Terokkar Forest,39.6,24.8
    .zone Terokkar Forest >>飞往泰罗卡森林
    .skill herbalism,350,1
step
    .skill herbalism,350 >>在泰罗卡森林，将你的草药学从325升级到350
    .loop 60,Terokkar Forest,20.8,16.4,22.8,7.8,25.5,10.2,35.8,8.6,44.0,18.1,44.9,13.9,50.8,17.5,50.1,25.7,37.8,35.7,40.6,40.5,45.6,33.4,50.5,35.6,55.3,27.7,61.2,24.4,54.9,38.2,60.2,42.9,65.2,30.5,72.9,30.6,67.1,43.7,60.9,45.2,69.0,50.4,64.9,56.0,60.2,49.7,54.9,58.6,56.5,65.5,65.6,69.5,73.5,82.7,73.4,87.4,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.4,66.2,24.7,65.1,25.6,77.3,18.3,78.0,17.9,66.0,27.5,50.2,32.3,36.4,20.8,16.4
step << Mage
    #completewith next
    .zoneskip Borean Tundra
    .zone Dalaran >>传送至达拉然
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .zoneskip Borean Tundra
    .skill herbalism,400,1
step
    #completewith next
    .zone Borean Tundra >>骑飞行坐骑飞往北风苔原
    .skill herbalism,400,1
    .skill riding,300,1
step
    #completewith next
    .goto Dalaran, 72.2,45.8
    .fly Valiance Keep >>飞往北风苔原（无畏要塞）
    .skill herbalism,400,1
    .skill riding,<300,1
step
    #label Kirea
    .goto Borean Tundra,57.8,71.8
    .train 50300 >>从无畏要塞的基琳·月舞处学习宗师级草药学 (350-450)
    .skill herbalism,400,1
step
    #label BoreanTundra
    .skill herbalism,400 >>在北风苔原，将升级你的草药学从350至400
    .loop 20,Borean Tundra,77.0,30.1,77.5,35.8,75.5,41.7,69.0,41.8,64.5,39.8,60.7,42.5,61.6,58.4,57.4,48.8,49.8,69.5,49.2,74.9,46.2,72.2,32.8,63.5,32.5,54.3,44.0,43.9,52.7,49.0,52.7,41.0,58.0,40.4,60.1,32.5,54.9,27.9,48.4,23.2,50.0,20.0,58.1,18.7,61.8,14.3,66.0,16.1,73.4,25.9,70.1,31.0,72.6,34.2,77.0,30.1
step
    #completewith next
    .goto Sholazar Basin,50,50
    .zone Sholazar Basin >>飞往索拉查盆地
    .skill herbalism,425,1
step
    .skill herbalism,425 >>在索拉查盆地，将你的草药学从375升级至425
    .loop 20,Sholazar Basin,70.1,68.4,67.1,70.9,65.7,75.3,58.3,77.7,60.9,84.4,54.4,85.7,48.6,83.5,48.1,71.7,47.8,65.8,49.6,52.4,46.4,51.7,45.1,56.3,42.1,58.0,40.9,64.3,42.2,83.2,33.5,83.1,27.2,80.1,26.6,72.8,34.2,66.3,33.8,59.8,22.2,59.2,23.1,48.1,28.6,52.7,30.1,44.5,35.4,45.0,33.4,35.1,41.4,22.8,58.3,27.8,62.1,35.0,56.1,35.7,57.3,42.3,59.2,47.0,56.7,55.9,54.2,61.5,61.7,67.2,70.1,68.4
step
    #completewith next
    .goto The Storm Peaks,50.0,50.0
    .zone The Storm Peaks >>骑飞行坐骑飞往风暴峭壁
    .skill herbalism,450,1
    .skill riding,<300,1
step << Mage
    #completewith next
    .zone Dalaran >>传送至达拉然
    .skill herbalism,450,1
    .skill riding,300.1
    .zoneskip Dalaran
    .zoneskip The Storm Peaks
step << !Mage
    #completewith next
    .hs >>炉石返回达拉然
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Sholazar Basin,50.2,61.5
    .fly K3 >>飞往风暴峭壁 (K3)
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
step
    #label TheStormPeaks
    .skill herbalism,450 >>在风暴峭壁，将你的草药学技能从 425 提升至 450
    .loop 20,The Storm Peaks,56.1,65.5,59.2,59.3,63.5,62.6,72.5,63.3,71.1,55.4,71.9,48.3,67.0,45.9,65.4,41.6,61.1,44.2,58.8,48.7,55.7,50.2,50.5,53.3,49.8,59.8,46.9,62.5,38.0,62.9,38.0,53.9,44.0,52.8,43.1,43.6,37.6,44.5,34.9,40.1,32.3,49.3,28.4,50.3,26.7,56.7,22.6,57.0,25.0,63.1,27.8,61.8,26.7,72.5,31.5,65.8,36.9,66.3,37.4,77.0,30.6,83.4,32.7,89.9,39.0,88.5,39.6,80.7,50.0,74.3,56.1,65.5
step
    +恭喜！你达到草药学技能等级 450！
]])
