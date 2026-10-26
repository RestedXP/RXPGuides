if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group Leveling de Métier
<< Horde
#name 1-450 Dépeçage (H)
#guideKind profession
#displayname 1-450 Dépeçage

step << Mage
    #completewith Thuwd
    .zone Orgrimmar >> Téléportez-vous à Orgrimmar
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .zoneskip Orgrimmar
    .zoneskip Dalaran
    .skill skinning,75,1
step << !Mage
    #completewith Thuwd
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >> À Dalaran, prenez le portail vers Orgrimmar
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Orgrimmar,63.0,45.5,0,0
    >>Achetez un Couteau à dépecer à Tamar près de Thuwd
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Thuwd
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8613 >> Apprenez Apprenti Dépeceur (1-75) à Thuwd dans le bâtiment à Orgrimmar
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Durotar,45.5,12.2
    .zone Durotar >> Quittez Orgrimmar via Durotar
    .skill skinning,75,1
step
    #requires Shank
    .openmap Durotar
    .skill skinning,75 >> Monter votre de niveau de compétence en dépeçage 1-75 à Durotar en tuant des bêtes, en les dépouillant, puis en les dépeçant. Appuyez sur votre touche "M" pour ouvrir votre carte et voir la route
    .loop 45,Durotar,54.5,68.2,54.2,60.1,54.7,58.9,54.5,54.3,51.2,51.8,51.1,46.6,47.4,42.7,45.7,37.7,45.0,34.3,43.0,34.9,42.6,37.0,40.8,37.0,38.5,34.3,36.5,31.3,36.9,25.0,38.5,21.7,40.8,21.1,43.0,21.4,44.4,19.2,43.5,15.7,
step << !Mage
    .goto Orgrimmar,48.8,91.0
    .zone Orgrimmar >> Retournez à Orgrimmar en monture
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Orgrimmar >> Téléportez-vous à Orgrimmar
    .skill skinning,125,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,125,1
    .zoneskip Orgrimmar
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >> À Dalaran, prenez le portail vers Orgrimmar
    .skill skinning,125,1
step
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8617 >> Apprenez Dépeceur (compagnon) (75-150) à Thuwd dans le bâtiment à Orgrimmar
    .skill skinning,125,1
step
    #completewith next
    .goto Orgrimmar,45.1,63.9
    .fly Crossroads >> Volez à la Croisée
    .zoneskip The Barrens
    .skill skinning,125,1
step
    >>Visez à obtenir un niveau de compétence d'au moins 125 avant de vous rendre au Camp Taurajo
    .skill skinning,125 >> Montez les niveaux 75-125 de votre Dépeçage aux Tarides
    .loop 45,The Barrens,51.0,31.7,51.0,35.0,50.2,36.3,49.3,38.0,49.6,39.9,49.0,42.5,50.2,45.4,49.5,47.8,46.0,51.7,45.9,53.7,46.3,56.2,
step
    .goto The Barrens,45.1,59.1
    .train 8618 >> Apprenez Dépeceur Expert (150-225) à Dranh au Camp Taurajo
    .skill skinning,165,1
step
    .skill skinning,165 >> Montez les niveaux 125-165 de votre Dépeçage aux Tarides
    .loop 45,The Barrens,46.1,59.9,46.9,63.1,46.7,65.3,46.9,68.0,45.6,71.5,45.4,74.6,45.0,77.6,47.1,79.2,46.8,82.0,44.8,85.2
step
    #completewith next
    .goto Thousand Needles,32.1,22.7
    .zone Thousand Needles >> Volez vers les Milles Pointes
    .skill skinning,205,1
step
    .skill skinning,205 >> Montez les niveaux 165-205 de votre Dépeçage aux Milles Pointes
    .loop 45,Thousand Needles,31.4,25.4,30.8,28.2,31.4,31.2,30.0,34.2,29.9,41.7,31.2,47.5,32.2,52.4,38.8,56.7,42.9,59.7,48.4,59.4,53.3,54.0,57.7,56.5,61.7,60.1,66.6,61.6,69.9,62.7,72.1,67.7,71.8,74.2,72.9,81.3,77.4,84.0,80.9,87.7,78.6,91.1,75.7,89.7
step
    .goto Feralas,88.8,41.4,-1
    .goto Tanaris,51.3,21.4,-1
    .zone Tanaris >> Volez soit vers Feralas, soit vers Tanaris, choisissez le plus proche
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Tanaris,51.6,25.4
    .fly Camp Mojache >> Volez vers Camp Mojache
    .skill skinning,230,1
    .zoneskip Feralas
step
    .goto Feralas,74.7,43.0,12,0
    .goto Feralas,74.5,43.0
    .train 10768 >> Apprenez Dépeceur Artisan (225-300) à Kulleg dans la grande tente dans le Camp Mojache
    .skill skinning,230,1
step
    .skill skinning,230 >> Montez les niveaux 205-230 de votre Dépeçage à Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Tuez les Yétis dans la grotte ou les Hippogriffes à l'extérieur de celle-ci, puis dépecez-les
    .skill skinning,260 >> Montez les niveaux 230-260 de votre Dépeçage à Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Tuez les Yétis dans la grotte ou les bêtes à l'extérieur, puis dépecez-les
    .skill skinning,280 >> Montez les niveaux 260-280 de votre Dépeçage à Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step
    #completewith next
    .goto Feralas,75.4,44.4
    >>Retournez au Camp Mojache en monture
    .fly Marshal's Refuge >> Envolez-vous vers Refuge de Maréchal
    .zoneskip Un'Goro Crater
    .skill skinning,300,1
step
    .skill skinning,300 >> Montez les niveaux 280-300 de votre Dépeçage dans le Cratère d'Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.3,66.2
    .zone Shattrath City >> À Dalaran, prenez le portail vers Shattrath
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step
    #completewith Moorutu
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >> Volez à Thrallmar
    .skill skinning,305,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.3,38.6
    .zone Hellfire Peninsula >> Volez vers Thrallmar dans la Péninsule des Flammes infernales sur votre monture volante
    .skill skinning,305,1
    .skill riding,<300,1
step
    #label Moorutu
    .goto Hellfire Peninsula,56.3,38.6
    .train 32678 >> Apprenez Maître Dépeceur (300-375) à Moorutu à Thrallmar
    .skill skinning,305,1
step
    >>Tuez des Sanglier infernal affamé, puis dépecez-les
    .skill skinning,305 >> Montez les niveaux 300-305 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Tuez des Sangliers infernal dérangé, puis dépecez-les
    .skill skinning,310 >> Montez les niveaux 305-310 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Tuez des Jeune Tranchecroc et des Ravageur Tranchecroc, puis dépecez-les
    .skill skinning,330 >> Montez les niveaux 310-330 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill skinning,375,1
    .zoneskip Nagrand
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Volez vers Nagrand sur votre monture volante
    .skill skinning,375,1
step
    >>Tuez des Talbuks et des Sabots-fourchu, puis dépecez-les
    .skill skinning,350 >> Montez votre Dépeçage de 330 à 350 à Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >> Prenez le portail vers Orgrimmar
    .skill skinning,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill skinning,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >> Escaladez la Tour du Zeppelin. Prenez le Zeppelin vers Toundra Boréenne
step << Mage
    #completewith next
    .zone Dalaran >> Téléportation à Dalaran
    .skill skinning,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .zoneskip Shattrath City
    .skill skinning,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >> Envolez-vous vers Toundra Boréenne sur votre Monture volante
    .skill skinning,375,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Taunka'le Village >> Envolez-vous vers Toundra Boréenne (Taunka'le)
    .skill skinning,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tiponi
    .goto Borean Tundra,76.2,37.6
    .train 50305 >> Apprenez le Grand maître Dépeçage (350-450) auprès de Tiponi Stormwhisper à Taunka'le
    .skill skinning,375,1
step
    #label BoreanTundra
    .skill skinning,375 >> Montez votre Dépeçage de 350 à 375 à Toundra Boréenne
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >> Téléportation à Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >> Envolez-vous vers Zul’Drak sur votre Monture volante
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >> Envolez-vous vers Zul’Drak (Le Bastion de l'Argent)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >> Montez votre Dépeçage de 375 à 400 à Zul’Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >> Envolez-vous vers Les pics Foudroyés sur votre Monture volante
    .skill skinning 450,1
step
    .skill skinning,400 >> Montez votre Dépeçage de 400 à 450 à Les pics Foudroyés
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Félicitations d'avoir atteint le niveau 450 en Dépeçage !
]])

RXPGuides.RegisterGuide([[
#wotlk
#group Leveling de Métier
<< Alliance
#name 1-450 Dépeçage (A)
#guideKind profession
#displayname 1-450 Dépeçage

step << Mage
    #completewith Maris
    .zone Stormwind City >> Téléportez-vous à Stormwind
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,75,1
    .zoneskip Stormwind City
step << !Mage
    .goto Dalaran,38.9,62.6
    .zone Stormwind City >> À Dalaran, prenez le portail vers Hurlevent
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Stormwind City,71.6,62.8,0,0
    >>Achetez un Couteau à Dépecer à Jillian à côté de Simon
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Maris
    .goto Stormwind City,72.6,62.1,12,0
    .goto Stormwind City,72.1,62.2
    .train 8613 >> Apprenez Apprenti Dépeceur (1-75) à Maris dans la maison à Stormwind
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >> Quittez Stormwind pour la Forêt d'Elwynn
    .skill skinning,75,1
step
    #requires Shank
    .openmap Elwynn Forest
    .skill skinning,75 >> Monter votre de niveau de compétence en dépeçage 1-75 dans la Forêt d'Elwynn en tuant des sangliers, en les dépouillant, puis en les dépeçant. Appuyez sur votre touche "M" pour ouvrir votre carte et voir la route
	.loop 25,Elwynn Forest,32.6,83.0,31.0,85.6,32.6,87.8,33.6,85.4,32.6,83.0
step << Mage
    #completewith next
    .zone Ironforge >> Téléportez-vous à Ironforge
    .skill skinning,125,1
step << !Mage
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    >>Retournez à Stormwind
    .fly Ironforge
    .zone Ironforge >> Voyagez à Ironforge
    .zoneskip Ironforge
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,125,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> À Dalaran, prenez le portail vers Forgefer
    .skill skinning,125,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8617 >> Apprenez Dépeceur (compagnon) (75-150) à Balthus dans la maison à Ironforge
    .skill skinning,125,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Thelsamar >> Volez à Thelsamar
    .skill skinning,125,1
    .zoneskip Loch Modan
step
    .skill skinning,115 >> Montez les niveaux 75-115 de votre Dépeçage au Loch Modan
    .loop 45,Loch Modan,34.4,53.8,37.7,52.3,41.7,54.4,44.4,64.1,49.9,69.3,55.6,66.9,63.9,63.4,59.4,62.0,63.0,57.0,64.3,48.7,62.2,38.9,59.9,36.9,59.5,29.8,58.9
step
    .skill skinning,125 >> Montez les niveaux 115-125 de votre Dépeçage au Loch Modan
    .loop 45,Loch Modan,61.5,40.9,72.4,41.8,76.8,47.9,77.4,41.4,59.9,28.0,61.5,40.9
step << Mage
    #completewith next
    .zone Ironforge >> Téléportez-vous à Ironforge
    .skill skinning,155,1
step << !Mage
    .goto Loch Modan,33.9,51.0
    >>Retournez à Thelsamar
    .fly Ironforge
    .zone Ironforge >> Voyagez à Ironforge
    .zoneskip Ironforge
    .skill skinning,155,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,155,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> À Dalaran, prenez le portail vers Forgefer
    .skill skinning,155,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8618 >> Apprenez Dépeceur Expert (150-225) à Balthus dans la maison à Ironforge
    .skill skinning,155,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >> Volez au Port de Menethil
    .skill skinning,155,1
    .zoneskip Wetlands
step
    .skill skinning,155 >> Montez les niveaux 140-155 de votre Dépeçage dans les Paluns
    .loop 45,Wetlands,31.9,42.0,30.4,45.1,29.9,47.5,27.7,46.7,26.6,47.8,26.5,49.7,24.6,53.8,22.7,57.4,20.2,54.4,18.9,50.7
step
    #completewith next
    .goto Wetlands,9.5,59.7
    >>Retournez à Menethil en monture
    .fly Refuge Pointe >> Envolez-vous vers Refuge de l'Orne
    .zoneskip Arathi Highlands
step
    .skill skinning,185 >> Montez les niveaux 155-185 de votre Dépeçage dans les Hautes-terres d'Arathi
    .loop 45,Arathi Highlands,44.9,52.8,47.0,54.9,49.7,50.6,52.4,46.0,55.2,48.3,59.4,45.1,64.4,45.4,68.6,39.1,66.8,34.3,64.3,38.0,59.6,38.4,55.5,42.9,51.3,40.4,46.5,41.1,43.3,38.7,42.0,43.4,40.7,48.4,36.2,49.8
step
    .skill skinning,205 >> Montez les niveaux 185-205 de votre Dépeçage dans les Hautes-terres d'Arathi
    .loop 45,Arathi Highlands,47.2,69.9,46.8,73.0,45.7,76.4,45.6,81.2,48.2,82.6,51.1,74.4,54.1,69.9,56.6,68.0,54.9,62.9,48.7,60.6,47.2,69.9
step << Mage
    #completewith next
    .zone Ironforge >> Téléportez-vous à Ironforge
    .skill skinning,230,1
step << !Mage
    .goto Arathi Highlands,45.8,46.1
    >>Retournez au Refuge de l'Ornière
    .fly Ironforge
    .zone Ironforge >> Voyagez à Ironforge
    .zoneskip Ironforge
    .skill skinning,230,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,230,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> À Dalaran, prenez le portail vers Forgefer
    .skill skinning,230,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 10768 >> Apprenez Dépeceur Artisan (225-300) à Balthus dans la maison à Ironforge
    .skill skinning,230,1
step << Mage
    #completewith next
    .zone Dustwallow Marsh >> Téléportez-vous à Theramore
    .skill skinning,230,1
step << !Mage
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >> Envolez-vous vers Port de Menethil. Sinon, payez un mage pour un portail vers Theramore
    .skill skinning,230,1
    .zoneskip Dustwallow Marsh
    .zoneskip Feralas
step << !Mage
    .goto Wetlands,5.0,63.5
    .zone Dustwallow Marsh >> Prenez le bateau pour le Marécage d'Âprefange (Theramore)
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3
    .fly Thalanaar >> Volez à Thalanaar
    .skill skinning,230,1
    .zoneskip Feralas
step
    .skill skinning,230 >> Montez les niveaux 205-230 de votre Dépeçage à Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Tuez les Yétis dans la grotte ou les Hippogriffes à l'extérieur de celle-ci, puis dépecez-les
    .skill skinning,260 >> Montez les niveaux 230-260 de votre Dépeçage à Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Tuez les Yétis dans la grotte ou les bêtes à l'extérieur, puis dépecez-les
    .skill skinning,280 >> Montez les niveaux 260-280 de votre Dépeçage à Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step << Mage
    #completewith next
    .zone Dustwallow Marsh >> Téléportez-vous à Theramore
    .skill skinning,300,1
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3 << Mage
    .goto Feralas,30.2,43.2 << !Mage
    >>Voyagez au Bastion de Pennelune << !Mage
    .fly Marshal's Refuge >> Envolez-vous vers Refuge de Maréchal
    .skill skinning,300,1
    .zoneskip Un'Goro Crater
step
    .skill skinning,300 >> Montez les niveaux 280-300 de votre Dépeçage dans le Cratère d'Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step >> !mage
    #completewith next
    .goto Dalaran,37.2,66.4
    .zone Shattrath City >> À Dalaran, prenez le portail vers Shattrath
    .skill skinning,330.1
    .zoneskip Hellfire Peninsula
step
    #completewith Jelena
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >> Volez vers le Bastion de l'Honneur
    .skill skinning,330,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.7,63.8
    .zone Hellfire Peninsula >> Volez vers le Bastion de l'Honneur dans la Péninsule des Flammes infernales sur votre monture volante
    .skill skinning,330,1
    .skill riding,<300,1
step
    #label Jelena
    .goto Hellfire Peninsula,54.9,63.6,12,0
    .goto Hellfire Peninsula,54.5,63.2
    .train 32678 >> Apprenez Maître Dépeceur (300-375) chez Jelena dans l'auberge du Bastion de l'Honneur
    .skill skinning,305,1
step
    >>Tuez des Sanglier infernal affamé, puis dépecez-les
    .skill skinning,305 >> Montez les niveaux 300-305 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Tuez des Sangliers infernal dérangé, puis dépecez-les
    .skill skinning,310 >> Montez les niveaux 305-310 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Tuez des Jeune Tranchecroc et des Ravageur Tranchecroc, puis dépecez-les
    .skill skinning,330 >> Montez les niveaux 310-330 de votre Dépeçage dans la Péninsule des Flammes infernales
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Téléportez-vous à Shattrath
    .skill skinning,350,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Shattrath
    .skill skinning,350,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Volez vers Nagrand sur votre monture volante
    .skill skinning,350,1
step
    >>Tuez des Talbuks et des Sabots-fourchu, puis dépecez-les
    .skill skinning,350 >> Montez les niveaux 330-3755 de votre Dépeçage dans Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << Mage
    #completewith next
    .zone Dalaran >> Téléportation à Dalaran
    .skill skinning,375,1
step << !Mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Dalaran
    .skill skinning,375,1
step
    #completewith next
    .goto Dalaran,72.4,45.5
    .fly Valiance Keep >> Envolez-vous vers Toundra Boréenne (Donjon de la Bravoure)
    .skill riding,300,1
    .skill skinning,375,1
step
    #completewith next
    .goto Borean Tundra,57.6,71.8 >> Envolez-vous vers Donjon de la Bravoure dans Toundra Boréenne sur votre monture volante
    .skill riding,<300,1
    .skill skinning,375,1
step
    #label Jack
    .train 50305 >> Apprenez Grand maître Dépeçage (350-450) auprès de Trappeur Jack’o'o dans Donjon de la Bravoure
    .skill skinning,375,1
step
    .skill skinning 375 >> Montez votre Dépeçage de 350 à 375 dans Toundra Boréenne
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >> Téléportez-vous à Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >> Utilisez votre Pierre de foyer à Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >> Envolez-vous vers Zul’Drak sur votre monture volante
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >> Envolez-vous vers Zul’Drak (Le séjour d'Argent)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >> Montez votre Dépeçage de 375 à 400 dans Zul’Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >> Envolez-vous vers Les pics Foudroyés sur votre monture volante
    .skill skinning 450,1
step
    .skill skinning,400 >> Montez votre Dépeçage de 400 à 450 dans Les pics Foudroyés
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Félicitations d'avoir atteint le niveau 450 en Dépeçage!
]])
