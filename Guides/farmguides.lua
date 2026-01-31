if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Nagrand
#name Mining & Herbalism1
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Nagrand,50,50
    .zone Nagrand >> Head to Nagrand
step
    #hidewindow
    +test
    .loop @20,Nagrand,72.3,79.8,64.5,69.6,61.4,75.3,56.3,65.8,58.2,78.9,52.5,80.2,47.9,78.2,50.3,60.7,49.3,51.5,42.8,51.3,36.1,58.9,44.3,65.6,40.4,82.6,33.6,81.0,29.6,79.2,27.4,73.4,28.7,62.8,24.9,52.8,19.0,50.5,21.6,45.2,25.5,43.8,22.5,39.8,18.7,38.7,8.4,45.4,7.1,40.3,10.5,37.2,14.1,38.2,13.1,35.8,27.8,30.1,24.0,26.9,27.2,19.4,32.9,26.4,36.4,18.1,41.2,22.6,36.3,31.7,39.5,34.4,48.9,19.6,54.7,23.3,47.6,43.0,54.3,48.0,59.9,46.2,66.4,35.3,71.4,44.5,70.3,55.9,75.0,63.0,72.3,79.8
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Nagrand

#name Mining1
#displayname Mining
step
    #sticky
    .waypoint Nagrand,50,50
    .zone Nagrand >> Head to Nagrand
step
    #hidewindow
    +test
    .loop @20,Nagrand,70.8,76.0,77.7,59.9,71.6,60.3,70.6,52.1,72.2,43.4,66.1,34.7,68.0,50.3,61.2,55.5,56.9,53.2,56.4,57.9,48.4,50.9,51.5,39.8,50.3,24.7,46.1,20.7,38.9,22.4,45.3,45.8,42.7,49.2,39.5,44.8,37.8,29.6,31.7,28.3,25.6,15.0,27.1,23.6,23.2,29.1,8.0,40.4,9.9,43.7,23.4,48.1,21.0,53.5,28.0,65.1,29.9,71.0,25.4,71.8,28.9,80.8,40.4,83.0,43.1,76.3,43.7,64.1,48.6,79.4,50.7,67.2,57.2,63.3,69.0,81.5,70.8,76.0
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Nagrand

#name Herbalism1
#displayname Herbalism
step
    #sticky
    .waypoint Nagrand,50,50
    .zone Nagrand >> Head to Nagrand
step
    #hidewindow
    +test
    .loop @20,Nagrand,72.3,79.8,64.5,69.6,61.9,73.5,56.6,66.3,59.4,81.5,52.5,80.2,48.4,73.3,50.3,60.7,49.3,51.5,42.8,51.3,36.3,59.2,44.3,65.6,40.5,81.7,33.6,81.0,29.6,79.2,27.4,73.4,28.7,62.8,24.9,52.8,19.0,50.5,21.6,45.2,25.5,43.8,22.5,39.8,18.7,38.7,9.0,44.5,7.1,40.3,10.5,37.2,14.1,38.2,12.1,34.5,27.8,30.1,25.2,27.1,27.2,19.4,32.9,26.4,36.0,19.9,41.2,22.6,36.3,31.7,39.5,34.4,49.3,21.0,54.7,23.3,47.6,43.0,54.3,48.0,59.9,46.2,66.4,39.4,71.7,42.9,70.4,58.6,75.0,63.0,72.3,79.8
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Netherstorm
#name Mining & Herbalism2
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Netherstorm,50,50
    .zone Netherstorm >> Head to Netherstorm
step
    #hidewindow
    +test
    .loop @20,Netherstorm,22.0,76.6,20.8,67.2,26.9,62.7,26.9,53.2,34.5,51.6,30.6,43.1,23.4,42.1,24.3,35.4,29.6,36.4,36.9,39.7,40.1,36.0,42.6,38.9,46.4,38.9,47.7,34.5,44.6,27.4,39.1,25.6,36.6,28.0,35.4,22.9,29.4,17.7,29.3,14.2,30.8,13.6,38.2,19.7,43.2,19.7,41.2,15.4,45.1,15.7,46.5,9.6,48.6,17.6,49.5,23.8,53.0,25.2,52.9,21.0,55.6,19.7,61.7,32.0,65.5,32.3,64.2,37.0,65.9,39.3,69.3,36.0,72.9,36.9,73.0,43.6,69.1,46.6,68.0,42.2,63.9,43.0,62.1,49.8,55.9,38.8,54.3,42.9,57.1,47.6,50.7,54.6,48.0,47.6,42.3,51.4,40.6,54.4,44.5,56.6,47.3,60.7,48.1,64.4,49.9,60.3,53.2,61.1,56.9,59.0,66.4,60.2,63.3,63.7,58.8,62.8,51.1,69.8,53.0,77.2,61.1,79.5,59.0,82.5,59.8,87.1,57.5,88.7,53.3,82.9,48.2,85.0,44.6,72.7,34.5,56.4,34.8,62.7,33.9,73.5,30.3,78.6,29.9,71.,27.8,70.7,22.0,76.6
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Netherstorm
#name Mining2
#displayname Mining
step
    #sticky
    .waypoint Netherstorm,50,50
    .zone Netherstorm >> Head to Netherstorm
step
    #hidewindow
    +test
    .loop @20,Netherstorm,57.6,88.2,61.1,80.1,55.5,68.0,61.7,70.4,66.3,60.6,62.0,59.3,60.6,60.3,54.8,58.7,48.8,63.4,42.4,54.5,48.2,47.0,49.7,57.4,51.7,53.0,55.1,44.6,54.6,41.7,57.3,37.7,59.3,38.2,60.5,42.5,59.2,48.9,63.4,46.1,66.3,47.9,69.5,44.2,72.8,41.7,71.9,36.7,65.3,39.1,64.3,37.1,64.7,31.5,54.2,26.4,56.0,20.4,52.4,21.4,49.1,17.7,47.3,13.4,44.7,12.5,42.8,19.8,40.3,16.7,39.2,19.8,37.1,20.1,31.6,14.3,28.9,15.4,30.8,19.4,38.5,26.6,37.6,29.5,47.2,36.6,46.5,39.0,39.4,37.5,36.5,39.8,24.5,35.1,24.4,41.4,29.4,42.8,35.0,51.2,38.7,66.7,27.9,53.1,26.8,62.6,20.5,67.4,20.6,73.1,27.0,78.7,29.3,78.1,29.9,72.4,33.2,74.6,35.5,74.9,37.9,78.0,41.6,74.3,48.5,78.7,48.8,87.1,52.7,81.5,57.6,88.2
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Netherstorm
#name Herbalism2
#displayname Herbalism
step
    #sticky
    .waypoint Netherstorm,50,50
    .zone Netherstorm >> Head to Netherstorm
step
    #hidewindow
    +test
    .loop @20,Netherstorm,21.8,76.1,20.6,67.5,26.8,62.6,27.1,53.5,34.0,53.6,30.6,43.1,23.8,42.3,24.7,34.9,36.8,39.0,38.5,40.6,40.0,35.9,42.9,38.8,46.4,38.9,48.4,36.1,44.6,27.4,35.6,25.3,29.2,17.4,29.2,14.6,31.1,13.5,36.4,18.2,39.1,17.8,41.3,21.2,42.8,18.1,45.4,18.3,46.4,9.8,48.1,14.1,49.8,24.3,55.1,19.2,61.5,32.0,65.1,33.6,68.9,35.7,73.0,37.0,70.9,42.8,69.0,45.3,67.5,42.0,65.4,41.0,64.2,44.8,61.9,48.8,61.3,44.6,59.9,38.7,58.1,36.4,54.3,43.0,57.2,47.9,48.5,47.7,43.9,50.8,41.5,51.7,40.6,54.6,45.1,56.6,47.3,60.8,47.3,63.3,51.6,56.3,56.6,58.8,65.9,61.1,66.8,63.2,58.5,63.4,51.7,69.4,53.0,77.2,60.0,80.2,58.9,83.5,59.7,86.4,57.8,88.6,53.3,82.9,48.5,85.2,47.4,82.3,47.6,80.1,44.8,73.4,38.3,62.2,37.0,58.8,34.0,75.2,29.5,70.4,26.9,71.1,24.3,75.1,21.8,76.1
    .openmap Netherstorm
]])


RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Terokkar Forest
#name Mining & Herbalism3
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Terokkar Forest,50,50
    .zone Terokkar Forest >> Head to Terokkar Forest
step
    #hidewindow
    +test
    .loop @20,Terokkar Forest,20.8,16.4,22.8,7.8,26.6,11.1,35.1,7.8,44.4,17.8,44.1,10.9,50.8,17.1,49.4,26.3,38.0,36.8,40.0,41.6,44.9,33.8,49.9,35.4,54.7,27.1,61.3,22.8,54.9,38.2,60.2,42.9,65.3,31.0,72.1,31.2,68.3,37.9,67.1,43.7,60.9,45.2,69.0,50.4,65.2,55.4,59.9,47.1,54.9,58.6,56.5,65.5,65.6,69.2,72.3,73.1,73.5,82.7,74.3,88.3,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.3,64.4,24.7,65.1,25.6,77.2,18.2,78.9,17.6,65.6,28.2,52.2,32.3,36.4,20.8,16.4
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Terokkar Forest
#name Mining3
#displayname Mining
step
    #sticky
    .waypoint Terokkar Forest,50,50
    .zone Terokkar Forest >> Head to Terokkar Forest
step
    #hidewindow
    +test
    .loop @20,Terokkar Forest,22.1,15.3,21.8,10.9,24.1,9.4,36.9,6.1,42.2,21.7,44.4,10.8,51.1,16.8,48.9,19.9,52.7,27.5,60.0,22.7,67.1,31.2,72.4,31.2,73.2,37.2,67.1,54.8,62.5,52.1,54.7,37.9,54.5,31.0,49.4,34.4,37.6,37.6,41.6,46.3,47.3,49.2,57.3,62.7,72.4,73.0,67.1,78.8,73.8,82.0,74.0,88.8,61.6,83.2,61.2,72.7,54.9,69.0,48.9,80.0,31.4,79.0,27.3,64.8,25.1,77.1,18.4,77.7,18.0,65.6,29.8,46.6,29.3,35.7,22.1,15.3
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Terokkar Forest
#name Herbalism3
#displayname Herbalism
step
    #sticky
    .waypoint Terokkar Forest,50,50
    .zone Terokkar Forest >> Head to Terokkar Forest
step
    #hidewindow
    +test
    .loop @20,Terokkar Forest,20.8,16.4,22.8,7.8,25.5,10.2,35.8,8.6,44.0,18.1,44.9,13.9,50.8,17.5,50.1,25.7,37.8,35.7,40.6,40.5,45.6,33.4,50.5,35.6,55.3,27.7,61.2,24.4,54.9,38.2,60.2,42.9,65.2,30.5,72.9,30.6,67.1,43.7,60.9,45.2,69.0,50.4,64.9,56.0,60.2,49.7,54.9,58.6,56.5,65.5,65.6,69.5,73.5,82.7,73.4,87.4,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.4,66.2,24.7,65.1,25.6,77.3,18.3,78.0,17.9,66.0,27.5,50.2,32.3,36.4,20.8,16.4
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Mining & Herbalism4
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Shadowmoon Valley,50,50
    .zone Shadowmoon Valley >> Head to Shadowmoon Valley
step
    #hidewindow
    +test
    .loop @20,Shadowmoon Valley,17.8,29.1,24.9,36.0,21.7,38.9,25.7,40.2,30.1,35.9,30.7,41.1,37.5,31.1,31.1,47.9,28.8,46.7,27.9,52.5,30.6,57.5,38.2,46.2,37.8,36.7,42.1,32.7,43.1,49.7,47.5,52.0,44.9,57.2,43.2,55.9,42.7,58.8,45.5,62.9,44.5,65.8,40.6,68.5,36.5,69.1,46.3,71.1,51.1,58.2,52.8,60.1,52.7,70.1,56.7,72.0,59.0,67.8,61.3,67.9,63.9,80.5,63.5,84.9,66.0,88.8,71.8,90.3,77.4,86.9,76.4,82.4,70.6,82.3,68.1,83.0,70.8,63.8,67.0,59.5,62.2,59.2,53.8,53.0,54.1,49.5,59.7,44.7,66.4,51.3,68.6,45.1,73.0,47.4,72.2,40.4,66.2,40.0,66.4,36.5,59.9,34.8,57.3,39.5,53.8,36.6,48.6,32.5,55.5,29.5,72.8,28.9,66.7,22.6,59.0,22.1,56.0,25.0,56.4,17.0,53.4,16.0,50.7,20.0,52.3,26.2,48.3,26.4,45.7,13.1,43.5,26.8,35.5,29.1,29.0,31.5,22.3,26.6,20.6,24.2,17.8,29.1
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Mining4
#displayname Mining
step
    #sticky
    .waypoint Shadowmoon Valley,50,50
    .zone Shadowmoon Valley >> Head to Shadowmoon Valley
step
    #hidewindow
    +test
    .loop @20,Shadowmoon Valley,20.9,31.7,24.2,35.1,21.5,39.0,25.6,38.7,28.7,44.3,29.3,52.7,31.9,51.3,32.9,41.4,32.1,39.1,33.4,36.1,42.1,35.9,44.7,40.0,42.7,42.2,37.9,40.9,37.8,44.1,43.,49.9,44.3,57.9,42.1,67.4,41.0,68.6,46.2,71.0,48.4,62.8,49.4,54.7,54.6,53.3,52.9,59.6,53.7,71.0,56.5,73.6,58.8,67.7,67.8,80.4,63.6,84.8,67.0,86.6,75.2,89.0,77.5,85.7,75.9,82.5,74.0,82.5,71.1,64.0,64.5,54.0,61.2,54.1,57.3,48.2,66.1,46.9,67.5,35.0,72.7,29.6,66.8,23.0,63.1,24.3,63.1,35.8,60.9,36.4,60.7,40.1,55.7,39.5,53.5,35.6,50.4,34.1,55.0,29.3,57.0,22.0,56.3,16.6,53.4,15.7,51.3,24.6,46.9,29.4,45.4,24.4,45.9,12.9,42.4,27.7,34.1,31.7,24.1,28.2,21.7,24.0,20.9,31.7
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Herbalism4
#displayname Herbalism
step
    #sticky
    .waypoint Shadowmoon Valley,50,50
    .zone Shadowmoon Valley >> Head to Shadowmoon Valley
step
    #hidewindow
    +test
    .loop @20,Shadowmoon Valley,17.8,29.1,23.0,37.0,23.0,39.7,29.9,35.3,30.4,42.1,37.5,31.1,31.7,46.3,29.3,46.0,27.9,52.5,29.7,57.3,37.2,47.2,37.7,34.4,42.5,32.1,42.8,41.1,42.3,48.0,46.2,52.6,44.9,57.3,43.6,55.6,42.7,58.9,44.2,67.4,36.9,69.1,45.2,73.4,48.0,69.8,51.1,58.2,52.7,70.1,56.7,72.0,59.9,68.7,63.9,80.5,64.1,86.3,68.2,89.7,71.8,90.3,77.6,86.7,75.6,81.7,70.6,82.3,68.1,83.0,67.7,59.8,59.1,56.5,54.8,50.4,56.6,46.7,59.7,44.7,66.8,51.7,68.1,47.4,73.0,47.4,72.2,40.4,66.2,40.0,64.9,36.1,55.1,37.6,50.7,33.0,55.5,29.5,71.5,28.0,66.6,23.4,60.3,21.0,57.7,21.7,54.0,15.6,50.7,20.0,52.3,26.2,48.3,26.4,45.7,13.4,44.6,21.4,42.7,27.4,35.5,29.1,25.1,28.2,22.3,26.6,20.6,24.6,17.8,29.1
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zangarmarsh
#name Mining & Herbalism5
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Zangarmarsh,50,50
    .zone Zangarmarsh >> Head to Zangarmarsh
step
    +Required objective, do not remove this line
    .loop @20,Zangarmarsh,77.9,91.1,86.4,86.5,82.6,82.2,84.5,79.6,82.0,69.6,81.8,59.0,89.2,38.0,85.5,26.7,84.4,42.4,81.8,44.2,78.2,39.7,81.7,34.5,79.9,28.0,70.9,33.6,69.9,43.6,60.9,32.6,49.1,29.0,40.0,31.9,34.6,16.3,31.0,21.7,19.9,15.4,19.6,4.8,15.9,14.3,14.7,29.5,11.5,38.8,8.1,51.5,11.1,65.9,16.6,57.9,18.4,70.5,25.4,54.9,31.3,66.6,27.5,38.8,36.9,34.1,37.0,62.9,57.1,69.9,70.1,69.5,67.1,78.6,76.1,90.3,77.9,91.1
    .openmap Zangarmarsh
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zangarmarsh
#name Mining5
#displayname Mining
step
    #sticky
    .waypoint Zangarmarsh,50,50
    .zone Zangarmarsh >> Head to Zangarmarsh
step
    +Required objective, do not remove this line
    .loop @20,Zangarmarsh,84.6,88.7,85.5,79.1,83.1,70.5,87.4,46.9,80.3,36.4,87.1,35.2,84.2,28.7,75.5,29.3,71.5,34.5,56.2,33.5,56.0,43.7,46.3,37.9,34.5,16.5,33.2,21.6,18.8,14.7,19.0,2.7,14.2,20.7,14.3,31.9,7.6,51.9,11.2,62.0,17.3,68.3,27.5,66.2,30.7,59.7,40.4,66.9,48.9,66.8,67.1,76.4,68.9,86.7,76.8,91.8,84.6,88.7
    .openmap Zangarmarsh
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zangarmarsh
#name Herbalism5
#displayname Herbalism
step
    #sticky
    .waypoint Zangarmarsh,50,50
    .zone Zangarmarsh >> Head to Zangarmarsh
step
    +Required objective, do not remove this line
    .loop @20,Zangarmarsh,77.9,91.1,85.0,85.2,82.6,82.2,84.5,79.6,82.0,69.6,81.8,59.0,89.4,37.6,85.7,28.8,84.4,42.4,81.8,44.2,78.2,39.7,81.7,34.5,80.3,29.8,71.6,35.6,69.9,43.6,61.0,33.9,49.0,30.6,40.0,31.9,34.8,17.7,31.0,21.7,19.9,15.4,19.6,2.4,15.9,14.3,14.7,29.5,11.5,38.8,9.1,51.7,11.1,65.9,16.6,57.9,18.4,70.5,25.4,54.9,31.3,66.6,27.5,36.6,36.9,34.1,37.5,62.3,57.1,69.9,70.1,69.5,67.1,78.6,76.1,90.3,77.9,91.1
    .openmap Zangarmarsh
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Hellfire Peninsula
#name Mining & Herbalism6
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Hellfire Peninsula,50,50
    .zone Hellfire Peninsula >> Head to Hellfire Peninsula
step
    #hidewindow
    +test
    .loop @20,Hellfire Peninsula,26.5,78.2,30.8,61.6,35.5,60.8,46.2,65.8,42.4,77.7,35.8,89.8,54.4,81.7,68.1,75.9,69.9,70.4,64.3,64.2,68.5,63.7,66.4,57.9,66.9,52.4,74.9,51.6,73.7,38.4,68.0,45.1,66.9,32.3,65.6,19.5,57.5,20.4,50.6,27.6,27.2,34.0,32.9,43.4,22.1,44.6,14.6,36.8,10.9,44.8,11.5,56.9,15.0,62.3,22.4,53.4,22.8,71.1,26.5,70.8,26.5,78.2
    .openmap Hellfire Peninsula
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Hellfire Peninsula
#name Herbalism6
#displayname Herbalism
step
    #sticky
    .waypoint Hellfire Peninsula,50,50
    .zone Hellfire Peninsula >> Head to Hellfire Peninsula
step
    #hidewindow
    +test
    .loop @20,Hellfire Peninsula,27.9,80.6,31.1,61.8,43.5,63.9,43.0,72.9,38.1,87.2,45.7,85.5,49.8,69.2,62.0,68.9,67.4,77.9,65.4,58.4,72.3,62.3,80.3,79.6,73.8,59.2,66.8,55.5,67.1,52.2,71.9,51.9,73.9,40.2,66.8,43.7,66.2,21.1,63.2,19.0,51.0,23.9,49.2,36.5,45.1,41.9,49.0,47.1,59.8,47.1,61.0,53.7,52.5,54.6,48.6,58.9,42.9,56.0,37.7,42.6,41.0,30.8,35.5,29.3,27.5,36.8,31.4,48.6,24.1,44.4,20.5,40.1,18.2,46.1,14.6,36.8,12.1,55.2,13.8,61.8,17.2,53.6,22.7,54.9,22.9,65.9,27.9,80.6
    .openmap Hellfire Peninsula
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Hellfire Peninsula
#name Mining6
#displayname Mining
step
    #sticky
    .waypoint Hellfire Peninsula,50,50
    .zone Hellfire Peninsula >> Head to Hellfire Peninsula
step
    #hidewindow
    +test
    .loop @20,Hellfire Peninsula,25.7,78.9,22.5,67.6,21.6,54.2,18.3,54.2,14.7,61.2,8.1,50.1,11.8,44.1,13.0,36.9,16.5,37.2,17.6,45.8,26.5,45.6,33.6,30.7,33.2,43.3,37.0,40.6,39.0,29.2,46.6,28.8,52.2,23.8,54.4,29.5,48.0,35.7,47.4,45.1,50.8,48.4,61.2,47.1,61.5,52.3,55.1,52.0,52.2,56.2,48.5,56.5,46.0,65.4,43.6,68.3,38.0,70.1,35.2,58.4,31.3,61.2,31.0,70.8,28.4,71.7,25.7,78.9
    .openmap Hellfire Peninsula
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Mining & Herbalism7
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Blade's Edge Mountains,50,50
    .zone Blade's Edge Mountains >> Head to Blade's Edge Mountains
step
    #hidewindow
    +test
    .loop @20,Blade's Edge Mountains,29.2,84.0,27.6,81.7,29.1,77.7,27.9,74.0,30.4,69.2,29.0,61.5,31.3,60.0,32.0,50.0,29.5,47.5,32.8,42.9,37.4,40.0,34.7,31.1,36.8,27.6,49.9,20.2,51.8,16.2,55.2,16.1,53.8,12.6,59.6,9.0,60.1,13.0,62.8,13.3,63.8,10.0,68.1,10.8,73.0,10.0,72.4,22.9,73.4,27.0,70.5,30.8,71.0,36.4,63.0,28.1,57.9,40.0,63.1,45.1,67.3,42.0,74.1,40.0,73.2,42.6,66.1,48.3,63.0,51.6,66.3,55.4,68.7,67.1,71.7,65.6,75.6,66.6,75.4,69.7,77.7,74.5,74.4,75.5,69.2,72.7,66.1,76.5,60.0,78.0,64.1,70.8,62.9,60.6,52.3,73.5,50.4,69.6,42.2,63.5,39.2,71.8,38.2,77.2,36.0,75.6,29.2,84.0
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Mining7
#displayname Mining
step
    #sticky
    .waypoint Blade's Edge Mountains,50,50
    .zone Blade's Edge Mountains >> Head to Blade's Edge Mountains
step
    #hidewindow
    +test
    .loop @20,Blade's Edge Mountains,42.5,83.2,46.2,77.6,44.2,75.0,44.9,72.0,45.0,62.8,48.8,62.1,50.5,69.4,53.8,72.7,53.9,64.3,57.7,57.3,60.8,78.4,68.7,75.5,68.3,64.9,73.2,73.8,77.8,76.5,76.5,68.9,75.1,68.6,75.3,64.4,67.9,59.2,64.3,52.8,67.3,49.2,66.7,47.7,67.5,42.9,70.9,42.9,74.3,40.8,69.7,34.2,70.2,30.3,78.2,28.7,78.9,25.9,75.6,23.1,72.3,22.2,73.3,10.7,71.0,11.1,59.0,8.8,49.7,18.3,63.2,15.3,64.8,26.5,62.3,26.5,60.7,21.2,56.0,26.7,55.6,36.2,59.8,34.2,58.2,40.9,61.7,45.2,58.8,48.7,55.4,47.6,51.8,40.1,49.2,47.5,47.3,48.8,46.1,53.3,40.7,56.1,41.1,68.1,36.0,75.1,35.8,78.3,42.5,83.2
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Herbalism7
#displayname Herbalism
step
    #sticky
    .waypoint Blade's Edge Mountains,50,50
    .zone Blade's Edge Mountains >> Head to Blade's Edge Mountains
step
    #hidewindow
    +test
    .loop @20,Blade's Edge Mountains,29.5,83.7,29.5,69.6,30.1,62.9,31.3,53.3,31.1,49.1,33.1,42.3,36.2,39.5,34.7,31.1,37.8,26.5,41.6,25.6,49.9,20.2,54.5,11,62.0,11.4,64.8,10.3,72.6,12.7,72.7,26.5,71.0,36.4,63.2,28.7,58.9,40.3,63.1,45.1,69.2,41.6,66.6,48.7,64.5,51.8,65.8,56.1,69.2,68.0,73.6,66.8,75.4,68.4,76.6,76.3,68.8,74.6,61.4,77.8,60.3,73.4,63.8,71.7,63.8,66.2,62.9,60.6,57.9,60.1,52.3,73.5,41.6,63.1,38.4,72.9,37.5,73.5,37.4,76.7,29.5,83.7
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Netherstorm
#name Fel Hide_1a
#displayname Fel Hide
step
    #hidewindow
    +test
    .waypoint Netherstorm,61.7,59.3,-500
    .line Netherstorm,53.2,56.9,61.2,57.7,66.2,57.2,68.8,60.9,67.6,69.0,64.9,68.8,63.0,65.5,63.1,60.9,57.8,60.4,54.6,61.5,53.0,59.1,53.2,56.9
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Netherstorm
#name Nether Dragonscale_2a
#displayname Nether Dragonscale
step
    #hidewindow
    +test
    .waypoint Netherstorm,71.9,38.4,-240
    .line Netherstorm,71.9,45.2,73.4,44.4,75.2,37.6,74.6,34.4,68.9,33.9,69.8,37.4,70.1,41.7,71.9,45.2
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Netherstorm
#name Fel Armament_3a
#displayname Fel Armament
step
    #hidewindow
    +test
    .waypoint Netherstorm,39.2,24.2,-350
    .line Netherstorm,43.7,21.7,39.6,29.1,37.3,31.5,35.1,29.0,37.3,21.3,36.0,18.1,39.8,16.9,42.1,18.3,43.7,21.7
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Wind Scale_4a
#displayname Wind Scale
step
    #hidewindow
    +test
    .waypoint Blade's Edge Mountains,67.3,61.4,-500
    .line Blade's Edge Mountains,64.9,49.8,67.8,52.6,68.0,57.6,69.2,66.4,69.1,74.9,67.1,73.3,67.2,66.1,65.6,57.0,63.4,52.1,64.9,49.8
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Nether Dragonscale_5a
#displayname Nether Dragonscale
step
    #hidewindow
    +test
    .waypoint Blade's Edge Mountains,62.9,77.2,-300
    .line Blade's Edge Mountains,67.9,77.4,67.0,74.9,61.6,75.4,59.8,72.5,58.2,74.2,60.1,79.7,67.9,77.4
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Blades Edge Mountains
#name Crystal Infused Leather_6a
#displayname Crystal Infused Leather
step
    #hidewindow
    +test
    .waypoint Blade's Edge Mountains,29.8,59.5,-550
    .line Blade's Edge Mountains,31.2,73.2,32.2,70.4,30.8,65.0,33.0,59.3,32.7,53.4,32.1,49.2,28.1,47.9,27.9,59.0,27.1,72.9,31.2,73.2
    .openmap Blade's Edge Mountains
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Combined Primals_7a
#displayname Combined Primals
step
    #hidewindow
    +test
    .waypoint Nagrand,67.9,22.2,-275
    .line Nagrand,64.0,24.3,63.8,26.8,65.5,28.6,69.8,25.0,71.4,27.1,71.8,25.8,71.6,19.7,67.2,16.6,66.0,20.8,64.0,24.3
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Primal Water_8a
#displayname Primal Water
step
#hidewindow
    +loop1
    .waypoint Nagrand,37.6,46.8,-500
    .line Nagrand,43.6,48.2,40.7,47.6,39.7,44.4,41.3,40.2,39.9,37.9,41.2,36.6,44.8,41.6,45.4,43.7,44.7,47.4,43.6,48.2
    .openmap Nagrand

    .line Nagrand,37.1,44.5,37.2,47.1,36.3,49.5,35.3,53.1,32.4,55.0,30.4,54.2,31.0,47.7,34.0,46.7,35.2,44.0,37.1,44.5
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Thick Clefthoof Leather_9a
#displayname Thick Clefthoof Leather
step
    #sticky
    .waypoint Nagrand,50,50
    .zone Nagrand >> Head to Nagrand
step
    #hidewindow
    +area1
    .line Nagrand,43.8,24.0,41.7,27.5,45.0,32.1,48.8,34.0,48.5,39.0,50.8,37.6,53.9,32.0,53.8,28.9,51.6,29.1,50.7,26.4,48.9,25.0,46.2,27.1,44.9,24.3,43.8,24.0
    .openmap Nagrand
    .line Nagrand,52.8,50.9,55.0,52.8,56.2,50.0,60.7,48.1,63.7,43.3,60.4,38.2,57.0,42.8,55.3,43.6,53.8,46.2,52.8,50.9
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Talbuk Venison_10a
#displayname Talbuk Venison
step
    #hidewindow
    +test
    .waypoint Nagrand,51.7,25.9,-450
    .line Nagrand,54.4,31.9,54.4,29.2,53.3,25.7,55.3,24.2,57.9,23.4,58.0,20.5,55.2,20.2,52.7,21.6,50.8,19.5,50.8,24.6,48.4,27.3,46.6,27.8,46.5,32.6,54.4,31.9
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Cobra Scales_11a
#displayname Cobra Scales
step
    #hidewindow
    +test
    .waypoint Nagrand,13.2,37.1,-430
    .line Nagrand,20.4,36.9,19.8,33.4,17.6,31.6,12.1,34.8,7.2,40.2,7.5,44.5,9.9,45.6,13.6,39.4,17.5,38.9,19.6,38.3,20.4,36.9
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Primal Shadow_12a
#displayname Primal Shadow
step
    #hidewindow
    +test
    .waypoint Nagrand,36.7,70.8,-400
    .line Nagrand,34.4,62.0,40.4,62.4,42.7,66.7,43.6,72.3,40.1,78.3,36.7,79.9,31.2,75.3,30.7,66.5,34.4,62.0
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Nagrand
#name Primal Earth_13a
#displayname Primal Earth

step
    #hidewindow
    +area1
    .waypoint Nagrand,33.1,81.0,-625
    .line Nagrand,41.4,85.7,39.8,86.4,36.1,83.6,30.0,81.9,27.9,81.3,,27.0,76.9,26.3,74.2,23.6,71.9,24.6,71.1,27.0,70.9,28.4,70.3,29.1,74.4,32.8,79.3,41.0,81.4,41.9,80.5,41.4,85.7
    .openmap Nagrand
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Terokkar Forest
#name Mark of Kiljaeden_14a
#displayname Mark of Kiljaeden
step
    #hidewindow
    +test
    .waypoint Terokkar Forest,35.7,56.2,-350
    .line Terokkar Forest,29.8,54.9,31.1,56.3,32.7,55.0,33.1,52.5,31.6,51.4,30.0,52.8,29.8,54.9
    .openmap Terokkar Forest
    .line Terokkar Forest,37.3,57.8,37.9,60.4,41.0,60.3,42.4,57.6,41.4,55.7,40.0,55.5,38.0,55.2,37.2,56.8,37.3,57.8
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Terokkar Forest
#name Firewing Signet_15a
#displayname Firewing Signet
step
    #hidewindow
    +test
    .waypoint Terokkar Forest,71.2,37.3,-200
    .line Terokkar Forest,67.9,36.1,70.3,35.3,72.2,34.4,74.3,34.9,72.7,40.0,71.5,40.9,69.5,38.5,68.0,37.2,67.9,36.1
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Terokkar Forest
#name Warped Flesh_16a
#displayname Warped Flesh
step
    #hidewindow
    +test
    .waypoint Terokkar Forest,70.0,85.5,-425
    .line Terokkar Forest,64.0,82.2,62.4,83.2,62.1,85.4,64.4,86.2,65.3,87.8,68.3,87.9,69.6,90.8,75.9,90.8,77.3,79.2,75.7,79.1,74.6,87.5,70.9,88.4,70.4,85.9,66.4,84.2,64.0,82.2
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Terokkar Forest
#name Primal Water_17a
#displayname Primal Water
step
    #hidewindow
    +test
    .waypoint Terokkar Forest,65.3,75.3,-435
    .line Terokkar Forest,67.7,84.3,69.1,82.4,68.7,75.6,65.8,72.1,66.1,64.5,64.5,63.8,64.3,65.4,65.0,66.5,64.4,72.3,63.1,73.7,63.2,77.9,64.0,80.9,64.2,82.9,65.6,84.5,67.7,84.3
    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Terokkar Forest
#name Netherweb Spider Silk_18a
#displayname Netherweb Spider Silk
step
#hidewindow
    .waypoint Terokkar Forest,17.3,80,-1520
    +test
    .line Terokkar Forest,46.3,48.8,48.9,48.9,51.4,52.8,53.4,55.2,54.9,54.1,57.2,58.1,57.5,62.6,55.4,64.8,54.4,70.0,53.6,76.2,53.6,81.3,49.3,84.7,48.9,78.9,51.4,74.3,52.9,64.5,51.3,59.2,48.4,52.2,46.2,50.7,46.3,48.8

    .line Terokkar Forest,25.6,54.6,23.4,54.9,22.1,56.5,18.9,62.3,15.8,65.6,15.4,70.0,16.3,73.7,17.0,77.2,17.3,80.6,19.2,81.3,23.4,77.8,26.1,76.2,29.3,74.8,29.0,71.1,26.9,71.2,25.5,69.3,26.9,65.0,24.9,61.1,25.3,56.7,25.6,54.6

    .line Terokkar Forest,51.1,36.3,44.0,35.1,42.6,36.3,37.0,33.1,37.9,28.7,43.6,16.7,43.6,12.3,45.2,11.3,47.2,12.5,49.9,20.6,55.2,25.5,58.1,30.2,57.3,36.5,54.0,36.2,51.1,36.3

    .openmap Terokkar Forest
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Fel Armament_19a
#displayname Fel Armament
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,23.1,35.6,-225
    .line Shadowmoon Valley,20.4,34.0,22.3,29.8,23.8,30.6,26.7,33.5,26.8,36.8,25.2,40.2,24.0,42.3,21.5,41.3,20.0,38.1,20.2,35.9,20.4,34.0
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Primal Fire_20a
#displayname Primal Fire
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,47.2,45.4,-475
    .line Shadowmoon Valley,43.8,43.5,45.7,43.0,47.1,39.8,47.6,37.1,47.9,35.0,49.3,34.1,52.6,35.6,49.9,38.3,48.5,43.3,49.8,47.9,51.7,51.1,53.4,50.9,53.7,55.0,51.7,55.6,49.0,55.1,47.6,50.1,46.2,50.0,43.6,45.8,43.8,43.5
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Primal Water_21a
#displayname Primal Water
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,47.6,25.5,-375
    .line Shadowmoon Valley,44.4,28.9,44.8,26.5,46.3,22.2,50.1,21.4,51.5,25.4,50.5,26.4,48.0,29.2,46.0,29.8,44.4,28.9
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Primal Air_22a
#displayname Primal Air
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,63.7,44.2,-1175
    .line Shadowmoon Valley,58.0,59.8,61.1,59.8,61.9,61.8,63.9,61.3,65.1,61.8,66.5,57.9,64.6,56.2,64.4,53.8,62.2,64.9,59.3,65.9,61.1,68.1,59.6,71.0,57.1,73.7,54.2,67.1,53.6,63.3,55.3,60.0,58.0,59.8
    .openmap Shadowmoon Valley
    .line Shadowmoon Valley,74.5,29.5,70.9,28.8,69.3,30.1,67.6,28.8,66.8,26.8,67.8,21.9,65.4,22.5,61.0,21.5,59.7,22.3
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Arcane Tome_23a
#displayname Arcane Tome
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,69.1,50.2,-225
    .line Shadowmoon Valley,66.1,46.1,66.1,52.9,68.5,54.5,71.6,53.9,72.4,52.9,72.5,47.1,71.1,46.6,67.1,47.0,67.0,46.1,66.1,46.1
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Shadowmoon Valley
#name Wind Scale_24a
#displayname Wind Scale
step
    #hidewindow
    +test
    .waypoint Shadowmoon Valley,47.1,65.7,-350
    .line Shadowmoon Valley,50.3,59.3,51.8,60.0,51.6,61.9,49.4,64.1,48.5,66.6,48.9,71.3,46.7,73.5,44.3,73.1,43.6,70.2,43.2,67.0,44.5,63.8,46.5,63.4,48.4,59.3,50.3,59.3
    .openmap Shadowmoon Valley
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Hellfire Peninsula
#name Primal Shadow_25a
#displayname Primal Shadow
step
    #hidewindow
    +test
    .waypoint Hellfire Peninsula,78.3,70.3,-375
    .line Hellfire Peninsula,78.2,80.8,80.9,80.7,81.5,77.2,79.7,72.1,80.0,67.3,78.5,62.2,76.0,61.7,74.9,66.9,77.0,71.2,78.2,80.8
    .openmap Hellfire Peninsula
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Hellfire Peninsula
#name Primal Fire_26a
#displayname Primal Fire
step
    #hidewindow
    +test
    .waypoint Hellfire Peninsula,68.3,19.3,-350
    .line Hellfire Peninsula,63.6,20.9,65.8,21.2,68.2,20.5,67.4,16.9,64.4,15.5,61.1,16.2,57.4,17.2,56.9,23.4,61.2,24.5,63.0,22.7,63.6,20.9
    .openmap Hellfire Peninsula
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Outland Farming
#loop
#hidewindow
#subgroup Netherstorm
#name Primal Mana_27a
#displayname Primal Mana
step
    #hidewindow
    +test
    .waypoint Netherstorm,58.0,87.4,-200
    .line Netherstorm,53.8,89.9,54.9,91.4,58.5,90.9,60.4,89.7,61.9,85.1,61.6,83.5,60.5,82.7,58.1,83.9,55.2,85.8,54.2,87.8,53.8,89.9
    .openmap Netherstorm
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Un'Goro Crater
#name Herbalism8
#displayname Herbalism
step
    #sticky
    .waypoint Un'Goro Crater,50,50
    .zone Un'Goro Crater >> Head to Un'Goro Crater
step
    #hidewindow
    +test
    .loop @20,Un'Goro Crater,48.1,15.4,50.5,20.0,53.9,21.6,61.7,22.3,59.9,26.9,56.8,31.8,58.7,35.8,69.5,30.5,73.7,33.6,75.4,38.8,78.8,41.4,76.2,44.2,76.3,57.4,74.3,67.9,68.4,76.5,64.2,78.0,60.9,81.8,58.0,84.7,55.7,88.4,53.9,84.9,46.7,86.5,41.6,82.3,44.4,73.8,48.7,64.6,52.0,56.9,50.7,53.4,50.8,51.9,53.6,49.9,52.5,47.9,51.9,45.4,47.5,46.9,46.5,52.8,40.2,54.9,39.5,62.2,36.1,75.3,30.8,78.5,27.6,67.4,25.5,61.6,22.2,59.5,24.3,55.7,24.2,51.1,22.2,49.7,24.5,46.4,22.0,40.7,26.1,37.8,27.1,32.4,33.9,34.3,37.1,33.8,33.7,26.4,30.5,20.7,38.0,21.1,46.6,33.4,49.8,30.1,44.6,18.9,48.1,15.4
    .openmap Un'Goro Crater
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Un'Goro Crater
#name Mining8
#displayname Mining
step
    #sticky
    .waypoint Un'Goro Crater,50,50
    .zone Un'Goro Crater >> Head to Un'Goro Crater
step
    #hidewindow
    +test
    .loop @20,Un'Goro Crater,44.0,18.4,48.9,15.7,52.8,29.6,55.7,32.7,61.7,33.6,58.7,23.9,57.5,15.0,60.2,16.8,63.7,16.9,65.2,21.4,69.1,20.7,70.8,25.5,75.4,38.4,79.0,41.1,76.4,44.1,76.4,56.6,79.4,60.3,74.9,61.9,73.9,68.5,69.6,68.3,60.6,66.0,61.9,74.9,63.3,78.6,61.1,81.7,57.9,85.3,56.2,89.9,54.7,86.5,50.9,86.5,45.0,82.9,48.9,80.4,51.6,70.9,53.7,65.3,47.6,63.5,49.6,53.8,53.5,49.9,52.1,45.4,50.3,47.6,47.7,47.2,46.1,52.6,39.7,61.1,38.0,77.9,31.9,78.5,32.5,71.9,29.1,68.3,25.3,61.2,23.0,58.2,24.3,56.1,24.4,43.1,22.6,41.5,35.6,35.6,44.3,34.8,44.1,29.2,35.6,22.4,38.9,18.7,44.0,18.4
    .openmap Un'Goro Crater
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Un'Goro Crater
#name Mining & Herbalism8
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Un'Goro Crater,50,50
    .zone Un'Goro Crater >> Head to Un'Goro Crater
step
    #hidewindow
    +test
    .loop @20,Un'Goro Crater,44.0,18.4,48.9,15.7,50.7,19.1,52.9,31.4,58.9,35.8,62.6,32.7,58.7,23.9,54.8,13.6,56.4,10.7,60.0,18.0,63.7,16.9,65.2,21.4,69.1,20.7,70.9,28.0,69.5,30.5,73.2,32.4,75.4,38.4,79.0,41.1,76.4,44.1,76.4,56.6,79.4,60.3,74.9,61.9,73.9,68.5,69.6,68.3,60.6,66.0,60.4,72.6,63.3,78.6,61.1,81.7,57.9,85.3,56.2,89.9,54.1,85.1,50.9,86.5,45.0,82.9,48.9,80.4,51.6,70.9,53.7,65.3,47.6,63.5,49.6,53.8,53.5,49.9,52.1,45.4,50.3,47.6,47.7,47.2,46.1,52.6,39.7,61.1,38.0,77.9,31.9,78.5,32.5,71.9,29.1,68.3,25.3,61.2,23.0,58.2,24.3,56.1,24.4,43.1,22.6,41.5,35.6,35.6,44.3,34.8,44.1,29.2,35.6,22.4,38.9,18.7,44.0,18.4
    .openmap Un'Goro Crater
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Winterspring
#name Mining9
#displayname Mining
step
    #sticky
    .waypoint Winterspring,50,50
    .zone Winterspring >> Head to Winterspring
step
    #hidewindow
    +test
    .loop @20,Winterspring,58.3,33.3,55.9,27.3,51.5,24.6,48.6,11.3,48.8,8.6,55.5,13.7,60.3,17.4,62.1,21.8,65.7,19.9,64.7,25.9,65.8,29.0,65.1,33.3,67.2,35.6,68.8,38.1,66.8,39.5,66.3,54.4,65.0,58.1,65.7,60.4,62.5,66.7,61.7,70.9,62.7,74.2,59.6,75.6,60.3,78.4,62.8,78.7,64.4,79.5,64.4,79.5,62.8,78.7,60.3,78.4,61.2,82.2,62.0,83.6,59.0,83.5,59.1,87.0,57.4,88.9,55.3,84.1,53.8,84.8,53.6,86.1,53.1,86.3,52.7,88.5,51.4,89.2,53.0,84.8,55.0,79.9,56.8,79.4,58.2,72.6,57.7,68.0,61.8,70.9,62.5,66.5,62.1,63.1,58.6,61.1,56.5,53.2,55.8,49.8,57.6,47.0,57.1,43.7,53.3,44.5,48.6,43.3,45.0,44.1,45.0,37.7,48.0,37.1,51.9,38.1,53.2,38.0,58.3,33.3
    .openmap Winterspring
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Winterspring
#name Herbalism9
#displayname Herbalism
step
    #sticky
    .waypoint Winterspring,50,50
    .zone Winterspring >> Head to Winterspring
step
    #hidewindow
    +test
    .loop @20,Winterspring,58.3,33.3,55.9,27.3,51.5,24.6,48.6,11.3,48.8,8.6,55.5,13.7,60.5,14.3,60.3,17.4,58.8,19.7,54.1,17.5,59.5,24.7,60.5,23.4,65.8,20.2,66.4,21.7,64.6,25.9,65.7,29.1,67.4,29.8,68.4,34.9,67.2,35.9,69.0,37.9,66.8,39.6,64.6,39.2,66.8,44.7,63.2,46.6,64.5,50.8,66.9,53.8,65.0,58.2,65.7,60.4,64.9,64.3,62.5,67.2,61.6,71.7,62.8,72.9,64.4,74.0,60.7,74.5,59.2,73.4,57.7,69.7,61.6,71.7,62.5,67.2,61.0,64.6,58.7,61.4,56.5,53.4,60.5,55.4,59.8,47.6,58.1,46.3,59.3,44.5,56.4,46.7,54.0,45.4,50.5,44.1,46.2,44.4,41.9,44.2,35.2,44.6,32.0,44.3,30.6,45.5,30.9,36.6,34.0,36.6,33.5,38.8,36.4,41.5,39.0,36.2,41.3,35.6,44.1,37.2,47.6,36.5,52.6,38.2,57.1,37.2,57.0,34.8,58.3,33.3
    .openmap Winterspring
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Azeroth Farming
#loop
#hidewindow
#subgroup Winterspring
#name Mining & Herbalism9
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Winterspring,50,50
    .zone Winterspring >> Head to Winterspring
step
    #hidewindow
    +test
    .loop @20,Winterspring,58.3,33.3,55.9,27.3,51.5,24.6,48.6,11.3,48.8,8.6,55.5,13.7,60.5,14.3,60.3,17.4,58.8,19.7,60.5,23.4,65.8,20.2,66.4,21.7,64.6,25.9,65.7,29.1,67.4,29.8,68.4,34.9,67.2,35.9,69.0,37.9,66.8,39.6,64.6,39.2,66.8,44.7,66.6,54.1,65.0,58.2,65.7,60.4,62.5,66.7,61.7,70.9,62.7,74.2,59.6,75.6,60.3,78.4,62.8,78.7,64.4,79.5,64.4,79.5,62.8,78.7,60.3,78.4,61.2,82.2,62.0,83.6,59.0,83.5,59.1,87.0,57.4,88.9,55.3,84.1,53.8,84.8,53.6,86.1,53.1,86.3,52.7,88.5,51.4,89.2,53.0,84.8,55.0,79.9,56.8,79.4,58.2,72.6,57.7,68.0,61.8,70.9,62.5,66.5,62.1,63.1,58.6,61.1,60.5,56.2,61.0,51.7,63.4,50.4,62.5,47.6,57.6,47.0,57.1,43.7,53.3,44.5,48.6,43.3,45.0,44.1,45.0,37.7,48.0,37.1,51.9,38.1,53.2,38.0,58.3,33.3
    .openmap Winterspring
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Borean Tundra
#name Eternal Water (Frozen Elemental)_28a
#displayname Eternal Water (Frozen Elemental)
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,99.0,42.0,97.2,36.1,94.2,35.8,91.2,40.7,86.9,42.8,82.9,45.0,83.6,48.1,85.3,48.9,88.4,47.1,91.9,43.2,96.7,43.9,99.0,42.0
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Borean Tundra
#name Eternal Water (Steam Rager)_29a
#displayname Eternal Water (Steam Rager)
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,76.2,33.1,74.2,27.7,73.2,23.8,70.6,21.3,68.0,22.7,68.6,28.4,70.6,31.9,71.5,37.0,70.9,39.9,72.9,42.1,75.2,39.6,76.2,33.1
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Borean Tundra
#name Eternal Water (Boiling Spirit)_30a
#displayname Eternal Water (Boiling Spirit)
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,46.9,16.6,48.6,12.8,46.4,10.5,45.0,11.1,45.6,16.4,46.9,16.6
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Borean Tundra
#name Eternal Fire (Boiling Spirit)_31a
#displayname Eternal Fire (Boiling Spirit)
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,47.3,16.4,49.4,18.3,50.9,15.2,49.5,12.7,47.0,11.9,47.3,16.4
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Borean Tundra
#name Eternal Air (Enraged Tempest)_32a
#displayname Eternal Air (Enraged Tempest)
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,44.4,12.2,46.8,11.2,46.7,7.2,45.1,5.8,41.8,8.2,42.2,10.8,44.4,12.2
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup Borean Tundra
#name Rhino Meat & Borean Leather_33a
#displayname Rhino Meat & Borean Leather
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +area1
    .loop @20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .openmap Borean Tundra
    #hidewindow
    +area2
    .loop @20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup Sholazar Basin
#name Chilled Meat & Sholazar Basin_34a
#displayname Chilled Meat & Sholazar Basin
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Borean Tundra >> Head to Sholazar Basin
step
    #hidewindow
    +area1
    .loop @20,Sholazar Basin,20.6,62.6,22.1,75.6,27.8,79.8,30.2,70.5,32.8,65.7,27.2,64.5,24.9,60.8,29.6,55.9,33.4,41.7,31.5,36.4,26.2,45.0,22.7,50.5,20.6,62.6
    .openmap Sholazar Basin
    #hidewindow
    +area2
    .loop @20,Sholazar Basin,56.8,81.0,59.4,74.2,64.4,70.1,57.7,65.5,55.0,76.5,56.8,81.0
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Sholazar Basin
#name Eternal Earth (Lifeblood Elemental)_35a
#displayname Eternal Earth (Lifeblood Elemental)
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,69.1,60.2,71.9,62.1,74.7,59.7,75.5,56.7,73.5,53.9,67.9,53.5,69.1,60.2
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Sholazar Basin
#name Eternal Earth (Sholazar Guardian)_36a
#displayname Eternal Earth (Sholazar Guardian)
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,80.5,54.4,84.3,53.6,
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup Sholazar Basin
#name Chunk o' Mammoth & Borean Leather_37a
#displayname Chunk o' Mammoth & Borean Leather
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,58.6,38.6,56.5,30.1,51.3,28.7,39.2,26.5,36.4,27.8,36.3,32.4,46.9,44.5,54.0,44.8,55.1,38.4,58.6,38.6,
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Sholazar Basin
#name Eternal Water & Air (Storm Revenant & Aqueous Spirit)_38a
#displayname Eternal Water & Air (Storm Revenant & Aqueous Spirit)
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,32.2,30.7,30.4,34.8,26.3,40.7,24.4,45.1,20.9,48.6,20.0,47.1,22.0,43.5,21.9,33.7,26.1,30.3,30.6,28.9,32.2,30.7
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Dragonblight
#name Eternal Water (Crystalline Ice Elemental)_39a
#displayname Eternal Water (Crystalline Ice Elemental)
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,48.4,20.0,49.0,21.9,53.3,21.1,53.4,17.5,50.4,15.7,46.8,15.2,46.6,19.1,48.4,20.0
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Dragonblight
#name Eternal Shadow (Deathbringer Revenant)_40a
#displayname Eternal Shadow (Deathbringer Revenant)
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,74.3,23.6,72.9,20.1,75.4,19.0,76.2,20.0,75.9,21.1,74.3,23.6
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Dragonblight
#name Eternal Water (Ice Revenant)_41a
#displayname Eternal Water (Ice Revenant)
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,66.0,51.9,68.4,50.3,68.9,52.7,68.1,56.2,66.9,56.4,66.2,54.2,66.0,51.9
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Grizzly Hills
#name Eternal Earth (Runic Battle Golem)_42a
#displayname Eternal Earth (Runic Battle Golem)
step
    #sticky
    .waypoint Grizzly Hills,50,50
    .zone Grizzly Hills >> Head to Grizzly Hills
step
    #hidewindow
    +test
    .loop @20,Grizzly Hills,62.8,25.8,62.1,23.0,63.0,19.3,64.7,18.4,66.2,20.1,67.3,24.2,64.0,28.2,62.7,27.4,62.8,25.8
    .openmap Grizzly Hills
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Grizzly Hills
#name Eternal Air (Lightning Sentry)_43a
#displayname Eternal Air (Lightning Sentry)
step
    #sticky
    .waypoint Grizzly Hills,50,50
    .zone Grizzly Hills >> Head to Grizzly Hills
step
    #hidewindow
    +test
    .loop @20,Grizzly Hills,75.7,49.9,78.2,51.5,81.1,56.6,80.8,59.6,76.7,63.6,71.9,62.7,71.9,55.7,73.4,50.7,75.7,49.9
    .openmap Grizzly Hills
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Howling Fjord
#name Eternal Earth (Iron Rune Sentinel)_44a
#displayname Eternal Earth (Iron Rune Sentinel)
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,70.8,31.6,69.0,30.4,65.8,29.1,66.3,24.4,69.8,20.9,72.5,17.8,74.7,24.2,70.8,31.6
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Howling Fjord
#name Eternal Earth (Iron Rune Golem)_45a
#displayname Eternal Earth (Iron Rune Golem)
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,73.5,70.5,73.2,69.6,71.8,70.1,71.2,69.6,70.9,71.5,71.4,72.4,
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Howling Fjord
#name Eternal Water (Ice Elemental)_46a
#displayname Eternal Water (Ice Elemental)
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,60.7,20.0,62.5,20.2,64.1,22.0,64.0,24.3,63.0,26.3,60.2,24.8,58.8,22.5,59.0,19.5,60.7,20.0
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Howling Fjord
#name Eternal Water (Iceshard Elemental)_47a
#displayname Eternal Water (Iceshard Elemental)
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,57.4,9.1,59.1,9.1,60.2,11.7,58.2,15.0,53.8,12.3,51.1,5.8,50.4,1.6,56.5,1.8,56.3,8.0,57.4,9.1
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Howling Fjord
#name Eternal Life (Thornvine Creeper)_48a
#displayname Eternal Life (Thornvine Creeper)
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,55.8,17.1,55.7,19.6,52.1,20.2,51.6,16.6,52.4,14.0,55.3,15.3,55.8,17.1
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Zul'Drak
#name Eternal Water (Crazed Water Spirit)_49a
#displayname Eternal Water (Crazed Water Spirit)
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,43.2,84.7,37.5,75.7,41.2,70.5,47.0,80.1,45.5,83.3,43.2,84.7
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup Zul'Drak
#name Iceweb Spider Silk & Borean Leather_50a
#displayname Iceweb Spider Silk & Borean Leather
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Zul'Drak
#name Eternal Water (Frozen Earth)_51a
#displayname Eternal Water (Frozen Earth)
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,52.2,56.7,48.7,49.1,48.8,42.1,57.2,42.1,59.5,49.8,54.7,57.3,52.2,56.7
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Zul'Drak
#name Eternal Earth (Guardian of Zum'Rhuk)_52a
#displayname Eternal Earth (Guardian of Zum'Rhuk)
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,59.3,49.3,56.5,44.7,59.6,39.8,62.7,44.3,59.3,49.3
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup The Storm Peaks
#name Chunk o' Mammoth & Borean Leather_53a
#displayname Chunk o' Mammoth & Borean Leather
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Cooking & Skinning
#loop
#hidewindow
#subgroup The Storm Peaks
#name Worm Meat & Borean Leather_54a
#displayname Worm Meat & Borean Leather
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,46.7,55.3,49.1,52.5,47.7,50.8,47.1,48.7,48.5,48.2,48.1,46.5,47.4,46.1,
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Fire (Seething Revenant)_55a
#displayname Eternal Fire (Seething Revenant)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,68.8,62.6,68.7,57.4,70.8,55.5,71.7,56.3,72.2,58.8,72.8,61.8,77.4,61.7,77.9,62.8,76.2,64.4,67.8,63.7,68.8,62.6
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Earth (Brittle Revenant)_56a
#displayname Eternal Earth (Brittle Revenant)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,68.8,62.6,68.7,57.4,70.8,55.5,71.5,58.4,71.5,61.1,72.7,63.4,70.5,63.1,68.8,62.6
    .openmap The Storm Peaks
]])


RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Fire (Wailing Winds)_57a
#displayname Eternal Fire (Wailing Winds)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,62.5,41.5,63.2,39.6
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Air (Scion of Storm)_58a
#displayname Eternal Air (Scion of Storm)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,66.1,39.2,69.5,39.8,70.8,42.2,68.2,46.0,66.7,45.5,65.4,42.0,66.1,39.2
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Water (Icebound Revenant)_59a
#displayname Eternal Water (Icebound Revenant)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,42.5,61.1,41.3,60.6,40.7,62.9,41.1,64.3,43.2,66.9,44.8,64.9,42.5,61.1
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup The Storm Peaks
#name Eternal Water (Stormrider)_60a
#displayname Eternal Water (Stormrider)
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,34.1,47.3,31.6,50.3,28.8,52.3,27.7,50.4,25.7,41.6,27.4,40.3,28.4,42.4,28.9,46.8,32.3,46.9,33.5,46.4,34.1,47.3
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Icecrown
#name Frostweave Cloth (Converted Hero)_61a
#displayname Frostweave Cloth (Converted Hero)
step
    #sticky
    .waypoint Icecrown,50,50
    .zone Icecrown >> Head to Icecrown
step
    #hidewindow
    +test
    .loop @20, Icecrown,40.9,46.6,48.3,50.2,48.1,57.7,40.9,58.6,39.0,58.6,38.6,50.6,40.9,46.6
    .openmap Icecrown
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Shadow (Wandering Shadow)_62a
#displayname Eternal Shadow (Wandering Shadow)
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20, Wintergrasp,22.7,45.1,21.7,52.0,20.4,63.7,16.3,63.9,9.1,54.0,20.1,36.3,22.7,45.1
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Borean Tundra
#name Herbalism10
#displayname Herbalism
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,77.0,30.1,77.5,35.8,75.5,41.7,69.0,41.8,64.5,39.8,60.7,42.5,61.6,58.4,57.4,48.8,49.8,69.5,49.2,74.9,46.2,72.2,32.8,63.5,32.5,54.3,44.0,43.9,52.7,49.0,52.7,41.0,58.0,40.4,60.1,32.5,54.9,27.9,48.4,23.2,50.0,20.0,58.1,18.7,61.8,14.3,66.0,16.1,73.4,25.9,70.1,31.0,72.6,34.2,77.0,30.1
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Borean Tundra
#name Mining10
#displayname Mining
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,91.1,33.6,87.8,44.7,78.9,44.7,78.9,30.0,73.4,32.7,72.6,28.0,68.2,25.5,69.3,31.5,64.1,33.4,61.7,37.7,66.3,38.8,72.6,45.3,66.0,46.6,59.6,59.4,56.6,57.8,52.8,73.2,49.3,69.4,50.6,57.1,43.1,70.4,34.1,67.0,29.5,56.5,49.2,49.1,52.3,35.9,50.0,33.3,41.7,41.6,23.8,33.6,22.7,28.9,25.0,22.0,30.4,22.3,33.2,27.6,39.9,20.0,44.2,21.3,41.9,13.7,48.7,15.3,55.5,11.8,60.0,11.7,59.4,19.2,61.1,22.3,65.9,16.6,74.2,17.1,78.0,21.3,84.1,32.3,91.1,33.6
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Borean Tundra
#name Mining & Herbalism10
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Borean Tundra,50,50
    .zone Borean Tundra >> Head to Borean Tundra
step
    #hidewindow
    +test
    .loop @20,Borean Tundra,91.1,33.6,87.8,44.7,79.4,48.5,77.4,42.3,78.1,30.5,74.0,26.6,72.2,31.1,71.8,39.0,63.2,32.3,58.8,40.7,66.2,40.5,72.9,44.0,66.3,46.9,62.3,46.1,60.5,60.4,57.3,49.8,55.6,57.7,53.5,64.2,51.0,64.9,53.4,72.3,48.9,75.4,46.5,72.7,50.0,55.3,45.5,61.5,42.2,74.6,38.3,68.9,31.1,62.2,29.3,55.8,35.6,53.5,37.3,47.9,49.8,49.6,53.7,43.0,49.8,42.8,52.5,34.6,49.0,33.5,44.4,41.6,40.9,43.3,23.8,33.6,22.7,28.9,25.0,22.0,30.4,22.3,33.2,27.6,46.4,21.9,42.3,13.5,44.5,8.3,48.9,12.1,48.7,15.3,49.4,22.0,55.5,11.8,60.0,11.7,63.4,15.8,61.1,20.4,59.2,28.1,74.2,17.1,78.0,21.3,84.1,32.3,91.1,33.6
    .openmap Borean Tundra
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Sholazar Basin
#name Herbalism11
#displayname Herbalism
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,70.1,68.4,67.1,70.9,65.7,75.3,58.3,77.7,60.9,84.4,54.4,85.7,48.6,83.5,48.1,71.7,47.8,65.8,49.6,52.4,46.4,51.7,45.1,56.3,42.1,58.0,40.9,64.3,42.2,83.2,33.5,83.1,27.2,80.1,26.6,72.8,34.2,66.3,33.8,59.8,22.2,59.2,23.1,48.1,28.6,52.7,30.1,44.5,35.4,45.0,33.4,35.1,41.4,22.8,58.3,27.8,62.1,35.0,56.1,35.7,57.3,42.3,59.2,47.0,56.7,55.9,54.2,61.5,61.7,67.2,70.1,68.4
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Sholazar Basin
#name Mining11
#displayname Mining
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,77.7,56.8,76.3,65.9,64.0,81.0,60.2,80.3,59.7,87.0,54.0,88.3,59.3,66.8,53.8,64.0,47.7,60.4,45.9,63.5,50.2,78.8,48.5,87.0,40.3,87.1,37.4,83.7,40.4,76.5,36.6,69.1,32.2,75.0,31.8,80.2,32.2,83.6,22.8,82.4,20.8,70.3,23.5,52.8,25.8,47.2,31.9,59.5,36.3,57.5,39.5,51.2,31.4,37.9,35.2,32.8,37.6,37.0,40.8,38.4,43.1,35.8,49.7,43.3,53.5,38.7,51.0,31.6,43.6,22.3,58.9,25.0,59.0,29.4,62.9,31.8,67.2,42.9,61.3,50.4,64.2,53.8,67.3,50.7,67.8,55.2,74.2,55.5,77.7,56.8
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Sholazar Basin
#name Mining & Herbalism11
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Sholazar Basin,50,50
    .zone Sholazar Basin >> Head to Sholazar Basin
step
    #hidewindow
    +test
    .loop @20,Sholazar Basin,79.2,52.4,76.3,65.9,71.5,72.1,65.2,71.0,65.9,78.9,59.7,87.0,54.0,88.3,59.3,66.8,53.8,64.0,47.7,60.4,42.9,60.6,42.6,65.4,47.8,67.6,50.9,72.8,47.9,78.1,48.5,87.0,40.3,87.1,37.4,83.7,40.4,76.5,36.6,69.1,32.2,75.0,31.8,80.2,32.2,83.6,22.8,82.4,20.8,70.3,23.5,52.8,25.8,47.2,29.6,52.7,30.4,62.5,34.5,62.6,33.7,57.7,36.3,57.5,39.5,51.2,35.4,44.9,29.5,45.3,31.4,37.9,35.2,32.8,37.6,37.0,40.8,38.4,43.1,35.8,49.7,43.3,53.5,38.7,51.0,31.6,43.6,22.3,58.9,25.0,59.0,29.4,62.9,31.8,67.2,42.9,61.3,50.4,57.9,50.5,60.6,55.0,64.2,53.8,67.3,50.7,67.8,55.2,74.2,55.5,76.4,48.5,79.2,52.4
    .openmap Sholazar Basin
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Dragonblight
#name Herbalism12
#displayname Herbalism
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,16.1,47.9,14.8,56.8,19.3,55.3,23.2,57.2,29.9,60.6,34.2,59.6,35.0,73.0,38.5,74.5,48.5,70.4,54.9,70.9,49.4,63.2,43.8,65.6,45.7,59.9,41.2,55.8,46.3,50.0,43.4,47.4,43.3,35.1,30.5,45.7,29.0,52.8,24.2,52.0,20.8,48.0,16.1,47.9
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Dragonblight
#name Mining12
#displayname Mining
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,14.3,44.0,17.8,56.5,28.5,65.8,32.8,68.8,30.0,75.3,45.8,74.0,52.3,67.2,58.8,65.2,67.9,63.2,69.0,69.7,62.3,73.5,66.2,78.3,70.9,82.9,74.1,81.1,78.7,71.5,72.1,61.6,70.8,55.3,66.3,55.3,65.0,48.9,72.7,50.1,73.2,42.0,66.7,37.2,70.8,32.0,75.5,34.0,76.2,29.1,68.7,23.5,63.5,23.4,57.4,16.9,50.4,19.1,56.6,35.1,46.9,45.0,46.2,60.2,33.7,60.8,14.3,44.0
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Dragonblight
#name Mining & Herbalism12
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Dragonblight,50,50
    .zone Dragonblight >> Head to Dragonblight
step
    #hidewindow
    +test
    .loop @20,Dragonblight,14.3,44.0,16.6,50.7,15.0,57.7,23.4,62.7,25.5,60.3,28.4,62.3,28.9,66.3,30.5,74.2,36.2,73.3,35.0,65.5,35.5,59.8,45.5,57.9,43.5,63.6,44.0,72.7,47.9,70.6,49.9,63.7,52.7,70.7,56.4,70.6,57.0,65.8,62.2,71.6,66.2,78.5,72.1,83.2,76.6,75.7,75.3,69.2,80.0,70.6,81.5,65.6,86.1,61.5,90.5,73.5,90.8,49.1,85.9,42.9,83.4,36.8,87.8,31.4,85.4,20.3,80.1,27.9,80.0,31.5,75.6,30.2,69.0,34.3,73.6,36.4,70.6,41.8,72.7,50.5,70.6,55.4,70.4,66.3,64.6,62.7,66.5,53.5,65.0,45.1,53.7,38.2,53.1,34.4,58.9,32.7,59.8,17.5,50.8,19.3,46.6,11.6,42.9,33.5,45.6,45.7,49.6,46.0,49.3,51.7,42.7,49.7,36.9,41.3,28.3,52.9,23.0,54.6,14.3,44.0
    .openmap Dragonblight
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Howling Fjord
#name Mining & Herbalism13
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,69.8,32.3,73.3,22.7,69.1,10.4,68.2,18.9,67.7,23.3,63.0,22.5,61.8,29.7,55.7,16.7,52.1,15.9,46.7,21.5,45.9,15.4,43.4,10.7,39.3,9.6,40.8,15.5,38.0,17.1,34.3,24.0,29.3,7.7,27.3,13.8,24.0,16.8,20.2,23.3,22.9,26.3,27.1,23.3,30.8,25.5,27.7,31.1,33.7,34.2,40.1,28.4,42.3,37.4,47.0,40.1,49.9,32.4,59.8,37.8,62.6,35.2,64.3,40.3,65.9,51.6,59.8,51.2,53.9,52.4,55.4,56.9,59.9,56.1,62.6,60.7,61.4,65.8,57.3,67.3,51.8,59.4,51.2,50.6,47.8,49.1,47.7,58.6,37.3,54.5,36.2,46.6,28.1,54.6,31.2,61.6,33.4,77.7,35.5,76.7,45.8,64.8,47.8,73.1,57.9,74.7,60.4,78.9,65.8,70.6,68.7,59.0,71.7,60.8,69.5,73.2,76.7,63.2,74.7,53.9,78.0,47.1,74.5,43.6,79.8,34.1,70.6,38.9,66.8,31.9,69.8,32.3
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Howling Fjord
#name Herbalism13
#displayname Herbalism
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,27.3,10.4,30.4,23.8,38.3,21.9,42.0,25.3,42.0,29.9,47.3,26.8,45.3,23.1,50.8,16.1,57.4,23.1,56.2,35.8,53.5,49.0,53.2,58.4,59.7,56.8,61.2,48.8,60.2,35.6,68.1,19.3,71.6,26.9,67.7,34.8,78.0,46.4,70.6,49.0,72.0,57.2,76.1,63.3,75.7,65.8,70.5,64.4,68.8,74.0,66.5,69.2,61.4,79.6,55.9,74.5,48.6,70.1,50.7,60.7,41.9,55.9,34.7,49.2,37.8,44.8,47.3,42.4,40.7,38.0,32.1,34.0,24.0,26.7,25.8,18.3,27.3,10.4
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Howling Fjord
#name Mining13
#displayname Mining
step
    #sticky
    .waypoint Howling Fjord,50,50
    .zone Howling Fjord >> Head to Howling Fjord
step
    #hidewindow
    +test
    .loop @20,Howling Fjord,67.6,33.6,73.3,22.7,69.1,10.4,61.1,25.2,53.5,14.9,45.9,15.4,43.4,10.7,39.3,9.6,40.8,15.5,38.0,17.1,29.3,7.7,27.3,13.8,24.0,16.8,20.2,23.3,22.9,26.3,27.1,23.3,27.7,31.1,40.1,28.4,42.3,37.4,47.0,40.1,49.9,32.4,60.7,38.2,64.3,40.3,65.9,51.6,62.0,53.8,61.4,65.8,57.3,67.3,52.4,56.6,46.3,52.1,37.3,54.5,35.4,53.1,28.1,54.6,31.2,61.6,33.4,77.7,35.5,76.7,45.8,64.8,47.8,73.1,57.9,74.7,60.4,78.9,65.8,70.6,68.7,59.0,71.7,60.8,72.8,68.6,76.7,63.2,74.7,53.9,78.0,47.1,74.5,43.6,79.8,34.1,70.9,36.2,67.6,33.6
    .openmap Howling Fjord
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Grizzly Hills
#name Herbalism14
#displayname Herbalism
step
    #sticky
    .waypoint Grizzly Hills,50,50
    .zone Grizzly Hills >> Head to Grizzly Hills
step
    #hidewindow
    +test
    .loop @20,Grizzly Hills,18.3,74.2,27.0,70.7,31.2,44.9,36.2,41.6,38.0,36.8,44.6,30.3,58.7,30.3,55.9,38.7,53.5,50.3,61.4,51.6,67.1,55.5,69.0,45.5,80.1,52.0,77.2,42.1,72.7,35.9,69.9,33.4,70.5,28.9,75.2,24.4,70.8,21.4,66.3,22.5,65.3,32.7,62.7,32.2,62.2,26.1,43.2,28.4,38.4,31.9,33.2,35.0,29.6,40.7,16.4,39.2,9.5,36.2,10.8,44.1,14.9,46.5,23.9,47.4,25.6,55.9,14.3,59.2,11.9,68.4,18.0,66.0,18.3,74.2
    .openmap Grizzly Hills
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Grizzly Hills
#name Mining14
#displayname Mining
step
    #sticky
    .waypoint Grizzly Hills,50,50
    .zone Grizzly Hills >> Head to Grizzly Hills
step
    #hidewindow
    +test
    .loop @20,Grizzly Hills,12.2,65.3,28.8,60.1,31.1,44.7,38.2,38.7,45.8,47.6,46.7,51.5,55.3,50.7,55.2,39.4,51.4,34.9,49.2,28.1,56.8,24.4,69.7,13.0,65.3,23.2,63.2,31.0,71.5,22.8,73.4,28.8,69.7,36.2,76.8,41.4,79.2,59.5,69.2,60.8,64.8,65.9,57.9,56.2,49.5,57.5,48.6,40.1,40.6,32.0,29.4,40.1,23.1,29.9,20.7,39.7,18.6,36.0,17.0,40.3,12.6,37.0,12.2,65.3
    .openmap Grizzly Hills
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Grizzly Hills
#name Mining & Herbalism14
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Grizzly Hills,50,50
    .zone Grizzly Hills >> Head to Grizzly Hills
step
    #hidewindow
    +test
    .loop @20,Grizzly Hills,12.6,64.1,18.2,65.2,18.9,74.4,25.2,72.8,31.4,45.1,38.4,37.8,45.1,49.9,52.0,50.1,55.7,52.8,56.1,49.9,54.6,46.5,54.3,38.8,49.9,37.7,46.2,31.4,55.2,24.3,52.3,18.6,58.5,20.5,68.4,8.2,70.4,13.9,65.0,18.3,65.6,23.7,57.9,30.2,66.2,30.4,70.6,22.2,72.9,28.9,67.9,38.3,68.8,46.1,74.3,44.1,76.2,40.1,79.3,50.7,79.1,60.2,68.1,62.2,66.7,54.3,61.7,50.7,62.4,61.8,58.1,57.7,47.5,56.4,44.0,59.4,41.3,31.9,29.6,39.2,23.8,39.7,24.4,33.3,22.5,28.7,17.4,40.2,10.3,35.2,12.6,46.5,19.4,46.0,24.5,50.5,25.6,55.4,21.1,58.5,13.1,52.0,12.6,64.1
    .openmap Grizzly Hills
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zul'Drak
#name Herbalism15
#displayname Herbalism
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,21.6,84.2,30.1,84.0,34.0,88.4,39.0,86.5,36.2,74.7,37.2,70.5,42.0,72.2,46.0,80.5,51.8,76.3,55.5,79.7,57.2,68.8,65.4,77.2,76.2,70.1,76.5,63.9,70.3,62.8,70.7,56.6,73.7,55.1,71.3,44.1,77.8,41.7,80.0,34.2,83.3,28.8,77.0,25.3,78.2,19.9,74.9,17.5,71.6,22.2,73.9,30.0,73.0,36.3,65.9,36.2,63.3,50.4,58.3,46.1,56.2,34.7,49.9,35.4,41.3,43.9,41.3,48.1,43.7,53.6,42.9,63.2,37.1,61.1,34.0,49.7,33.4,43.6,22.4,52.1,28.2,57.1,30.6,56.3,31.4,65.1,29.5,71.5,30.7,73.8,23.1,79.6,21.6,84.2
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zul'Drak
#name Mining15
#displayname Mining
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,60.6,33.9,60.1,37.9,50.6,38.5,43.4,44.3,37.5,44.3,33.9,45.8,31.3,42.3,22.4,50.1,23.2,53.7,21.3,56.9,15.5,59.3,11.9,72.9,21.3,74.0,23.9,70.8,23.1,64.2,27.7,68.2,30.8,60.7,31.5,54.0,36.3,52.9,36.5,61.8,37.2,70.9,31.2,78.8,31.8,83.8,38.4,83.3,40.8,81.6,44.3,82.6,46.5,78.7,44.7,75.9,49.7,71.8,52.5,67.2,53.8,72.8,60.1,81.9,61.8,79.5,60.2,72.4,61.5,61.5,56.0,49.8,53.0,49.2,56.6,43.9,70.9,49.8,74.7,47.8,73.4,36.0,69.9,27.1,60.6,33.9
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Zul'Drak
#name Mining & Herbalism15
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Zul'Drak,50,50
    .zone Zul'Drak >> Head to Zul'Drak
step
    #hidewindow
    +test
    .loop @20,Zul'Drak,61.4,35.1,55.2,38.8,53.3,34.0,52.0,39.8,57.4,49.6,54.0,53.8,53.7,49.2,47.6,40.8,45.2,36.6,42.8,43.3,38.8,43.0,42.4,49.2,34.1,46.8,33.2,41.6,30.6,43.9,30.0,55.7,25.0,48.0,22.4,49.5,22.6,55.1,15.1,59.1,13.2,70.0,11.6,73.4,11.0,80.7,16.4,77.9,20.0,77.5,22.8,69.2,23.5,64.4,28.5,65.3,29.9,70.8,31.6,61.3,36.2,55.7,39.2,60.0,36.3,63.4,36.1,71.5,40.3,71.3,37.3,75.4,32.8,70.8,30.7,75.4,26.2,77.2,20.5,85.7,31.3,83.5,32.0,87.5,39.6,85.7,37.2,81.9,39.8,79.6,43.4,83.8,46.3,81.3,45.1,76.2,49.8,78.1,51.6,74.3,48.5,72.4,53.1,67.6,56.3,78.2,53.5,82.4,61.1,81.4,59.2,76.8,61.9,73.3,57.0,65.0,60.9,58.4,59.1,55.0,71.5,49.5,74.6,48.8,72.5,35.7,83.4,29.4,79.2,26.7,76.4,18.0,69.3,25.4,70.7,31.9,61.4,35.1
    .openmap Zul'Drak
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup The Storm Peaks
#name Herbalism16
#displayname Herbalism
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to The Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,56.1,65.5,59.2,59.3,63.5,62.6,72.5,63.3,71.1,55.4,71.9,48.3,67.0,45.9,65.4,41.6,61.1,44.2,58.8,48.7,55.7,50.2,50.5,53.3,49.8,59.8,46.9,62.5,38.0,62.9,38.0,53.9,44.0,52.8,43.1,43.6,37.6,44.5,34.9,40.1,32.3,49.3,28.4,50.3,26.7,56.7,22.6,57.0,25.0,63.1,27.8,61.8,26.7,72.5,31.5,65.8,36.9,66.3,37.4,77.0,30.6,83.4,32.7,89.9,39.0,88.5,39.6,80.7,50.0,74.3,56.1,65.5
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup The Storm Peaks
#name Mining16
#displayname Mining
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to The Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,48.6,68.3,53.7,65.8,56.0,67.5,55.9,64.1,58.6,58.6,63.4,59.4,63.9,63.1,68.8,62.8,76.3,64.7,77.0,62.7,72.3,59.7,71.9,47.7,70.1,50.6,67.5,47.7,63.9,49.4,62.3,45.9,63.7,43.6,67.0,45.0,68.2,43.1,68.1,39.9,62.2,41.7,58.3,39.7,57.6,42.0,58.7,46.1,55.1,49.5,46.8,55.2,47.3,62.9,41.5,61.5,37.7,62.1,38.3,53.7,47.2,36.8,38.5,44.1,35.3,40.9,34.3,50.0,30.3,45.1,30.7,42.1,29.5,38.5,26.0,43.2,27.3,57.7,22.3,56.8,23.2,62.2,28.1,63.3,26.9,67.0,30.0,65.9,35.9,66.4,36.9,80.8,32.0,83.1,31.9,86.7,35.7,88.2,42.9,86.1,46.6,79.6,39.6,78.2,41.7,69.6,48.6,68.3
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup The Storm Peaks
#name Mining & Herbalism16
#displayname Mining & Herbalism
step
    #sticky
    .waypoint The Storm Peaks,50,50
    .zone The Storm Peaks >> Head to The Storm Peaks
step
    #hidewindow
    +test
    .loop @20,The Storm Peaks,48.6,68.3,53.7,65.8,56.0,67.5,55.9,64.1,58.6,58.6,63.4,59.4,63.9,63.1,68.8,62.8,76.3,64.7,77.0,62.7,72.3,59.7,71.9,47.7,70.1,50.6,67.5,47.7,63.9,49.4,62.3,45.9,63.7,43.6,67.0,45.0,68.2,43.1,68.1,39.9,62.2,41.7,58.3,39.7,57.6,42.0,58.7,46.1,55.1,49.5,51.6,49.3,46.8,55.2,48.8,61.8,,47.3,62.9,41.5,61.5,37.7,62.1,38.3,53.7,47.2,36.8,38.5,44.1,35.3,40.9,34.3,50.0,30.3,45.1,30.7,42.1,29.5,38.5,26.0,43.2,27.3,57.7,22.3,56.8,23.2,62.2,28.1,63.3,26.9,67.0,25.6,71.3,26.7,73.0,30.0,70.3,30.0,65.9,35.9,66.4,36.9,80.8,32.0,83.1,31.9,86.7,35.7,88.2,42.9,86.1,46.6,79.6,39.6,78.2,41.7,69.6,48.6,68.3
    .openmap The Storm Peaks
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Wintergrasp
#name Mining17
#displayname Mining
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,17.6,39.4,34.3,14.7,39.1,11.7,40.4,16.9,40.0,24.2,45.1,31.7,47.7,31.6,47.6,41.1,50.2,47.9,50.8,38.7,55.2,31.6,58.1,23.2,61.9,18.4,70.9,22.5,73.9,28.8,74.2,43.0,83.1,44.0,81.2,51.6,73.0,48.9,65.0,53.3,78.4,59.0,78.7,65.8,85.6,69.4,76.7,86.6,76.5,72.8,65.0,69.8,57.7,83.4,52.9,81.6,60.3,53.9,39.9,58.6,41.1,51.1,37.3,46.6,30.3,39.4,32.4,54.7,26.7,61.5,21.6,57.3,20.7,69.2,11.6,65.1,7.5,65.5,9.5,49.3,22.7,47.6,15.7,43.7,17.6,39.4
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Wintergrasp
#name Herbalism17
#displayname Herbalism
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,14.0,57.9,9.4,54.4,15.8,53.0,19.0,49.2,20.1,44.1,29.2,41.8,24.3,33.4,27.1,26.6,32.1,28.7,34.3,18.2,38.7,28.0,47.3,36.0,40.3,42.9,40.8,51.3,44.7,49.9,48.4,43.4,53.5,48.8,55.2,40.3,55.4,31.7,61.8,33.5,59.0,47.8,64.3,49.3,67.2,47.4,66.7,37.0,62.6,20.0,69.4,28.4,75.1,38.0,74.1,42.7,79.2,42.0,79.9,47.4,72.5,50.5,73.7,68.6,59.6,79.0,60.0,69.3,60.8,61.6,55.8,56.8,51.9,75.5,46.9,76.3,39.1,58.3,35.8,58.2,37.6,73.4,25.8,70.4,20.3,58.8,14.0,57.9
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Wintergrasp
#name Mining & Herbalism17
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,7.0,66.8,9.4,51.4,14.4,58.2,14.4,45.6,18.0,39.6,21.2,43.2,19.0,49.0,21.3,53.8,24.4,45.6,31.6,46.2,29.9,38.2,23.1,32.9,26.7,23.9,32.6,27.8,30.6,19.2,40.2,19.1,38.8,22.3,42.0,29.8,47.3,34.8,40.0,39.4,41.9,51.8,45.3,48.6,44.9,43.7,52.3,48.1,55.4,43.5,51.0,40.9,55.2,33.5,59.8,27.1,62.4,18.8,70.8,22.4,62.3,37.6,59.4,48.2,66.9,45.6,70.5,32.5,74.0,37.9,75.1,44.0,82.7,43.2,80.8,49.8,75.0,48.8,64.8,53.1,77.5,58.8,80.6,67.6,86.0,69.8,76.3,86.7,77.5,72.5,74.4,65.3,66.6,64.5,61.4,79.2,57.2,79.8,60.1,67.8,61.2,56.3,56.1,55.5,53.8,73.2,46.3,74.3,46.6,64.9,49.2,57.6,35.4,56.8,37.1,72.3,26.1,68.6,32.7,63.6,30.7,56.8,24.9,61.1,20.7,60.6,17.2,66.8,7.0,66.8
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Life_63a
#displayname Eternal Life
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,5.8,66.3,4.5,58.6,8.2,56.3,13.8,60.3,15.2,63.7,13.7,66.7,5.8,66.3
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Fire_64a
#displayname Eternal Fire
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,80.7,74.6,84.8,76.5,88.4,71.1,87.5,63.7,83.1,63.3,80.1,69.0,80.7,74.6
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Earth_65a
#displayname Eternal Earth
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,62.8,57.0,63.0,69.8,59.7,71.2,54.1,56.3,58.3,53.7,62.0,54.6,62.8,57.0
    .loop @20,Wintergrasp,62.6,46.8,63.0,51.0,58.6,50.4,54.4,43.3,58.1,29.3,65.1,30.2,65.5,33.2,60.5,34.9,60.8,43.5,62.6,46.8
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Air_66a
#displayname Eternal Air
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,77.4,86.0,77.3,75.8,70.3,72.5,62.8,80.7,64.7,89.3,62.8,80.7,57.2,79.3,54.3,82.0,49.3,83.0,42.4,82.4,34.8,72.2,30.1,71.7,26.9,72.3
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Northrend Farming
#loop
#hidewindow
#subgroup Wintergrasp
#name Eternal Water_67a
#displayname Eternal Water
step
    #sticky
    .waypoint Wintergrasp,50,50
    .zone Wintergrasp >> Head to Wintergrasp
step
    #hidewindow
    +test
    .loop @20,Wintergrasp,33.3,20.9,33.8,25.6,35.9,27.9,31.1,28.5,29.2,23.5,25.8,27.2,28.2,35.3,22.8,38.8,27.2,45.3,27.2,49.2,37.7,53.6,46.2,57.9,52.1,54.1,57.1,51.3,62.4,52.8,64.5,56.0,70.9,47.8,70.1,37.7,75.8,40.6,78.5,46.1
    .openmap Wintergrasp
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Icecrown
#name Mining18
#displayname Mining
step
    #sticky
    .waypoint Icecrown,50,50
    .zone Icecrown >> Head to Icecrown
step
    #hidewindow
    +test
    .loop @20, Icecrown,65.6,35.1,59.3,29.4,54.9,38.6,47.8,35.1,42.8,37.8,39.3,33.4,37.9,36.2,37.2,41.7,41.6,41.1,38.0,50.8,37.9,57.1,40.2,59.8,31.5,58.1,30.8,64.5,36.2,68.9,39.9,65.6,49.6,61.4,48.5,51.2,56.5,44.7,65.6,59.8,67.1,72.2,72.0,63.8,74.2,65.0,77.8,64.3,79.3,57.0,75.8,46.4,67.6,46.5,67.3,42.9,74.1,40.1,74.7,35.3,65.6,35.1
    .openmap Icecrown
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Icecrown
#name Herbalism18
#displayname Herbalism
step
    #sticky
    .waypoint Icecrown,50,50
    .zone Icecrown >> Head to Icecrown
step
    #hidewindow
    +test
    .loop @20, Icecrown,64.6,56.4,62.0,46.7,57.0,44.7,53.8,41.1,49.1,47.6,47.8,56.4,53.0,72.7,49.1,74.8,44.7,60.9,41.1,59.7,39.3,53.0,42.8,50.3,42.6,40.3,35.5,44.1,28.1,45.5,28.4,40.3,29.6,31.9,31.2,27.0,35.6,29.1,45.3,35.1,47.5,38.1,58.6,36.7,65.3,40.7,70.5,40.6,73.8,30.1,76.1,35.1,74.7,46.4,67.9,52.2,71.0,62.3,70.6,67.7,67.4,68.7,67.6,59.7,64.6,56.4
    .openmap Icecrown
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +Mining & Herbalism
#loop
#hidewindow
#subgroup Icecrown
#name Mining & Herbalism18
#displayname Mining & Herbalism
step
    #sticky
    .waypoint Icecrown,50,50
    .zone Icecrown >> Head to Icecrown
step
    #hidewindow
    +test
    .loop @20, Icecrown,65.5,39.2,73.9,23.8,76.6,38.6,68.8,42.8,71.2,47.7,74.6,47.9,69.6,55.9,70.9,62.3,77.0,58.5,79.9,63.6,71.6,67.3,67.8,69.2,66.5,57.8,60.1,46.4,56.1,42.7,47.1,51.8,48.1,65.3,52.2,74.7,49.1,74.8,45.4,65.8,44.2,59.8,38.5,59.0,36.2,70.2,31.2,62.7,32.7,55.4,37.8,55.1,41.3,46.0,42.3,39.3,40.4,32.9,38.2,36.6,38.8,41.3,35.0,45.7,28.6,45.7,28.6,37.9,31.0,27.6,33.9,26.5,45.4,34.7,49.0,38.1,56.4,37.2,59.5,30.0,63.7,33.3,63.6,38.4,65.5,39.2
    .openmap Icecrown
]])
