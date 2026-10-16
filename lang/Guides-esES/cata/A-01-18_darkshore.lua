if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-18 Costa Oscura
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .turnin 26383 >>Entrega la misión Rompen olas de cambio << !Worgen
    .turnin 26385 >>Entrega la misión Rompen olas de cambio << Worgen
    .accept 13518 >>Acepta la misión La última oleada de supervivientes
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .accept 13518 >>Acepta la misión La última oleada de supervivientes
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r
    .accept 13522 >>Acepta la misión Amenaza acuífera
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Mata a los |cRXP_ENEMY_Vil Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarpablanca|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Mata a los |cRXP_ENEMY_Vil Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r
    .turnin 13522 >>Entrega la misión Amenaza acuífera
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .turnin 13518 >>Entrega la misión La última oleada de supervivientes
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Serendia Susurrárbol|r |cFFfa9602patrullando de arriba abajo por las escaleras de la posada|r
    .accept 13520 >>Acepta la misión El favor del mar
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kyteran|r
    .home >>Establece tu hogar en Lor'danel
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r
    .accept 13521 >>Acepta la misión La caja mecánica 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Corrupted Tide Crawlers|r. Despoja a los enemigos para obtener su |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Despojar las |cRXP_PICK_Encrusted Clams|r bajo el agua
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Mata a los |cRXP_ENEMY_Corrupted Tide Crawlers|r. Despoja a los enemigos para obtener su |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>Haz clic en la |cRXP_PICK_La caja mecánica 413|r en el suelo
    .turnin 13521 >>Entrega la misión La caja mecánica 413
    .accept 13527 >>Acepta la misión Una cata repugnante
step
    .goto 62,55.1,21.0
    >>Despojar el |cRXP_FRIENDLY_Decomposing Oso cardo|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r
    .turnin 13527 >>Entrega la misión Una cata repugnante
    .accept 13528 >>Acepta la misión La caja mecánica 723
	.target Wizbang Cranktoggle
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Serendia Susurrárbol|r |cFFfa9602patrullando arriba y abajo por las escaleras de la posada.|r
    .turnin 13520 >>Entrega la misión El favor del mar
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irlara Luz Diurna|r
    .trainer >> Aprende tus hechizos de clase
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanla Arcoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Aprende tus hechizos de clase
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Aprende tus hechizos de clase
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kenral Viento Nocturno|r
    .trainer >> Aprende tus hechizos de clase
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Alaluna|r
    .trainer >> Aprende tus hechizos de clase
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dular|r
    .trainer >> Aprende tus hechizos de clase
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Mata a los |cRXP_ENEMY_Osos|r. Despoja a los enemigos para obtener sus |cRXP_LOOT_Corrupted Oso cardo Agallas|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>Haz clic en la |cRXP_PICK_La caja mecánica 723|r en el suelo
    .turnin 13528 >>Entrega la misión La caja mecánica 723
    .accept 13554 >>Acepta la misión Una cura en la oscuridad
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun|r
    .accept 13529 >>Acepta la misión La fuente de la corrupción
	.target Tharnariun
step
    #completewith GrellsIchor
	>>Mata a los |cRXP_ENEMY_Vile Grells|r y a los |cRXP_ENEMY_Vile Corrupters|r. Despoja a los enemigos para obtener su |cRXP_LOOT_Foul Ichor|r y la |T134245:0|t[|cRXP_LOOT_Corruptor's Llave maestra|r]
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Corruptor's Llave maestra|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Acepta la misión Portar la buena suerte
	.mob Vile Grell
	.mob Vile Corruptor
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>Abre las |cRXP_PICK_Cages|r por toda la cueva
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Mata a |cRXP_ENEMY_Zenn Nauseapezuña|r
    >>|cRXP_ENEMY_Zenn Nauseapezuña|r |cRXP_WARN_está en el nivel inferior de la cueva|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>Haz clic en la |cRXP_PICK_Disgusting Workbench|r al fondo de la cueva
    .accept 13831 >>Acepta la misión Una receta perturbadora
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>Mata a los |cRXP_ENEMY_Vile Grells|r y a los |cRXP_ENEMY_Vile Corrupters|r. Despójalos para obtener su |cRXP_LOOT_Foul Ichor|r y la |T134245:0|t[|cRXP_LOOT_Llave maestra de corruptor|r]
    .use 44927 >>|cRXP_WARN_Usa la|r |T134245:0|t[|cRXP_LOOT_Llave maestra de corruptor|r] |cRXP_WARN_para iniciar la misión|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Acepta la misión Portar la buena suerte
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >> Vuela a Lor'Danel
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r y |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 13554 >>Entrega la misión Una cura en la oscuridad
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>Entrega la misión Una receta perturbadora
    .turnin 13831 >>Entrega la misión Una receta perturbadora
    .turnin 13529 >>Entrega la misión La fuente de la corrupción
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .target Volcor
    .accept 13564 >>Acepta la misión El compañero perdido
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .target Cerellean Whiteclaw
    .accept 13563 >>Acepta la misión Amor eterno
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r |cRXP_WARN_patrulla por toda Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Acepta la misión La Llama Final de Bashal'Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arya Luz Otoñal|r
    .target Arya Autumnlight
    .accept 13561 >>Acepta la misión Consuelo para los Altonato
step
    .goto 62,45.958,34.240
    >>Haz clic en la |cRXP_PICK_Llama Final de Bashal'Aran|r en el suelo
    .complete 13562,1
step
    #completewith next
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener |cRXP_LOOT_Colgante de Anaia|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arya Luz Otoñal|r
    .target Arya Autumnlight
    .turnin 13561 >>Entrega la misión Consuelo para los Altonato
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante Karithus|r
    .target Keeper Karithus
    .turnin 13564 >>Entrega la misión El compañero perdido
    .accept 13566 >>Acepta la misión Materiales de ritual
    .accept 13598 >>Acepta la misión Remedios indeseables
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .accept 13565 >>Acepta la misión Eliminar por segunda vez
step
    .goto 62,40.944,38.615
    >>Haz clic en los |cRXP_PICK_Moonstalkers|r durmiendo junto a los árboles para obtener su |cRXP_LOOT_Mostachia|r
    *|cRXP_WARN_Sólo algunos de los monstruos son neutrales y pueden ser saqueados|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Haz clic en las |cRXP_PICK_Mottled Does|r para obtener su |cRXP_LOOT_Hair|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>Mata a |cRXP_ENEMY_Lady Janira|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>Despoja los |cRXP_LOOT_Fuming Toadstools|r en el suelo
    .use 45911 >>Mata a los |cRXP_ENEMY_Darkscale Exploradores|r. |cRXP_WARN_Usa la|r |T134413:0|t[Petrificado Enraizar] |cRXP_WARN_en sus cadáveres|r
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Haz clic en los |cRXP_PICK_Hungry Thistle Osos|r bebiendo agua junto a la orilla del río para obtener su |cRXP_LOOT_Fur|r
    *|cRXP_WARN_Sólo algunos de los monstruos son neutrales y pueden ser saqueados|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .turnin 13565 >>Entrega la misión Eliminar por segunda vez
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Entrega la misión Materiales de ritual
    .turnin 13598 >>Entrega la misión Remedios indeseables
    .accept 13569 >>Acepta la misión El vínculo del ritual
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >> Haz clic en el |cRXP_PICK_Grovekeeper's Incienso|r en el suelo
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>Habla con |cRXP_FRIENDLY_Gran espíritu venado|r
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante Karithus|r
    .target Keeper Karithus
    .turnin 13569 >>Entrega la misión El vínculo del ritual
    .accept 13599 >>Acepta la misión El retorno de Zarpadura
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sacerdotisa Alinya|r
    .target Priestess Alinya
    .turnin 13601 >>Entrega la misión Ayudar a los refugiados
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Selarin|r y |cRXP_FRIENDLY_Corvine Alzaluna|r
    .accept 13542 >>Acepta la misión A contraviento
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>Acepta la misión Los tres cultores Crepusculares
    .accept 13573 >>Acepta la misión El retorno de Malfurion
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>Mata a los |cRXP_ENEMY_Frenzied Cyclones|r. Despójalos para obtener sus |T236968:0|t[|cRXP_LOOT_Brazales de ciclón demente|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Mata a |cRXP_ENEMY_Domanubes Ferocrín|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Mata a |cRXP_ENEMY_Señor del Cielo Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>Mata a |cRXP_ENEMY_Domanubes Ferocrín|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Mata a los |cRXP_ENEMY_Frenzied Cyclones|r. Despójalos para obtener sus |T236968:0|t[|cRXP_LOOT_Brazales de ciclón demente|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_Use the|r |T236968:0|t[Brazales de ciclón demente] |cRXP_WARN_next to the Auberdine moonwell|r
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Selarin|r y |cRXP_FRIENDLY_Corvine Alzaluna|r
    .turnin 13542 >>Entrega la misión A contraviento
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>Entrega la misión Tres Hammers
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 13573 >>Entrega la misión El retorno de Malfurion
    .accept 13575 >>Acepta la misión La tierra está en su sangre
    .accept 13577 >>Acepta la misión Los últimos lechúcicos salvajes
    .accept 13579 >>Acepta la misión El protector de Ameth'Aran
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13577 >>Entrega la misión Los últimos lechúcicos salvajes
    .accept 13578 >>Acepta la misión La despedida de Aroom
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>Despoja las |cRXP_LOOT_Slain Wildkin Plumas|r del suelo
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13578 >>Entrega la misión La despedida de Aroom
    .accept 13582 >>Acepta la misión El fuego de Elune
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>Mata a |cRXP_ENEMY_Horoo el Guardián de la llama|r. Despójalo para obtener |cRXP_LOOT_Elune's Antorcha|r
    >>|cRXP_ENEMY_Horoo el Guardián de la llama|r |cRXP_WARN_patrulla ligeramente|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13582 >>Entrega la misión El fuego de Elune
    .accept 13583 >>Acepta la misión El juramento de los lechúcicos salvajes
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Zarpamarrón|r
    .target Elder Brownpaw
    .turnin 13575 >>Entrega la misión La tierra está en su sangre
    .accept 13576 >>Acepta la misión Ayuda mutua

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Mata a los |cRXP_ENEMY_Unbound Fuego Elementals|r
    >>|cRXP_WARN_Use the|r |T136061:0|t[Calmando Tótem] |cRXP_WARN_on their corpses|r
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Zarpamarrón|r
    .target Elder Brownpaw
    .turnin 13576 >>Entrega la misión Ayuda mutua
    .accept 13580 >>Acepta la misión Sosegando a los elementos
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >> Viaja al altar en la cima de la pequeña colina
step
    .goto 62,39.66,62.12
    .cast 65361 >> |cRXP_WARN_Use the|r |T135839:0|t[Energizado Calmando Tótem] |cRXP_WARN_next to the altar then defend it|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >> |cRXP_WARN_Defend the|r |T135839:0|t[Energizado Calmando Tótem] |cRXP_WARN_against the attackers|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Zarpamarrón|r
    .target Elder Brownpaw
    .turnin 13580 >>Entrega la misión Sosegando a los elementos
    .accept 13581 >>Acepta la misión La promesa de los Bosque Negro
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13579 >>Entrega la misión El protector de Ameth'Aran
    .accept 13584 >>Acepta la misión Calmando la tierra
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>Mata a los |cRXP_ENEMY_Enraged Tierra Elementals|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13584 >>Entrega la misión Calmando la tierra
    .accept 13585 >>Acepta la misión Juramento de protección
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 13581 >>Entrega la misión La promesa de los Bosque Negro
    .turnin 13583 >>Entrega la misión El juramento de los lechúcicos salvajes
    .turnin 13585 >>Entrega la misión Juramento de protección
    .accept 13586 >>Acepta la misión El Sueño Esmeralda
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >> Corre hacia la Caverna Rompeterra
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHaz clic en el Portal de pesadilla y habla con |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Entrega la misión El Sueño Esmeralda
    .accept 13587 >>Acepta la misión La pesadilla despierta
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>Mata al |cRXP_ENEMY_Guardián pesadilla|r. Despójalo para obtener el |cRXP_LOOT_Emerald Pergamino|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Entrega la misión La pesadilla despierta
    .accept 13940 >>Acepta la misión Despertando del sueño
    .timer 30,Despertando del sueño RP
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 13940 >> Entrega la misión Despertando del sueño
    .accept 13588 >> Acepta la misión El ojo de todas las tormentas
step
    .goto 62,43.555,53.701
    >>Habla con |cRXP_FRIENDLY_Thessera|r para tomar vuelo, usa su primera habilidad para matar a los |cRXP_ENEMY_Jinetes Crepúsculo|r y al |cRXP_ENEMY_Portal Crepuscular|r en el medio
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>Usa la segunda habilidad para aterrizar tu dragón
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 13588 >>Entrega la misión El ojo de todas las tormentas
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Lor'danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r |cRXP_WARN_patrulla por toda Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>Entrega la misión La Llama Final de Bashal'Aran
    .accept 13589 >>Acepta la misión Los invasores Rompelanzas
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Serendia Susurrárbol|r |cFFfa9602patrullando de arriba abajo por las escaleras de la posada.|r
    .turnin 13599 >>Entrega la misión El retorno de Zarpadura
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>Entrega la misión Amor eterno
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .target Gorbold Steelhand
    .accept 13560 >>Acepta la misión Un océano poco profundo
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>Haz clic en la |cRXP_PICK_Consola de control del señuelo bot|r junto a Gary
    .target Gary
    >>Usa el robot para matar a los murlocs alrededor de los barcos hundidos cercanos
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irlara Luz Diurna|r
    .trainer >> Aprende tus hechizos de clase
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanla Arcoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Aprende tus hechizos de clase
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Aprende tus hechizos de clase
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kenral Viento Nocturno|r
    .trainer >> Aprende tus hechizos de clase
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Alaluna|r
    .trainer >> Aprende tus hechizos de clase
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dular|r
    .trainer >> Aprende tus hechizos de clase
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Morra Brisa Estelar|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Entrega la misión Los invasores Rompelanzas
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 13504 >>Acepta la misión Los obreros Rompelanzas
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .accept 13505 >>Acepta la misión Las reliquias Altonato
    .target Balthule Shadowstrike
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>Mata a los |cRXP_ENEMY_Shatterspear Overseers|r. Despójales para obtener el |T134939:0|t[|cRXP_LOOT_Órdenes de sobrestante|r]
    >>|cRXP_WARN_Usa la|r |T134939:0|t[|cRXP_LOOT_Órdenes de sobrestante|r] |cRXP_WARN_para iniciar la misión|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>Acepta la misión Espías a la vista

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>Mata a los |cRXP_ENEMY_Los obreros Rompelanzas|r
    >>Despoja el |cRXP_LOOT_Highborne Relics|r en el suelo
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 13505 >>Entrega la misión Las reliquias Altonato
    .target Balthule Shadowstrike
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 13504 >>Entrega la misión Los obreros Rompelanzas
    .accept 13507 >>Acepta la misión Negar mano de obra
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Morra Brisa Estelar|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Entrega la misión Espías a la vista
    .accept 13508 >>Acepta la misión Una respuesta veloz
    .turnin 13505 >>Entrega la misión Las reliquias Altonato
    .accept 13509 >>Acepta la misión Suministros de guerra
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Mata a los |cRXP_ENEMY_Horda Enforcers|r y a los |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Usa la|r |T135433:0|t[Centinela Antorcha] |cRXP_WARN_en los |cRXP_PICK_Shatterspear Armaments|r alrededor del campamento Horda|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .target Alanndarian Nightsong
    .turnin 13508 >>Entrega la misión Una respuesta veloz
    .accept 13511 >>Acepta la misión Un deseo amargo
step
    .goto 62,64.122,5.336
    >>Mata a Rit'ko. Despoja a |cRXP_ENEMY_Rit'ko|r para obtener la |cRXP_LOOT_Shatterspear Torturer's Llave de jaula|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>Haz clic en la |cRXP_PICK_Shatterspear Jaula|r
    .target Sentinel Aynasha
    .accept 13510 >>Acepta la misión Una llegada oportuna
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_Escolta|r |cRXP_FRIENDLY_Centinela Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Mata a los |cRXP_ENEMY_Horda Enforcers|r y a los |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Usa la|r |T135433:0|t[Centinela Antorcha] |cRXP_WARN_en los |cRXP_PICK_Shatterspear Armaments|r alrededor del campamento Horda|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 13507 >>Entrega la misión Negar mano de obra
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Morra Brisa Estelar|r
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>Entrega la misión Suministros de guerra
    .turnin 13510 >>Entrega la misión Una llegada oportuna
    .turnin 13511 >>Entrega la misión Un deseo amargo
    .accept 13512 >>Acepta la misión Ataques estratégicos
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .accept 13513 >>Acepta la misión En el límite
    .target Balthule Shadowstrike
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathas Boscosalvaje|r
    .target Mathas Wildwood
    .accept 13844 >>Acepta la misión El saqueo de Althalaxx
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >> |cRXP_WARN_Usar la|r |T136021:0|t[Lanza de la Dríade] |cRXP_WARN_para matar a|r |cRXP_ENEMY_Sheya Tejetormenta|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .mob Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>Mata a los Shatterspear Shamans. Despoja a los |cRXP_ENEMY_Shatterspear Shamans|r para obtener sus |cRXP_LOOT_Shatterspear Amulets|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Mata a |cRXP_ENEMY_Teegan Holloway|r en la cima de la torre
    >>Despoja el |cRXP_LOOT_Narassin's Tomo|r ubicado en el nivel intermedio de la torre
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >> |cRXP_WARN_Usar la|r |T136021:0|t[Lanza de la Dríade] |cRXP_WARN_para matar a|r |cRXP_ENEMY_Lorenth Invocatruenos|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathas Boscosalvaje|r
    .target Mathas Wildwood
    .turnin 13844 >>Entrega la misión El saqueo de Althalaxx
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>Entrega la misión Al borde
    .target Balthule Shadowstrike
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Morra Brisa Estelar|r
    .turnin 13512 >>Entrega la misión Ataques estratégicos
    .accept 13590 >>Acepta la misión La línea de frente
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r
    .accept 13514 >>Acepta la misión La ira de los Ancestros
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >> |cRXP_WARN_Montar al|r |cRXP_FRIENDLY_Protector vengativo|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_Lanza|r |T136025:0|t[Ola de choque] (1) |cRXP_WARN_para matar a|r |cRXP_ENEMY_Shatterspear Trolls|r
    >>|cRXP_WARN_Lanza|r |T135734:0|t[Oleada lunar] (2) |cRXP_WARN_para quemar los edificios Shatterspear|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >> |cRXP_WARN_Salir de|r |cRXP_FRIENDLY_Protector vengativo|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazadora Sandrya Puestaluna|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>Entrega la misión La línea de frente
    .accept 13515 >>Acepta la misión Acabar con la amenaza
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >> Habla con |cRXP_FRIENDLY_Cazadora Sandrya Puestaluna|r para comenzar el asalto
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>Mata a Jor'kil el Desgarrador de Almas. Despoja a |cRXP_ENEMY_Jor'kil el Desgarrador de Almas|r para obtener |T133466:0|t[|cRXP_LOOT_Misiva de Grito Infernal|r]
    .use 46318 >>|cRXP_WARN_Usar|r |T133466:0|t[|cRXP_LOOT_Misiva de Grito Infernal|r] |cRXP_WARN_para comenzar la misión|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>Acepta la misión Conexiones preocupantes
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazadora Sandrya Puestaluna|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>Entrega la misión Acabar con la amenaza
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r
    .target Kerlonian Evershade
    .turnin 13514 >>Entrega la misión La ira de los Ancestros
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Lor'danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .target Gorbold Steelhand
    .turnin 13560 >>Entrega la misión Un océano poco profundo
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Glynda Nal'Shea|r, ella patrulla la zona alrededor del pozo lunar.
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>Entrega la misión Conexiones preocupantes
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .target Cerellean Whiteclaw
    .accept 13570 >>Acepta la misión Recuerdos de Auberdine
    .turnin 13570 >>Entrega la misión Recuerdos de Auberdine
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irlara Luz Diurna|r
    .trainer >> Aprende tus hechizos de clase
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanla Arcoja|r
    .trainer >> Aprende tus hechizos de clase
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Aprende tus hechizos de clase
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Aprende tus hechizos de clase
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kenral Viento Nocturno|r
    .trainer >> Aprende tus hechizos de clase
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Alaluna|r
    .trainer >> Aprende tus hechizos de clase
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dular|r
    .trainer >> Aprende tus hechizos de clase
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teldira Plumalunar|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>Vuela a El Páramo de los Ancianos
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Foriel Hojagrande|r
    .target Foriel Broadleaf
    .accept 13525 >>Acepta la misión ¿Qué ocurre con los fúrbolgs Bosque Negro?
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balren de la Garra|r
    .target Balren of the Claw
    .turnin -13902 >>Entrega la misión Preparando la ofensiva
    .accept 13892 >>Acepta la misión Sin rastro
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .accept 13881 >>Acepta la misión Consumido
step
#questguide
#completewith furbolgs
    >>Mata a los |cRXP_ENEMY_Consumed Thistle Osos|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_Nada hacia el |cRXP_PICK_Artefacto devorador|r bajo el agua|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Brolg|r
    .target Elder Brolg
    .turnin 13525 >>Entrega la misión ¿Qué ocurre con los fúrbolgs Bosque Negro?
    .accept 13526 >>Acepta la misión La pata de oso
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Despoja las |cRXP_LOOT_Patas de Oso|r en el suelo
    >>|cRXP_WARN_Parecen pequeñas plantas|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >> Viaja a La Espada del Maestro
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >> |cRXP_WARN_Usa la|r |T133236:0|t[Pantera Figurine] |cRXP_WARN_para transformarte en una Pantera|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_Ve al |cRXP_ENEMY_Supervisor Balsoth|r y espera a que termine el roleplay|r
    >>|cRXP_WARN_Nota que si recibes daño de caída, perderás el efecto Pantera|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>Haz clic en la ventana emergente de misión debajo de tu minimapa para entregar la misión
    >>|cRXP_WARN_Si no puedes hacer esto, regresa y habla con|r |cRXP_FRIENDLY_Balren de la Garra|r
    .turnin 13892 >>Entrega la misión Sin rastro
    .accept 13948 >>Acepta la misión Aumentando la vigilancia
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >> |cRXP_WARN_Usa la|r |T133236:0|t[Pantera Figurine] |cRXP_WARN_para transformarte en una Pantera de nuevo|r
    >>|cRXP_WARN_Escabúllete hacia|r |cRXP_ENEMY_Augurador Trevellion|r |cRXP_WARN_todo el camino hasta la cima del andamio. Espera a que termine el roleplay de nuevo|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Faceless Ones|r porque tienen detección de sigilo|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Brolg|r
    .target Elder Brolg
    .turnin 13526 >>Entrega la misión La pata de oso
    .accept 13544 >>Acepta la misión La bendición del oso
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>Mata al |cRXP_ENEMY_Pataveloz|r. Despójalo por sus |cRXP_LOOT_Tailfeathers|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Mata a los |cRXP_ENEMY_Consumed Thistle Osos|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >> |cRXP_WARN_Usa el|r |T134189:0|t[Oso's Paw Bundle] |cRXP_WARN_junto a la|r |cRXP_PICK_Ancient Oso Estatua|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balren de la Garra|r y |cRXP_FRIENDLY_Larien|r
    .turnin 13948 >>Entrega la misión Aumentando la vigilancia
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>Acepta la misión Conocimientos desenterrados
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .turnin 13881 >>Entrega la misión Consumido
    .accept 13882 >>Acepta la misión Las semillas de la vida
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r para recibir la |cRXP_LOOT_Seed of the Tierra|r
    .complete 13882,1
    .skipgossip
    .target Onu
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>|cRXP_WARN_Busca los |cRXP_FRIENDLY_Darkshore Wisps|r volando alrededor. Haz clic en ellos una vez que se acerquen al suelo|r
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Brolg|r y |cRXP_FRIENDLY_Gren Pelajirón|r
    .turnin 13544 >>Entrega la misión La bendición del oso
    .accept 13545 >>Acepta la misión Purificando a los afectados
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>Acepta la misión Los blandones Fuego de Jade
    .target +Gren Tornfur
    .goto 62,43.576,81.023
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Haz clic en los |cRXP_PICK_Blandones Fuego de Jade|r esparcidos alrededor del campamento
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_Usa el|r |T237425:0|t[Fardo de hierbas benditas] |cRXP_WARN_en un |cRXP_ENEMY_Fúrbolg Bosque Negro|r, luego mata al|r |cRXP_ENEMY_Espíritu de corrupción|r |cRXP_WARN_que aparece|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gren Pelajirón|r y |cRXP_FRIENDLY_Anciano Brolg|r
    .turnin 13572 >>Entrega la misión Los blandones Fuego de Jade
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>Entrega la misión Purificando a los afectados
    .accept 13546 >>Acepta la misión El Rapiñador
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>Mata a |cRXP_ENEMY_Sharax el Rapiñador|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anciano Brolg|r
    .target Elder Brolg
    .turnin 13546 >>Entrega la misión El Rapiñador
step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>Abre las |cRXP_PICK_Conchas brillantes|r en el suelo. Despójalas para obtener la |cRXP_LOOT_Seed of the Sea|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Entrega la misión Conocimientos desenterrados
    .accept 13893 >>Acepta la misión Soggoth y Kronn
    .accept 13907 >>Acepta la misión Limpiando las ruinas
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Jr. Ferd|r
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Acepta la misión Secretos abrumadores
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    .target Prospector Remtravel
    .accept 13911 >>Acepta la misión El prospector distraído
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
step
#questguide
    #completewith prospector
    #optional
    >>Mata a los |cRXP_ENEMY_Greymist Refugees|r y al |cRXP_ENEMY_Oráculo Brumagris|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Prospector Tripirrem|r por el sitio de excavación|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Jr. Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>Entrega la misión El prospector distraído
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>Haz clic en |cRXP_PICK_Mud-Crusted Ancient Disco|r bajo el agua
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Mata a los |cRXP_ENEMY_Greymist Refugees|r y al |cRXP_ENEMY_Oráculo Brumagris|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13907 >>Entrega la misión Limpiando las ruinas
    .accept 13909 >>Acepta la misión ¿Restos flotantes?
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Jr. Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>Entrega la misión Secretos abrumadores
    .accept 13918 >>Acepta la misión La terminal de los titanes
step
#questguide
#completewith next
    >>Despoja los |cRXP_PICK_Escombros Brumagris Flotantes|r a lo largo de la costa
    .complete 13909,1
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>|cRXP_WARN_Usa el|r |T134519:0|t[Enterrado Artefacto Detector] |cRXP_WARN_para revelar los |cRXP_PICK_Escombros enterrados|r a lo largo de la costa. Despoja los objetos para obtener|r |cRXP_LOOT_Fragmento de aparato antiguo|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>Despoja los |cRXP_PICK_Escombros Brumagris Flotantes|r a lo largo de la costa
    .complete 13909,1
step
#questguide
    .use 46702 >> |cRXP_WARN_Usa el|r |T132997:0|t[Fragmento de aparato antiguo] |cRXP_WARN_para combinarlos para obtener|r |cRXP_LOOT_Dispositivo ranurado antiguo|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Groff|r y |cRXP_FRIENDLY_Arqueólogo Jr. Ferd|r
    .turnin 13909 >>Entrega la misión ¿Restos flotantes?
    .accept 13910 >>Acepta la misión Un nuevo hogar
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>Entrega la misión La terminal de los titanes
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >> |cRXP_WARN_Usa el|r |T132281:0|t[Marvelous Mobile Múrloc Manor Maker] |cRXP_WARN_junto al|r |cRXP_PICK_Sitio de construcción múrloc Brumagris|r
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13910 >>Entrega la misión Un nuevo hogar
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larien|r
    .target Larien
    .turnin 13893 >>Entrega la misión Soggoth y Kronn
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .turnin 13882 >>Entrega la misión Las semillas de la vida
    .accept 13925 >>Acepta la misión Una pizca de prevención
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .target Onu
    .accept 13895 >>Acepta la misión Los ancestros del sueño
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aros|r
    .target Aros
    .turnin 13895 >>Entrega la misión Los ancestros del sueño
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asesino Escama Oscura|r
    .target Darkscale Assassin
    .accept 13953 >>Acepta la misión El disfraz de los nagas
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balren de la Garra|r y |cRXP_FRIENDLY_Felros|r
    .turnin 13953 >>Entrega la misión El disfraz de los nagas
    .accept 13899 >>Acepta la misión El señor de la guerra Escama Oscura
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>Acepta la misión Olas rebeldes
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>|cRXP_WARN_Use the|r |T133749:0|t[Lifebringer Retoño] |cRXP_WARN_on a |cRXP_ENEMY_Venado Coliblanca|r, |cRXP_ENEMY_Oso cardo grisáceo|r, |cRXP_ENEMY_Matriarca Acechalunas|r or|r |cRXP_ENEMY_Patriarca Acechalunas|r
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .turnin 13925 >>Entrega la misión Una pizca de prevención
    .accept 13885 >>Acepta la misión En defensa de Costa Oscura
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >> |cRXP_WARN_Hablar a |cRXP_FRIENDLY_Orseus|r para montar un |cRXP_FRIENDLY_Hipogrifo|r
    .skipgossip
step
#questguide
    >>|cRXP_WARN_Cast|r |T136065:0|t[Protección de la fauna y flora] (1) |cRXP_WARN_on |cRXP_ENEMY_Grizzled Thistle Osos|r, |cRXP_ENEMY_Moonstalkers|r and|r |cRXP_ENEMY_Whitetail Ciervo|r
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .turnin 13885 >>Entrega la misión En defensa de Costa Oscura
    .accept 13891 >>Acepta la misión El devorador de Costa Oscura
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >> |cRXP_WARN_Use the|r |T133749:0|t[Lifebringer Retoño] |cRXP_WARN_at the |cRXP_PICK_Devouring Artefacto|r underwater to summon|r |cRXP_ENEMY_Yoth'al el Devorador|r
    .timer 10,El devorador de Costa Oscura RP
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >> Mata al |cRXP_ENEMY_Yoth'al el Devorador|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>Mata a los |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Mata al |cRXP_ENEMY_Señor de la guerra Espinas de ira|r
    >>Haz clic en el cadáver del |cRXP_FRIENDLY_Señor de la Guerra Wrathspines|r
    .mob Warlord Wrathspine
    .turnin 13899 >>Entrega la misión El señor de la guerra Escama Oscura
    .accept 13900 >>Acepta la misión La ofrenda a Azshara
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_Exit the cave and head to the terrace above the entrance|r
    >>Mata a las |cRXP_ENEMY_Darkscale Priestesses|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,La ofrenda a Azshara RP
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +|cRXP_WARN_Wait out the RP with |cRXP_ENEMY_Reina Azshara|r and wait for |cRXP_FRIENDLY_Malfurion Tempestira|r to arrive|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .turnin 13900 >>Entrega la misión La ofrenda a Azshara
    .accept 13897 >> Acepta la misión La batalla por Costa Oscura
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>Mata a los |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>|cRXP_WARN_Travel to the La Espada del Maestro and use the|r |T237377:0|t[Cuerno de los ancestros]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>Mata al |cRXP_ENEMY_Avatar de Soggoth|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balren de la Garra|r
    .turnin 13897 >>Entrega la misión La batalla por Costa Oscura
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Entrega la misión Olas rebeldes
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kathrena Fatuinvierno|r
    .target Kathrena Winterwisp
    .turnin 13891 >>Entrega la misión El devorador de Costa Oscura
step
#questguide
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Lor'danel
]])
