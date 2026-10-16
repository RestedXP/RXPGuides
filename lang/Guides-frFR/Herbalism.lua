if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group Leveling de Métier
<< Horde
#name 1-450 Herboristerie (H)
#displayname 1-450 Herboristerie

step << Mage
    #completewith next
    .zone Undercity >> Téléportez-vous à Undercity
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Dalaran
    .zoneskip Undercity
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .goto Dalaran,55.9,24.1
    .zone Undercity >> À Dalaran, prenez le portail vers Fossoyeuse
    .skill herbalism,70,1
step
    .goto Undercity,54.0,49.5
    .train 2366 >> Apprenez Apprenti Herboriste (1-75) chez Martha dans Undercity
    .skill herbalism,70,1
step
    #completewith next
    .goto Undercity,53.8,54.5,-1
    .goto Undercity,67.8,14.4,-1
    .goto Undercity,67.8,14.4,70 >>Sautez sur la lumière près des escaliers et déconnectez-vous ensuite, puis reconnectez-vous directement. Cela vous fera gagner BEAUCOUP de temps
    .link https://www.youtube.com/watch?v=ES8vZZ0XH2k >> CLIQUEZ ICI pour un guide
    >>Si vous n'arrivez pas à faire cette manipulation, sortez de Undercity normalement
    .skill herbalism,70,1
    .zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,61.9,64.9
    .zone Tirisfal Glades >> Quittez Undercity et allez vers les Clairières de Tirisfal
    .skill herbalism,70,1
step
    .openmap Tirisfal Glades
    .skill herbalism,70 >> Montez les niveaux 1-70 de votre Herboristerie dans les Clairières de Tirisfal. Appuyez sur la touche "M" pour ouvrir votre carte et voir la route.
    .loop 60,Tirisfal Glades,53.7,59.8,51.5,62.2,49.1,66.4,43.4,67.3,42.5,64.3,42.1,60.1,41.3,53.8,39.4,50.5,30.6,49.7,30.5,46.6,37.4,45.9,39.1,39.1,44.7,40.5,43.7,31.9,48.7,29.8,52.2,28.6,47.8,43.1,45.7,46.1,46.8,52.0,50.1,55.2,52.8,48.5,56.0,48.5,58.5,47.6,60.2,44.8,57.4,39.0,57.0,33.1,58.3,30.6,61.6,32.7,63.7,35.4,66.6,35.6,63.5,44.0,63.7,48.5,65.5,51.4,58.5,58.2,56.8,59.6,53.7,59.8
step << Mage
    #completewith next
    .zone Undercity >> Téléportez-vous à Undercity
    .skill herbalism,115,1
step << !Mage
    .goto Undercity,66.2,1.5,20,0
    .goto Undercity,65.9,44.1,50,0
    .goto Undercity,54.0,49.5,50 >> Retournez voir Martha à Undercity
    .skill herbalism,115,1
    .cooldown item,6948,<0,1
step << !Mage
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Undercity
    .skill herbalism,115,1
step << !Mage
    #completewith next
    .goto Dalaran,55.9,24.1
    .zone Undercity >> À Dalaran, prenez le portail vers Fossoyeuse
    .skill herbalism,115,1
step
    .goto Undercity,54.0,49.5
    .train 2368 >> Apprenez Herboriste (compagnon) (75-150) chez Martha à Undercity
    .skill herbalism,115,1
step
    #completewith next
    .goto Undercity,65.9,44.1,50,0
    .goto Undercity,63.3,48.6
    .fly Sepulcher >> Volez au Sépulcre
    .skill herbalism,115,1
    .zoneskip Silverpine Forest
step
    .skill herbalism,115 >> Montez les niveaux 70-115 de votre Herboristerie dans la Forêt des Pins argentés
    .loop 60,Silverpine Forest,51.9,42.9,48.9,33.3,45.1,30.3,47.6,24.9,52.0,20.9,55.1,15.7,58.4,12.1,64.3,9.1,65.3,11.3,60.5,14.1,56.2,18.7,55.8,22.5,56.2,29.3,55.4,31.9,52.5,31.2,54.6,35.9,54.4,43.1,52.2,49.8,54.7,58.5,55.8,64.5,61.5,64.3,64.2,76.9,60.1,78.3,55.1,76.3,51.7,77.6,49.5,80.1,46.1,80.8,50.1,74.3,51.4,68.1,51.7,56.4,48.0,52.6,45.5,53.6,44.1,50.4,45.1,47.5,49.0,46.8,51.9,42.9
step
    #completewith next
    .goto Silverpine Forest,45.6,42.6,-1
    .goto Hillsbrad Foothills,21.0,46.2,-1
    >>Voyagez vers les Contreforts d'Hillsbrad. Si vous êtes proche de la zone, allez-y en monture; sinon, retournez au Sépulcre et volez vers Moulin-de-Tarren
    .fly Tarren Mill >> Volez à Moulin-de-Tarren
    .zoneskip Hillsbrad Foothills
    .skill herbalism,150,1
step
    .skill herbalism,150 >> Montez les niveaux 115-150 de votre Herboristerie dans les Contreforts d'Hillsbrad
    .loop 60,Hillsbrad Foothills,56.2,28.0,55.7,17.7,58.6,15.0,63.6,13.0,66.8,8.2,70.4,15.9,71.8,23.2,75.9,30.5,84.4,33.4,87.3,37.3,86.3,39.8,76.7,32.9,70.7,38.6,64.9,45.7,64.3,52.4,70.2,53.2,75.4,55.4,70.6,63.1,67.1,69.0,68.9,83.8,64.6,73.0,60.9,67.0,56.2,52.8,51.5,46.2,46.3,47.6,45.6,51.5,43.3,61.3,40.1,64.3,35.6,63.5,37.4,56.0,33.2,55.4,25.4,53.2,21.7,54.1,16.9,54.1,14.7,51.6,18.1,44.2,22.4,42.4,25.7,42.7,26.2,33.9,31.6,29.8,38.7,32.7,42.0,38.2,47.5,35.1,48.2,31.2,53.1,31.6,56.2,28.0
step
    .goto Hillsbrad Foothills,60.1,18.6
    .train 3570 >> Apprenez Herboriste Expert (150-225) chez Aranae au Moulin-de-Tarren
    .skill herbalism,225,1
step << Mage
    #completewith next
    .zone Swamp of Sorrows >> Téléportez-vous à Stonard
    .skill herbalism,225,1
step << !Mage
    #completewith next
    .goto Hillsbrad Foothills,60.1,18.6
    .fly Stonard >> Volez vers Pierrêche
    .skill herbalism,225,1
step
    >>Cueillez en priorité les Vietérule et les Sang-Royal pour commencer, et les Pâlerette quand vous avez atteint un niveau de compétence de 160
    .skill herbalism,170 >> Montez les niveaux 150-170 de votre Herboristerie dans les Marais de Chagrins
    .loop 60,Swamp of Sorrows,37.2,46.5,30.0,51.3,26.8,58.7,23.4,58.8,19.4,55.1,17.0,59.8,13.2,62.7,13.6,52.7,18.3,45.4,12.2,32.9,21.9,44.7,28.7,38.8,34.0,35.0,45.2,34.0,61.3,33.1,74.1,24.2,76.7,15.2,82.4,25.6,78.3,36.0,87.5,43.8,83.4,47.6,86.9,58.8,81.6,62.5,78.4,67.0,83.3,71.7,76.0,77.5,68.9,69.8,58.9,59.0,56.8,49.0,46.8,39.5,37.2,46.5
step
    >>Cueillez en priorité des Dorépine, et quand vous avez atteint un niveau de compétence de 185, des Moustache de Khadgar
    .skill herbalism,225 >> Montez les niveaux 170-225 de votre Herboristerie dans le Marais des Chagrins
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,63.4,20.9,70.3,13.1,81.2,22.0,86.4,42.3,86.2,62.1,82.8,72.2,75.4,86.1,69.1,77.5,64.5,68.6,73.3,72.4,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << Mage
    #completewith next
    .zone Orgrimmar >> Téléportez-vous à Orgrimmar
    .skill herbalism,300,1
step << !Mage
    .goto Blasted Lands,52.0,7.7,60,0
    .goto Blasted Lands,58.8,60.2,50,0
    .goto Hellfire Peninsula,88.9,50.2
    .zone Hellfire Peninsula >>Allez au Terres foudroyées. Traversez la Porte des Ténèbres
    .skill herbalism,300,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Hellfire Peninsula
    .skill herbalism,300,1
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >> À Dalaran, prenez le portail vers Orgrimmar
    .skill herbalism,300,1
step
    #completewith next
    .goto Orgrimmar,43.1,41.4,70,0
    .goto Orgrimmar,45.9,43.6,40,0
    .goto Orgrimmar,49.4,39.6,40,0
    .goto Orgrimmar,54.5,41.0,40 >> Passez par l'entrée de derrière de la partie supérieure de La Herse
    .skill herbalism,300,1
step
    .goto Orgrimmar,55.6,39.5
    .train 11993 >> Apprenez Herboriste Artisan (225-300) chez Jandi dans le bâtiment à Orgrimmar
    .skill herbalism,300,1
step << Mage
    #completewith next
    .zone Swamp of Sorrows >> Téléportez-vous à Stonard
    .skill herbalism,300,1
step << !Mage
    .goto Durotar,45.5,12.2
    .zone Durotar >> Quittez Orgrimmar pour Durotar. Sinon, payez un mage pour un portail vers Stonard
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step << !Mage
    .goto Durotar,50.7,13.3,20,0
    .goto Durotar,50.6,12.6
    .zone Stranglethorn Vale >> Montez la tour des zeppelins. Prenez le Zeppelin pour la Vallée de Strangleronce (Grom'Gol)
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step << !Mage
    #completewith next
    .goto Stranglethorn Vale,32.5,29.4
    .fly Stonard >> Volez vers Pierrêche
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step
    .skill herbalism,300 >> Montez les niveaux 225-300 de votre Herboristerie dans le Marais des Chagrins
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,60.0,33.2,63.4,20.9,70.3,13.1,81.2,22.0,79.1,31.5,,84.2,35.4,,86.4,42.3,86.2,62.1,82.8,72.2,78.5,77.4,71.1,68.9,76.9,67.2,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << !Mage
    .goto Blasted Lands,52.0,7.7,60,0
    .goto Blasted Lands,58.8,60.2,50,0
    .goto Hellfire Peninsula,88.9,50.2
    .zone Hellfire Peninsula >> Allez au Terres foudroyées. Traversez la Porte des Ténèbres
    .skill herbalism,325,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Shattrath City
    .skill herbalism,325,1
step << !Mage
    #completewith next
    .goto Dalaran,56.4,22.8
    .zone Shattrath City >> À Dalaran, prenez le portail vers Shattrath
    .skill herbalism,325,1
step
    #completewith Ruak
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >> Volez à Thrallmar
    .skill herbalism,325,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,52.2,36.2
    .zone Hellfire Peninsula >> Volez vers Thrallmar dans la Péninsule des Flammes infernales sur votre monture volante
    .skill herbalism,325,1
    .skill riding,<300,1
step
    #label Ruak
    .goto Hellfire Peninsula,52.7,36.6,15,0
    .goto Hellfire Peninsula,52.2,36.2
    .train 28695 >> Apprenez Maître Herboriste (300-375) chez Ruak Forte-corne dans le bâtiment à Thrallmar
    .skill herbalism,325,1
step
    .skill herbalism,325 >> Montez les niveaux 300-325 de votre Herboristerie dans la Péninsule des Flammes infernales
    .loop 60,Hellfire Peninsula,27.9,80.6,31.1,61.8,43.5,63.9,43.0,72.9,38.1,87.2,45.7,85.5,49.8,69.2,62.0,68.9,67.4,77.9,65.4,58.4,72.3,62.3,80.3,79.6,73.8,59.2,66.8,55.5,67.1,52.2,71.9,51.9,73.9,40.2,66.8,43.7,65.7,28.1,59.0,35.9,55.6,28.9,51.0,23.9,49.2,36.5,45.1,41.9,49.0,47.1,59.8,47.1,61.0,53.7,52.5,54.6,48.6,58.9,42.9,56.0,37.7,42.6,41.0,30.8,35.5,29.3,27.5,36.8,31.4,48.6,24.1,44.4,20.5,40.1,18.2,46.1,14.6,36.8,12.1,55.2,13.8,61.8,17.2,53.6,22.7,54.9,22.9,65.9,27.9,80.6
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
step << !Mage
    .goto Terokkar Forest,60.5,24.2
    .zone Terokkar Forest >> Volez vers la Forêt de Terokkar
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Shattrath City
    .skill herbalism,350,1
step << !Mage
    #completewith next
    .goto Dalaran,56.4,22.8
    .zone Shattrath City >> À Dalaran, prenez le portail vers Shattrath
    .skill herbalism,350,1
step
    #completewith next
    .goto Terokkar Forest,39.6,24.8
    .zone Terokkar Forest >> Volez vers la Forêt de Terokkar
    .skill herbalism,350,1
step
    #label Terokkar
    .skill herbalism,350 >> Montez les niveaux 325-350 de votre Herboristerie dans la Forêt de Terokkar
    .loop 60,Terokkar Forest,20.8,16.4,22.8,7.8,25.5,10.2,35.8,8.6,44.0,18.1,44.9,13.9,50.8,17.5,50.1,25.7,37.8,35.7,40.6,40.5,45.6,33.4,50.5,35.6,55.3,27.7,61.2,24.4,54.9,38.2,60.2,42.9,65.2,30.5,72.9,30.6,67.1,43.7,60.9,45.2,69.0,50.4,64.9,56.0,60.2,49.7,54.9,58.6,56.5,65.5,65.6,69.5,73.5,82.7,73.4,87.4,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.4,66.2,24.7,65.1,25.6,77.3,18.3,78.0,17.9,66.0,27.5,50.2,32.3,36.4,20.8,16.4
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >> Prenez le portail vers Orgrimmar
    .skill herbalism,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill herbalism,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >> Escaladez la Tour du Zeppelin. Prenez le Zeppelin vers Toundra Boréenne
step << Mage
    #completewith next
    .zone Dalaran >> Téléportez-vous à Dalaran
    .skill herbalism,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Shattrath City
    .skill herbalism,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >> Envolez-vous vers Toundra Boréenne sur votre Monture volante
    .skill herbalism,375,1
    .skill riding,<300,1
step << !mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Warsong Hold >> Envolez-vous vers Toundra Boréenne (Bastion Chanteguerre)
    .skill herbalism,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tansy
    .goto Borean Tundra,42.0,53.6
    .train 50300 >> Apprenez Grand maître Herboristerie (350-450) de Tansy Wildmane à Bastion Chanteguerre
    .skill herbalism,375,1
step
    #label BoreanTundra
    .skill herbalism,375 >> Montez votre Herboristerie de 350 à 400 à Toundra Boréenne
    .loop 20,Borean Tundra,77.0,30.1,77.5,35.8,75.5,41.7,69.0,41.8,64.5,39.8,60.7,42.5,61.6,58.4,57.4,48.8,49.8,69.5,49.2,74.9,46.2,72.2,32.8,63.5,32.5,54.3,44.0,43.9,52.7,49.0,52.7,41.0,58.0,40.4,60.1,32.5,54.9,27.9,48.4,23.2,50.0,20.0,58.1,18.7,61.8,14.3,66.0,16.1,73.4,25.9,70.1,31.0,72.6,34.2,77.0,30.1
step
    #completewith next
    .goto Sholazar Basin,50,50
    .zone Sholazar Basin >> Envolez-vous vers Bassin de Sholazar
    .skill herbalism,425,1
step
    .skill herbalism,425 >> Montez votre Herboristerie de 375 à 425 à Bassin de Sholazar
    .loop 20,Sholazar Basin,70.1,68.4,67.1,70.9,65.7,75.3,58.3,77.7,60.9,84.4,54.4,85.7,48.6,83.5,48.1,71.7,47.8,65.8,49.6,52.4,46.4,51.7,45.1,56.3,42.1,58.0,40.9,64.3,42.2,83.2,33.5,83.1,27.2,80.1,26.6,72.8,34.2,66.3,33.8,59.8,22.2,59.2,23.1,48.1,28.6,52.7,30.1,44.5,35.4,45.0,33.4,35.1,41.4,22.8,58.3,27.8,62.1,35.0,56.1,35.7,57.3,42.3,59.2,47.0,56.7,55.9,54.2,61.5,61.7,67.2,70.1,68.4
step
    #completewith next
    .goto The Storm Peaks,50.0,50.0
    .zone The Storm Peaks >> Envolez-vous vers Les pics Foudroyés sur votre monture volante
    .skill herbalism,450,1
    .skill riding,<300,1
step << Mage
    #completewith next
    .zone Dalaran >> Téléportez-vous à Dalaran
    .skill herbalism,450,1
    .skill riding,300.1
    .zoneskip Dalaran
    .zoneskip The Storm Peaks
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Sholazar Basin,50.2,61.5
    .fly K3 >> Envolez-vous vers Pics Foudroyés (K3)
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
step
    #label TheStormPeaks
    .skill herbalism,450 >> Montez votre Herboristerie de 425 à 450 aux Pics Foudroyés
    .loop 20,The Storm Peaks,56.1,65.5,59.2,59.3,63.5,62.6,72.5,63.3,71.1,55.4,71.9,48.3,67.0,45.9,65.4,41.6,61.1,44.2,58.8,48.7,55.7,50.2,50.5,53.3,49.8,59.8,46.9,62.5,38.0,62.9,38.0,53.9,44.0,52.8,43.1,43.6,37.6,44.5,34.9,40.1,32.3,49.3,28.4,50.3,26.7,56.7,22.6,57.0,25.0,63.1,27.8,61.8,26.7,72.5,31.5,65.8,36.9,66.3,37.4,77.0,30.6,83.4,32.7,89.9,39.0,88.5,39.6,80.7,50.0,74.3,56.1,65.5
step
    +Félicitations pour avoir atteint le niveau 450 en Herboristerie!
]])

RXPGuides.RegisterGuide([[
#wotlk
#group Leveling de Métier
<< Alliance
#name 1-450 Herboristerie (A)
#displayname 1-450 Herboristerie


step << Mage
    #completewith next
    .zone Stormwind City >> Téléportez-vous à Stormwind
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Dalaran
    .skill herbalism,70,1
step << !Mage
    #completewith next
    .goto Dalaran,39.8,62.5
    .zone Stormwind City >> À Dalaran, prenez le portail vers Hurlevent
    .skill herbalism,70,1
step
    .goto Stormwind City,54.3,84.1
    .train 2366 >> Apprenez Apprenti Herboriste (1-75) chez Tannysa à Stormwind
    .skill herbalism,70,1
step
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >> Quittez Stormwind pour la Forêt d'Elwynn
    .skill herbalism,70,1
step
    .openmap Elwynn Forest
    .skill herbalism,70 >> Montez les niveaux 1-70 de votre Herboristerie dans la Forêt d'Elwynn. Appuyez sur la touche "M" pour ouvrir votre carte et voir la route.
    .loop 60,Elwynn Forest,32.4,56.2,36.5,58.7,40.5,54.7,47.7,59.3,60.9,59.2,65.8,64.8,68.9,62.3,68.9,52.0,65.8,45.5,72.2,40.0,79.6,39.4,81.6,49.7,80.7,56.4,86.9,61.5,85.9,73.2,87.3,79.2,85.2,82.6,79.9,80.9,76.0,82.8,62.7,77.7,57.4,78.2,49.4,84.3,42.2,89.1,40.4,87.5,42.0,80.8,39.3,74.8,36.0,81.9,34.8,85.6,26.4,90.9,26.5,81.2,23.0,75.9,26.0,74.7,29.4,68.2,29.1,62.0,30.5,58.5,32.4,56.2
step << Mage
    #completewith next
    .zone Stormwind City >> Téléportez-vous à Stormwind
    .skill herbalism,150,1
step << !Mage
    .goto Stormwind City,73.0,89.9
    .zone Stormwind City >> Retournez à Stormwind
    .skill herbalism,150,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Stormwind City
    .skill herbalism,150,1
step << !Mage
    #completewith next
    .goto Dalaran,39.8,62.5
    .zone Stormwind City >> À Dalaran, prenez le portail vers Hurlevent
    .skill herbalism,150,1
step
    .goto Stormwind City,54.3,84.1
    .train 2368 >> Apprenez Herboriste (compagnon) (75-150) chez Tannysa à Stormwind
    .skill herbalism,151,1
step
    #completewith next
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    .fly Lakeshire >> Volez à Comté-du-Lac
    .zoneskip Redridge Mountains
    .skill herbalism,150,1
step
    .skill herbalism,150 >> Montez les niveaux 70-150 de votre Herboristerie dans les Carmines
    .loop 60,Redridge Mountains,24.8,72.7,30.8,80.7,36.2,73.4,40.0,76.0,55.8,75.4,60.4,72.4,64.7,78.2,69.1,77.6,73.9,82.4,77.1,73.4,77.1,66.7,81.4,69.8,82.8,66.0,87.0,62.0,80.4,39.9,76.6,39.3,76.8,50.5,71.2,50.2,64.2,44.8,54.8,44.1,49.5,41.1,43.2,34.2,30.5,22.5,24.8,24.1,23.8,29.1,20.7,40.7,15.4,52.2,22.3,60.8,11.8,76.0,24.8,72.7
step
    .goto Redridge Mountains,21.7,45.8
    .train 3570 >> Apprenez Herboriste Expert (150-225) chez Alma à Lakeshire
    .skill herbalism,226,1
step
    #completewith next
    .goto Redridge Mountains,30.6,59.4
    .fly Nethergarde >> Volez à Rempart-du-Néant
    .skill herbalism,225,1
    .zoneskip Swamp of Sorrows
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,40,0
    .goto Swamp of Sorrows,33.9,65.9
    .zone Swamp of Sorrows >> Allez au Marais des Chagrins
    .skill herbalism,225,1
step
    >>Cueillez en priorité les Vietérule et les Sang-Royal pour commencer, et les Pâlerette quand vous avez atteint un niveau de compétence de 160
    .skill herbalism,170 >> Montez les niveaux 150-170 de votre Herboristerie dans les Marais de Chagrins
    .loop 60,Swamp of Sorrows,37.2,46.5,30.0,51.3,26.8,58.7,23.4,58.8,19.4,55.1,17.0,59.8,13.2,62.7,13.6,52.7,18.3,45.4,12.2,32.9,21.9,44.7,28.7,38.8,34.0,35.0,45.2,34.0,61.3,33.1,74.1,24.2,76.7,15.2,82.4,25.6,78.3,36.0,87.5,43.8,83.4,47.6,86.9,58.8,81.6,62.5,78.4,67.0,83.3,71.7,76.0,77.5,68.9,69.8,58.9,59.0,56.8,49.0,46.8,39.5,37.2,46.5
step
    >>Cueillez en priorité des Dorépine, et quand vous avez atteint un niveau de compétence de 185, des Moustache de Khadgar
    .skill herbalism,225 >> Montez les niveaux 170-225 de votre Herboristerie dans le Marais des Chagrins
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,63.4,20.9,70.3,13.1,81.2,22.0,86.4,42.3,86.2,62.1,82.8,72.2,75.4,86.1,69.1,77.5,64.5,68.6,73.3,72.4,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,-1
    .goto Deadwind Pass,56.8,42.0,-1
    .zone Redridge Mountains >> Voyagez soit vers le Défilé de Deuillevent, soit vers les Terres foudroyées, prenez la zone la plus proche
    .zoneskip Deadwind Pass
    .zoneskip Blasted Lands
    .skill herbalism,300,1
step
    #completewith next
    .goto Blasted Lands,65.5,24.3,-1
    .goto Duskwood,77.5,44.3,-1
    .fly Lakeshire >> Volez à Comté-du-Lac
    .skill herbalism,300,1
step
    .goto Redridge Mountains,21.7,45.8
    .train 11993 >> Apprenez Herboriste Artisan (225-300) chez Alma à Lakeshire
    .skill herbalism,300,1
step
    #completewith next
    .goto Redridge Mountains,30.6,59.4
    .fly Nethergarde >> Volez à Rempart-du-Néant
    .skill herbalism,300,1
    .zoneskip Swamp of Sorrows
step
    #completewith next
    .goto Blasted Lands,52.1,8.5,40,0
    .goto Swamp of Sorrows,33.9,65.9
    .zone Swamp of Sorrows >> Allez au Marais des Chagrins
    .skill herbalism,300,1
step
    .skill herbalism,300 >> Montez les niveaux 225-300 de votre Herboristerie dans le Marais des Chagrins
    .loop 60,Swamp of Sorrows,54.5,42.1,44.8,41.9,30.8,51.2,26.7,61.6,23.2,59.5,20.9,53.4,17.1,55.1,15.1,64.0,11.8,63.7,14.8,46.3,18.0,46.1,17.0,42.3,10.9,37.1,10.7,32.1,14.9,33.2,19.4,43.7,21.6,40.7,26.3,44.3,30.2,34.8,34.1,40.7,38.3,38.5,37.4,32.4,45.7,31.3,52.8,30.6,60.0,33.2,63.4,20.9,70.3,13.1,81.2,22.0,79.1,31.5,,84.2,35.4,,86.4,42.3,86.2,62.1,82.8,72.2,78.5,77.4,71.1,68.9,76.9,67.2,81.3,59.1,79.3,43.9,70.1,35.0,61.2,41.1,56.1,59.1,54.5,42.1
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.2,66.2
    .zone Shattrath City >> Prenez le portail vers Shattrath
    .skill herbalism,325,1
    .zoneskip Hellfire Peninsula
step
    #completewith Rorelien
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >> Volez vers le Bastion de l'Honneur
    .skill herbalism,325,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,53.6,65.8
    .zone Hellfire Peninsula >> Volez vers le Bastion de l'Honneur dans la Péninsule des Flammes infernales sur votre monture volante
    .skill herbalism,325,1
    .skill riding,<300,1
step
    #label Rorelien
    .goto Hellfire Peninsula,54.2,65.4,15,0
    .goto Hellfire Peninsula,53.6,65.8
    .train 28695 >> Apprenez Maître Herboriste (300-375) chez Rorelien dans le bâtiment dans le Bastion de l'Honneur
    .skill herbalism,325,1
step
    .skill herbalism,325 >> Montez les niveaux 300-325 de votre Herboristerie dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula,27.9,80.6,31.1,61.8,43.5,63.9,43.0,72.9,38.1,87.2,45.7,85.5,49.8,69.2,62.0,68.9,67.4,77.9,65.4,58.4,72.3,62.3,80.3,79.6,73.8,59.2,66.8,55.5,67.1,52.2,71.9,51.9,73.9,40.2,66.8,43.7,65.7,28.1,59.0,35.9,55.6,28.9,51.0,23.9,49.2,36.5,45.1,41.9,49.0,47.1,59.8,47.1,61.0,53.7,52.5,54.6,48.6,58.9,42.9,56.0,37.7,42.6,41.0,30.8,35.5,29.3,27.5,36.8,31.4,48.6,24.1,44.4,20.5,40.1,18.2,46.1,14.6,36.8,12.1,55.2,13.8,61.8,17.2,53.6,22.7,54.9,22.9,65.9,27.9,80.6
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill herbalism,350,1
    .zoneskip Terokkar Forest
step
    #completewith next
    .goto Terokkar Forest,39.6,24.8
    .zone Terokkar Forest >> Volez vers la Forêt de Terokkar
    .skill herbalism,350,1
step
    .skill herbalism,350 >> Montez les niveaux 325-350 de votre Herboristerie dans la Forêt de Terokkar
    .loop 60,Terokkar Forest,20.8,16.4,22.8,7.8,25.5,10.2,35.8,8.6,44.0,18.1,44.9,13.9,50.8,17.5,50.1,25.7,37.8,35.7,40.6,40.5,45.6,33.4,50.5,35.6,55.3,27.7,61.2,24.4,54.9,38.2,60.2,42.9,65.2,30.5,72.9,30.6,67.1,43.7,60.9,45.2,69.0,50.4,64.9,56.0,60.2,49.7,54.9,58.6,56.5,65.5,65.6,69.5,73.5,82.7,73.4,87.4,68.7,86.6,60.5,70.9,56.0,71.6,49.6,82.2,30.8,79.3,29.4,66.2,24.7,65.1,25.6,77.3,18.3,78.0,17.9,66.0,27.5,50.2,32.3,36.4,20.8,16.4
step << Mage
    #completewith next
    .zoneskip Borean Tundra
    .zone Dalaran >> Téléportez-vous à Dalaran
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .zoneskip Borean Tundra
    .skill herbalism,400,1
step
    #completewith next
    .zone Borean Tundra >> Envolez-vous vers Toundra Boréenne sur votre Monture volante
    .skill herbalism,400,1
    .skill riding,300,1
step
    #completewith next
    .goto Dalaran, 72.2,45.8
    .fly Valiance Keep >> Envolez-vous vers Toundra Boréenne (Donjon de la Bravoure)
    .skill herbalism,400,1
    .skill riding,<300,1
step
    #label Kirea
    .goto Borean Tundra,57.8,71.8
    .train 50300 >> Apprenez Grand maître Herboristerie (350-450) de Kirea Moondancer à Donjon de la Bravoure
    .skill herbalism,400,1
step
    #label BoreanTundra
    .skill herbalism,400 >> Montez votre Herboristerie de 350 à 400 à Toundra Boréenne
    .loop 20,Borean Tundra,77.0,30.1,77.5,35.8,75.5,41.7,69.0,41.8,64.5,39.8,60.7,42.5,61.6,58.4,57.4,48.8,49.8,69.5,49.2,74.9,46.2,72.2,32.8,63.5,32.5,54.3,44.0,43.9,52.7,49.0,52.7,41.0,58.0,40.4,60.1,32.5,54.9,27.9,48.4,23.2,50.0,20.0,58.1,18.7,61.8,14.3,66.0,16.1,73.4,25.9,70.1,31.0,72.6,34.2,77.0,30.1
step
    #completewith next
    .goto Sholazar Basin,50,50
    .zone Sholazar Basin >> Envolez-vous vers Bassin de Sholazar
    .skill herbalism,425,1
step
    .skill herbalism,425 >> Montez votre Herboristerie de 375 à 425 à Bassin de Sholazar
    .loop 20,Sholazar Basin,70.1,68.4,67.1,70.9,65.7,75.3,58.3,77.7,60.9,84.4,54.4,85.7,48.6,83.5,48.1,71.7,47.8,65.8,49.6,52.4,46.4,51.7,45.1,56.3,42.1,58.0,40.9,64.3,42.2,83.2,33.5,83.1,27.2,80.1,26.6,72.8,34.2,66.3,33.8,59.8,22.2,59.2,23.1,48.1,28.6,52.7,30.1,44.5,35.4,45.0,33.4,35.1,41.4,22.8,58.3,27.8,62.1,35.0,56.1,35.7,57.3,42.3,59.2,47.0,56.7,55.9,54.2,61.5,61.7,67.2,70.1,68.4
step
    #completewith next
    .goto The Storm Peaks,50.0,50.0
    .zone The Storm Peaks >> Envolez-vous vers Les pics Foudroyés sur votre monture volante
    .skill herbalism,450,1
    .skill riding,<300,1
step << Mage
    #completewith next
    .zone Dalaran >> Téléportez-vous à Dalaran
    .skill herbalism,450,1
    .skill riding,300.1
    .zoneskip Dalaran
    .zoneskip The Storm Peaks
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Sholazar Basin,50.2,61.5
    .fly K3 >> Envolez-vous vers Pics Foudroyés (K3)
    .skill riding,300,1
    .skill herbalism 450,1
    .zoneskip The Storm Peaks
step
    #label TheStormPeaks
    .skill herbalism,450 >> Montez votre Herboristerie de 425 à 450 aux Pics Foudroyés
    .loop 20,The Storm Peaks,56.1,65.5,59.2,59.3,63.5,62.6,72.5,63.3,71.1,55.4,71.9,48.3,67.0,45.9,65.4,41.6,61.1,44.2,58.8,48.7,55.7,50.2,50.5,53.3,49.8,59.8,46.9,62.5,38.0,62.9,38.0,53.9,44.0,52.8,43.1,43.6,37.6,44.5,34.9,40.1,32.3,49.3,28.4,50.3,26.7,56.7,22.6,57.0,25.0,63.1,27.8,61.8,26.7,72.5,31.5,65.8,36.9,66.3,37.4,77.0,30.6,83.4,32.7,89.9,39.0,88.5,39.6,80.7,50.0,74.3,56.1,65.5
step
    +Félicitations d'avoir atteint le niveau 450 en Herboristerie !
]])
