if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#group +Profession leveling
#subgroup Skinning
<< Horde
#name 1-375 Horde_b1
#displayname 1-375 Horde

--XX TBC 1-375 Skinning guide

step << Mage
    #completewith Thuwd
    .zone Orgrimmar >> Teleport to Orgrimmar
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .zoneskip Orgrimmar
    .zoneskip Shattrath City
    .skill skinning,75,1
step << !Mage
    #completewith Thuwd
    .goto Shattrath City,52.2,52.9
    .zone Orgrimmar >> In Shattrath, take the portal to Orgrimmar
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Orgrimmar,63.0,45.5,0,0
    >>Buy a Skinning Knife from Tamar next to Thuwd
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Thuwd
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8613 >> Train Apprentice Skinning (1-75) from Thuwd in the building in Orgrimmar
       .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Durotar,45.5,12.2
    .zone Durotar >> Exit Orgrimmar into Durotar
    .skill skinning,75,1
step
    #requires Shank
    .openmap Durotar
    .skill skinning,75 >> Level your Skinning from 1-75 in Durotar by killing beasts, looting them, and then skinning them. Press "M" to open your map to see the route.
    .loop 45,Durotar,54.5,68.2,54.2,60.1,54.7,58.9,54.5,54.3,51.2,51.8,51.1,46.6,47.4,42.7,45.7,37.7,45.0,34.3,43.0,34.9,42.6,37.0,40.8,37.0,38.5,34.3,36.5,31.3,36.9,25.0,38.5,21.7,40.8,21.1,43.0,21.4,44.4,19.2,43.5,15.7,
step << !Mage
    .goto Orgrimmar,48.8,91.0
    .zone Orgrimmar >> Ride back to Orgrimmar
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Orgrimmar >> Teleport to Orgrimmar
    .skill skinning,125,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,125,1
    .zoneskip Orgrimmar
step << !Mage
    #completewith next
    .goto Shattrath City,52.2,52.9
    .zone Orgrimmar >> In Shattrath, take the portal to Orgrimmar
    .skill skinning,125,1
step
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8617 >> Train Journeyman Skinning (75-150) from Thuwd in the building in Orgrimmar
    .skill skinning,125,1
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .zoneskip The Barrens
    .skill skinning,125,1
step
    >>Aim to reach at least skill level 125 before you get to Camp Taurajo
    .skill skinning,125 >> Level your Skinning from 75-125 in The Barrens
    .loop 45,The Barrens,51.0,31.7,51.0,35.0,50.2,36.3,49.3,38.0,49.6,39.9,49.0,42.5,50.2,45.4,49.5,47.8,46.0,51.7,45.9,53.7,46.3,56.2,
step
    .goto The Barrens,45.1,59.1
    .train 8618 >> Train Expert Skinning (150-225) from Dranh in Camp Taurajo
    .skill skinning,165,1
step
    .skill skinning,165 >> Level your Skinning from 125-165 in The Barrens
    .loop 45,The Barrens,46.1,59.9,46.9,63.1,46.7,65.3,46.9,68.0,45.6,71.5,45.4,74.6,45.0,77.6,47.1,79.2,46.8,82.0,44.8,85.2
step
    #completewith next
    .goto Thousand Needles,32.1,22.7
    .zone Thousand Needles >>前往千针石林
    .skill skinning,205,1
step
    .skill skinning,205 >> Level your Skinning from 165-205 in Thousand Needles
    .loop 45,Thousand Needles,31.4,25.4,30.8,28.2,31.4,31.2,30.0,34.2,29.9,41.7,31.2,47.5,32.2,52.4,38.8,56.7,42.9,59.7,48.4,59.4,53.3,54.0,57.7,56.5,61.7,60.1,66.6,61.6,69.9,62.7,72.1,67.7,71.8,74.2,72.9,81.3,77.4,84.0,80.9,87.7,78.6,91.1,75.7,89.7
step
    .goto Feralas,88.8,41.4,-1
    .goto Tanaris,51.3,21.4,-1
    .zone Tanaris >>前往暴风城大教堂内，与 either Feralas or Tanaris, whichever is closer
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Tanaris,51.6,25.4
    .fly Camp Mojache >>Fly to 莫沙彻营地，菲拉斯
    .skill skinning,230,1
    .zoneskip Feralas
step
    .goto Feralas,74.7,43.0,12,0
    .goto Feralas,74.5,43.0
    .train 10768 >> Train Artisan Skinning (225-300) from Kulleg in the big tent in Camp Mojache
    .skill skinning,230,1
step
    .skill skinning,230 >> Level your Skinning from 205-230 in Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>消灭那些试图阻止仪式的 Yetis in the cave or the Hippogryphs outside,then skin them
    .skill skinning,260 >> Level your Skinning from 230-260 in Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>消灭那些试图阻止仪式的 Yetis in the cave or the beasts outside,then skin them
    .skill skinning,280 >> Level your Skinning from 260-280 in Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step
    #completewith next
    .goto Feralas,75.4,44.4
    >>Ride back to Camp Mojache
    .fly Marshal's Refuge >>Fly to 马绍尔营地，安戈洛环形山
    .zoneskip Un'Goro Crater
    .skill skinning,300,1
step
    .skill skinning,300 >> Level your Skinning from 280-300 in Un'Goro Crater
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Teleport to Shattrath City
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step
    #completewith Moorutu
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >>Fly to 萨尔玛，地狱火半岛
    .skill skinning,305,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.3,38.6
    .zone Hellfire Peninsula >> Fly to Thrallmar in Hellfire Peninsula on your flying mount
    .skill skinning,305,1
    .skill riding,<300,1
step
    #label Moorutu
    .goto Hellfire Peninsula,56.3,38.6
    .train 32678 >>学习锤类武器 Skinning (300-375) from Moorutu in Thrallmar
    .skill skinning,305,1
step
    >>击杀 Starving Helboars,then skin them
    .skill skinning,305 >>Level your Skinning from 300-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>击杀 Deranged Helboars,then skin them
    .skill skinning,310 >>Level your Skinning from 305-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>击杀 Razorfang Hatchlings 和 Razorfang Ravagers,then skin them
    .skill skinning,330 >>Level your Skinning from 310-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Teleport to Shattrath City
    .skill skinning,375,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,375,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Fly to Nagrand on your flying mount
    .skill skinning,375,1
step
    >>击杀 Talbuks 和 Clefthoofs,then skin them
    .skill skinning,375 >> Level your Skinning from 330-375 in Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step
    +Congratulations on reaching 375 Skinning!
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#group +Profession leveling
#subgroup Skinning
<< Alliance
#name 1-375 Alliance_b2
#displayname 1-375 Alliance

step << Mage
    #completewith Maris
    .zone Stormwind City >>飞往暴风城
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,75,1
    .zoneskip Stormwind City
step << !Mage
    .goto Shattrath City,55.8,36.6
    .zone Stormwind City >>In Shattrath, 乘坐地铁前往暴风城 City
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Stormwind City,71.6,62.8,0,0
    >>Buy a Skinning Knife from Jillian next to Simon
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Maris
    .goto Stormwind City,72.6,62.1,12,0
    .goto Stormwind City,72.1,62.2
    .train 8613 >> Train Apprentice Skinning (1-75) from Maris in the house in Stormwind
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >>离开暴风城 into Elwynn Forest
    .skill skinning,75,1
step
    #requires Shank
    .openmap Elwynn Forest
    .skill skinning,75 >> Level your Skinning from 1-75 in Elwynn by killing boars, looting them, and then skinning them. Press "M" to open your map to see the route.
	.loop 25,Elwynn Forest,32.6,83.0,31.0,85.6,32.6,87.8,33.6,85.4,32.6,83.0
step << Mage
    #completewith next
    .zone Ironforge >>飞往铁炉堡
    .skill skinning,125,1
step << !Mage
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,70.954,72.512
    >>Return to 暴风城，艾尔文森林
    .fly Ironforge
    .zone Ironforge >>Travel to 铁炉堡，丹莫罗
    .zoneskip Ironforge
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,125,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Shattrath City,56.3,36.9
    .zone Ironforge >>In Shattrath, take 将炉石使用回铁炉堡
    .skill skinning,125,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8617 >> Train Journeyman Skinning (75-150) from Balthus in the house in Ironforge
    .skill skinning,125,1
step
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Thelsamar >>Fly to 塞尔萨玛，洛克莫丹
    .skill skinning,125,1
    .zoneskip Loch Modan
step
    .skill skinning,115 >> Level your Skinning from 75-115 in Loch Modan
    .loop 45,Loch Modan,34.4,53.8,37.7,52.3,41.7,54.4,44.4,64.1,49.9,69.3,55.6,66.9,63.9,63.4,59.4,62.0,63.0,57.0,64.3,48.7,62.2,38.9,59.9,36.9,59.5,29.8,58.9
step
    .skill skinning,125 >> Level your Skinning from 115-125 in Loch Modan
    .loop 45,Loch Modan,61.5,40.9,72.4,41.8,76.8,47.9,77.4,41.4,59.9,28.0,61.5,40.9
step << Mage
    #completewith next
    .zone Ironforge >>飞往铁炉堡
    .skill skinning,155,1
step << !Mage
    .goto Loch Modan,33.938,50.954
    >>Return to 塞尔萨玛，洛克莫丹
    .fly Ironforge
    .zone Ironforge >>Travel to 铁炉堡，丹莫罗
    .zoneskip Ironforge
    .skill skinning,155,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,155,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Shattrath City,56.3,36.9
    .zone Ironforge >>In Shattrath, take 将炉石使用回铁炉堡
    .skill skinning,155,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8618 >> Train Expert Skinning (150-225) from Balthus in the house in Ironforge
    .skill skinning,155,1
step
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Menethil >>Fly to 米奈希尔港，湿地
    .skill skinning,155,1
    .zoneskip Wetlands
step
    .skill skinning,155 >> Level your Skinning from 140-155 in Wetlands
    .loop 45,Wetlands,31.9,42.0,30.4,45.1,29.9,47.5,27.7,46.7,26.6,47.8,26.5,49.7,24.6,53.8,22.7,57.4,20.2,54.4,18.9,50.7
step
    #completewith next
    .goto Wetlands,9.5,59.7
    >>Ride back to Menethil
    .fly Refuge Pointe >>Fly to 避难谷地，阿拉希高地
    .zoneskip Arathi Highlands
step
    .skill skinning,185 >>Level your Skinning from 155-飞往阿拉希高地
    .loop 45,Arathi Highlands,44.9,52.8,47.0,54.9,49.7,50.6,52.4,46.0,55.2,48.3,59.4,45.1,64.4,45.4,68.6,39.1,66.8,34.3,64.3,38.0,59.6,38.4,55.5,42.9,51.3,40.4,46.5,41.1,43.3,38.7,42.0,43.4,40.7,48.4,36.2,49.8
step
    .skill skinning,205 >>Level your Skinning from 185-飞往阿拉希高地
    .loop 45,Arathi Highlands,47.2,69.9,46.8,73.0,45.7,76.4,45.6,81.2,48.2,82.6,51.1,74.4,54.1,69.9,56.6,68.0,54.9,62.9,48.7,60.6,47.2,69.9
step << Mage
    #completewith next
    .zone Ironforge >>飞往铁炉堡
    .skill skinning,230,1
step << !Mage
    .goto Arathi Highlands,45.8,46.1
    >>Return to 避难谷地，阿拉希高地
    .fly Ironforge
    .zone Ironforge >>Travel to 铁炉堡，丹莫罗
    .zoneskip Ironforge
    .skill skinning,230,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,230,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Shattrath City,56.3,36.9
    .zone Ironforge >>In Shattrath, take 将炉石使用回铁炉堡
    .skill skinning,230,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 10768 >> Train Artisan Skinning (225-300) from Balthus in the house in Ironforge
    .skill skinning,230,1
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>飞往塞拉摩
    .skill skinning,230,1
step << !Mage
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Menethil >>Fly to Menethil Harbor. Alternatively, pay a mage for a 飞往塞拉摩
    .skill skinning,230,1
    .zoneskip Dustwallow Marsh
    .zoneskip Feralas
step << !Mage
    .goto Wetlands,5.0,63.5
    .zone Dustwallow Marsh >> Take the Boat to Dustwallow Marsh (Theramore)
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3
    .fly Thalanaar >>Fly to 萨兰纳尔，千针石林
    .skill skinning,230,1
    .zoneskip Feralas
step
    .skill skinning,230 >> Level your Skinning from 205-230 in Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>消灭那些试图阻止仪式的 Yetis in the cave or the Hippogryphs outside,then skin them
    .skill skinning,260 >> Level your Skinning from 230-260 in Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>消灭那些试图阻止仪式的 Yetis in the cave or the beasts outside,then skin them
    .skill skinning,280 >> Level your Skinning from 260-280 in Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>飞往塞拉摩
    .skill skinning,300,1
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3 << Mage
    .goto Feralas,30.2,43.2 << !Mage
    >>前往暴风城大教堂内，与 Feathermoon Stronghold << !Mage
    .fly Marshal's Refuge >>Fly to 马绍尔营地，安戈洛环形山
    .skill skinning,300,1
    .zoneskip Un'Goro Crater
step
    .skill skinning,300 >> Level your Skinning from 280-300 in Un'Goro Crater
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Teleport to Shattrath City
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step
    #completewith Jelena
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >>Fly to 荣耀堡，地狱火半岛
    .skill skinning,330,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.7,63.8
    .zone Hellfire Peninsula >>Fly to Honor 59-61 地狱火半岛 on your flying mount
    .skill skinning,330,1
    .skill riding,<300,1
step
    #label Jelena
    .goto Hellfire Peninsula,54.9,63.6,12,0
    .goto Hellfire Peninsula,54.5,63.2
    .train 32678 >> Train Master Skinning (300-375) from Jelena in the Inn in Honor Hold
    .skill skinning,305,1
step
    >>击杀 Starving Helboars,then skin them
    .skill skinning,305 >>Level your Skinning from 300-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>击杀 Deranged Helboars,then skin them
    .skill skinning,310 >>Level your Skinning from 305-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>击杀 Razorfang Hatchlings 和 Razorfang Ravagers,then skin them
    .skill skinning,330 >>Level your Skinning from 310-59-61 地狱火半岛
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Teleport to Shattrath City
    .skill skinning,375,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >>Hearth to 沙塔斯城，塔拉多
    .skill skinning,375,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Fly to Nagrand on your flying mount
    .skill skinning,375,1
step
    >>击杀 Talbuks 和 Clefthoofs,then skin them
    .skill skinning,375 >> Level your Skinning from 330-375 in Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step
    +Congratulations on reaching 375 Skinning!
]])
