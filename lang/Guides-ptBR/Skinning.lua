if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group Nivelamento de Profissão
<< Horde
#name 1-450 Esfolamento (H)
#displayname 1-450 Esfolamento

step << Mage
    #completewith Thuwd
    .zone Orgrimmar >>Use o Teletransporte para Orgrimmar
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .zoneskip Orgrimmar
    .zoneskip Dalaran
    .skill skinning,75,1
step << !Mage
    #completewith Thuwd
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >>Em Dalaran, pegue o portal para Orgrimmar
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Orgrimmar,63.0,45.5,0,0
    >>Compre uma Faca de Esfolamento de Tamar ao lado de Thuwd
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Thuwd
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8613 >>Aprenda Esfolamento de Aprendiz (1-75) de Thuwd no prédio em Orgrimmar
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Durotar,45.5,12.2
    .zone Durotar >>Saia de Orgrimmar para Durotar
    .skill skinning,75,1
step
    #requires Shank
    .openmap Durotar
    .skill skinning,75 >>Suba seu Esfolamento de 1-75 em Durotar matando bestas, saqueando-as e depois esfolando-as. Pressione "M" para abrir seu mapa para ver a rota.
    .loop 45,Durotar,54.5,68.2,54.2,60.1,54.7,58.9,54.5,54.3,51.2,51.8,51.1,46.6,47.4,42.7,45.7,37.7,45.0,34.3,43.0,34.9,42.6,37.0,40.8,37.0,38.5,34.3,36.5,31.3,36.9,25.0,38.5,21.7,40.8,21.1,43.0,21.4,44.4,19.2,43.5,15.7,
step << !Mage
    .goto Orgrimmar,48.8,91.0
    .zone Orgrimmar >>Monte de volta para Orgrimmar
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Orgrimmar >>Use o Teletransporte para Orgrimmar
    .skill skinning,125,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,125,1
    .zoneskip Orgrimmar
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >>Em Dalaran, pegue o portal para Orgrimmar
    .skill skinning,125,1
step
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8617 >>Aprenda Esfolamento Profissional (75-150) de Thuwd no prédio em Orgrimmar
    .skill skinning,125,1
step
    #completewith next
    .goto Orgrimmar,45.1,63.9
    .fly Crossroads >>Voe para a Encruzilhada
    .zoneskip The Barrens
    .skill skinning,125,1
step
    >>Procure atingir pelo menos o nível 125 antes de chegar a Camp Taurajo
    .skill skinning,125 >>Suba seu Esfolamento de 75-125 nas Savanas
    .loop 45,The Barrens,51.0,31.7,51.0,35.0,50.2,36.3,49.3,38.0,49.6,39.9,49.0,42.5,50.2,45.4,49.5,47.8,46.0,51.7,45.9,53.7,46.3,56.2,
step
    .goto The Barrens,45.1,59.1
    .train 8618 >>Aprenda Esfolamento de Perito (150-225) de Dranh em Camp Taurajo
    .skill skinning,165,1
step
    .skill skinning,165 >>Suba seu Esfolamento de 125-165 nas Savanas
    .loop 45,The Barrens,46.1,59.9,46.9,63.1,46.7,65.3,46.9,68.0,45.6,71.5,45.4,74.6,45.0,77.6,47.1,79.2,46.8,82.0,44.8,85.2
step
    #completewith next
    .goto Thousand Needles,32.1,22.7
    .zone Thousand Needles >>Voe para Mil Agulhas
    .skill skinning,205,1
step
    .skill skinning,205 >>Suba seu Esfolamento de 165-205 em Mil Agulhas
    .loop 45,Thousand Needles,31.4,25.4,30.8,28.2,31.4,31.2,30.0,34.2,29.9,41.7,31.2,47.5,32.2,52.4,38.8,56.7,42.9,59.7,48.4,59.4,53.3,54.0,57.7,56.5,61.7,60.1,66.6,61.6,69.9,62.7,72.1,67.7,71.8,74.2,72.9,81.3,77.4,84.0,80.9,87.7,78.6,91.1,75.7,89.7
step
    .goto Feralas,88.8,41.4,-1
    .goto Tanaris,51.3,21.4,-1
    .zone Tanaris >>Viaje para Feralas ou Tanaris, o que for mais perto
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Tanaris,51.6,25.4
    .fly Camp Mojache >>Voe para Camp Mojache
    .skill skinning,230,1
    .zoneskip Feralas
step
    .goto Feralas,74.7,43.0,12,0
    .goto Feralas,74.5,43.0
    .train 10768 >>Aprenda Esfolamento de Artífice (225-300) de Kulleg na grande tenda em Camp Mojache
    .skill skinning,230,1
step
    .skill skinning,230 >>Suba seu Esfolamento de 205-230 em Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Mate os Yetis na caverna ou os Hippogryphs lá fora, depois esfolle-os
    .skill skinning,260 >>Suba seu Esfolamento de 230-260 em Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Mate os Yetis na caverna ou as bestas lá fora, depois esfolle-os
    .skill skinning,280 >>Suba seu Esfolamento de 260-280 em Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step
    #completewith next
    .goto Feralas,75.4,44.4
    >>Voe de volta para Camp Mojache
    .fly Marshal's Refuge >>Voe para Refúgio do Marechal
    .zoneskip Un'Goro Crater
    .skill skinning,300,1
step
    .skill skinning,300 >>Suba seu Esfolamento de 280-300 em Cratera Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >>Teleporte para Shattrath City
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.3,66.2
    .zone Shattrath City >>Em Dalaran, pegue o portal para Shattrath
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step
    #completewith Moorutu
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >>Voe até Thrallmar
    .skill skinning,305,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.3,38.6
    .zone Hellfire Peninsula >>Voe para Thrallmar em Península Fogo do Inferno em sua montaria voadora
    .skill skinning,305,1
    .skill riding,<300,1
step
    #label Moorutu
    .goto Hellfire Peninsula,56.3,38.6
    .train 32678 >>Aprenda Mestre Esfolamento (300-375) de Moorutu em Thrallmar
    .skill skinning,305,1
step
    >>Mate os Helboars Famintos, depois esfolle-os
    .skill skinning,305 >>Suba seu Esfolamento de 300-305 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Mate os Helboars Dementes, depois esfolle-os
    .skill skinning,310 >>Suba seu Esfolamento de 305-310 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Mate os Filhotes Razorfang e os Saqueadores Razorfang, depois esfolle-os
    .skill skinning,330 >>Suba seu Esfolamento de 310-330 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >>Teleporte para Shattrath City
    .skill skinning,375,1
    .zoneskip Nagrand
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >>Voe para Nagrand em sua montaria voadora
    .skill skinning,375,1
step
    >>Mate os Talbuks e os Clefthoofs, depois esfolle-os
    .skill skinning,350 >>Suba seu Esfolamento de 330-350 em Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >>Pegue o portal para Orgrimmar
    .skill skinning,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill skinning,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >>Suba na Torre do Zepelim. Pegue o zepelim para Tundra Boreana
step << Mage
    #completewith next
    .zone Dalaran >>Vá para Dalaran
    .skill skinning,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .zoneskip Shattrath City
    .skill skinning,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >>Voe para Tundra Boreana em sua montaria voadora
    .skill skinning,375,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Taunka'le Village >>Voe para Tundra Boreana (Taunka'le Village)
    .skill skinning,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tiponi
    .goto Borean Tundra,76.2,37.6
    .train 50305 >>Aprenda Grande Mestre Esfolamento (350-450) de Tiponi Stormwhisper em Taunka'le Village
    .skill skinning,375,1
step
    #label BoreanTundra
    .skill skinning,375 >>Suba seu Esfolamento de 350-375 em Tundra Boreana
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >>Vá para Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >>Voe para Zul'Drak em sua montaria voadora
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >>Voe para Zul'Drak (O Tablado Argento)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >>Suba seu Esfolamento de 375-400 em Zul'Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >>Voe para Picos Tempestuosos em sua montaria voadora
    .skill skinning 450,1
step
    .skill skinning,400 >>Suba seu Esfolamento de 400-450 em Picos Tempestuosos
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Parabéns por atingir o nível 450 em Esfolamento!
]])

RXPGuides.RegisterGuide([[
#wotlk
#group Nivelamento de Profissão
<< Alliance
#name 1-450 Esfolamento (A)
#displayname 1-450 Esfolamento

step << Mage
    #completewith Maris
    .zone Stormwind City >>Teleporte para Ventobravo
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,75,1
    .zoneskip Stormwind City
step << !Mage
    .goto Dalaran,38.9,62.6
    .zone Stormwind City >>Em Dalaran, pegue o portal para Ventobravo
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Stormwind City,71.6,62.8,0,0
    >>Compre uma Faca de Esfolamento de Jillian ao lado de Simon
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Maris
    .goto Stormwind City,72.6,62.1,12,0
    .goto Stormwind City,72.1,62.2
    .train 8613 >>Aprenda Esfolamento de Aprendiz (1-75) de Maris na casa em Ventobravo
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >>Saia de Ventobravo para Floresta de Elwynn
    .skill skinning,75,1
step
    #requires Shank
    .openmap Elwynn Forest
    .skill skinning,75 >>Suba seu Esfolamento de 1-75 em Elwynn matando javalis, saqueando-os e depois esfolando-os. Pressione "M" para abrir seu mapa para ver a rota.
	.loop 25,Elwynn Forest,32.6,83.0,31.0,85.6,32.6,87.8,33.6,85.4,32.6,83.0
step << Mage
    #completewith next
    .zone Ironforge >>Teleporte para Altaforja
    .skill skinning,125,1
step << !Mage
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    >>Retorne para Ventobravo
    .fly Ironforge
    .zone Ironforge >>Viaje para Ironforge
    .zoneskip Ironforge
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,125,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>Em Dalaran, pegue o portal para Ironforge
    .skill skinning,125,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8617 >>Aprenda Esfolamento Profissional (75-150) de Balthus no prédio em Ironforge
    .skill skinning,125,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Thelsamar >>Voe para Thelsamar
    .skill skinning,125,1
    .zoneskip Loch Modan
step
    .skill skinning,115 >>Suba seu Esfolamento de 75-115 em Loch Modan
    .loop 45,Loch Modan,34.4,53.8,37.7,52.3,41.7,54.4,44.4,64.1,49.9,69.3,55.6,66.9,63.9,63.4,59.4,62.0,63.0,57.0,64.3,48.7,62.2,38.9,59.9,36.9,59.5,29.8,58.9
step
    .skill skinning,125 >>Suba seu Esfolamento de 115-125 em Loch Modan
    .loop 45,Loch Modan,61.5,40.9,72.4,41.8,76.8,47.9,77.4,41.4,59.9,28.0,61.5,40.9
step << Mage
    #completewith next
    .zone Ironforge >>Teleporte para Altaforja
    .skill skinning,155,1
step << !Mage
    .goto Loch Modan,33.9,51.0
    >>Volte para Thelsamar
    .fly Ironforge
    .zone Ironforge >>Viaje para Ironforge
    .zoneskip Ironforge
    .skill skinning,155,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,155,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>Em Dalaran, pegue o portal para Ironforge
    .skill skinning,155,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8618 >>Treine Esfolamento de Perito (150-225) com Balthus na casa em Ironforge
    .skill skinning,155,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >>Voe para Menethil Harbor
    .skill skinning,155,1
    .zoneskip Wetlands
step
    .skill skinning,155 >>Suba seu Esfolamento de 140-155 em Pantanal
    .loop 45,Wetlands,31.9,42.0,30.4,45.1,29.9,47.5,27.7,46.7,26.6,47.8,26.5,49.7,24.6,53.8,22.7,57.4,20.2,54.4,18.9,50.7
step
    #completewith next
    .goto Wetlands,9.5,59.7
    >>Volte para Menethil
    .fly Refuge Pointe >>Voe para Refuge Pointe
    .zoneskip Arathi Highlands
step
    .skill skinning,185 >>Suba seu Esfolamento de 155-185 em Planalto Arathi
    .loop 45,Arathi Highlands,44.9,52.8,47.0,54.9,49.7,50.6,52.4,46.0,55.2,48.3,59.4,45.1,64.4,45.4,68.6,39.1,66.8,34.3,64.3,38.0,59.6,38.4,55.5,42.9,51.3,40.4,46.5,41.1,43.3,38.7,42.0,43.4,40.7,48.4,36.2,49.8
step
    .skill skinning,205 >>Suba seu Esfolamento de 185-205 em Planalto Arathi
    .loop 45,Arathi Highlands,47.2,69.9,46.8,73.0,45.7,76.4,45.6,81.2,48.2,82.6,51.1,74.4,54.1,69.9,56.6,68.0,54.9,62.9,48.7,60.6,47.2,69.9
step << Mage
    #completewith next
    .zone Ironforge >>Teleporte para Altaforja
    .skill skinning,230,1
step << !Mage
    .goto Arathi Highlands,45.8,46.1
    >>Volte para Refuge Pointe
    .fly Ironforge
    .zone Ironforge >>Viaje para Ironforge
    .zoneskip Ironforge
    .skill skinning,230,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,230,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>Em Dalaran, pegue o portal para Ironforge
    .skill skinning,230,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 10768 >>Treine Esfolamento de Artífice (225-300) com Balthus na casa em Ironforge
    .skill skinning,230,1
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>Teleporte para Theramore
    .skill skinning,230,1
step << !Mage
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >>Voe para Porto de Menethil. Alternativamente, pague um mago por um portal para Theramore
    .skill skinning,230,1
    .zoneskip Dustwallow Marsh
    .zoneskip Feralas
step << !Mage
    .goto Wetlands,5.0,63.5
    .zone Dustwallow Marsh >>Pegue o barco para Pântano Vadeoso (Theramore)
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3
    .fly Thalanaar >>Voe para Thalanaar
    .skill skinning,230,1
    .zoneskip Feralas
step
    .skill skinning,230 >>Suba seu Esfolamento de 205-230 em Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Mate os Yetis na caverna ou os Hippogryphs lá fora, depois esfolle-os
    .skill skinning,260 >>Suba seu Esfolamento de 230-260 em Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Mate os Yetis na caverna ou as bestas lá fora, depois esfolle-os
    .skill skinning,280 >>Suba seu Esfolamento de 260-280 em Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>Teleporte para Theramore
    .skill skinning,300,1
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3 << Mage
    .goto Feralas,30.2,43.2 << !Mage
    >>Voe para Fortaleza de Penhasco do Luar << !Mage
    .fly Marshal's Refuge >>Voe para Refúgio do Marechal
    .skill skinning,300,1
    .zoneskip Un'Goro Crater
step
    .skill skinning,300 >>Suba seu Esfolamento de 280-300 em Cratera Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >>Teleporte para Shattrath City
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step >> !mage
    #completewith next
    .goto Dalaran,37.2,66.4
    .zone Shattrath City >>Em Dalaran, pegue o portal para Shattrath
    .skill skinning,330.1
    .zoneskip Hellfire Peninsula
step
    #completewith Jelena
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >>Voe até a Fortaleza da Honra
    .skill skinning,330,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.7,63.8
    .zone Hellfire Peninsula >>Voe para Forte da Honra na Península Fogo do Inferno em sua montaria voadora
    .skill skinning,330,1
    .skill riding,<300,1
step
    #label Jelena
    .goto Hellfire Peninsula,54.9,63.6,12,0
    .goto Hellfire Peninsula,54.5,63.2
    .train 32678 >>Treine Esfolamento Mestre (300-375) com Jelena na Estalagem em Fortaleza da Honra
    .skill skinning,305,1
step
    >>Mate os Helboars Famintos, depois esfolle-os
    .skill skinning,305 >>Suba seu Esfolamento de 300-305 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Mate os Helboars Dementes, depois esfolle-os
    .skill skinning,310 >>Suba seu Esfolamento de 305-310 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Mate os Filhotes Razorfang e os Saqueadores Razorfang, depois esfolle-os
    .skill skinning,330 >>Suba seu Esfolamento de 310-330 em Península Fogo do Inferno
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >>Teleporte para Shattrath City
    .skill skinning,350,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >>Vá para Shattrath City
    .skill skinning,350,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >>Voe para Nagrand em sua montaria voadora
    .skill skinning,350,1
step
    >>Mate os Talbuks e os Clefthoofs, depois esfolle-os
    .skill skinning,350 >>Suba seu Esfolamento de 330-375 em Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << Mage
    #completewith next
    .zone Dalaran >>Vá para Dalaran
    .skill skinning,375,1
step << !Mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,375,1
step
    #completewith next
    .goto Dalaran,72.4,45.5
    .fly Valiance Keep >>Voe para Tundra Boreana (Bastilha Valente)
    .skill riding,300,1
    .skill skinning,375,1
step
    #completewith next
    .goto Borean Tundra,57.6,71.8 >>Voe para Bastilha Valente em Tundra Boreana em sua montaria voadora
    .skill riding,<300,1
    .skill skinning,375,1
step
    #label Jack
    .train 50305 >>Aprenda Esfolamento Grão-Mestre (350-450) com Armadilheiro Jack em Bastilha Valente
    .skill skinning,375,1
step
    .skill skinning 375 >>Suba seu Esfolamento de 350-375 em Tundra Boreana
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >>Vá para Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >>Lar para Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >>Voe para Zul'Drak em sua montaria voadora
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >>Voe para Zul'Drak (O Tablado Argento)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >>Suba seu Esfolamento de 375-400 em Zul'Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >>Voe para Picos Tempestuosos em sua montaria voadora
    .skill skinning 450,1
step
    .skill skinning,400 >>Suba seu Esfolamento de 400-450 em Picos Tempestuosos
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Parabéns por atingir o nível 450 em Esfolamento!
]])
