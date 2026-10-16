if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-18 Sombrivage
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .turnin 26383 >>Rendez la quête Vagues du changement brisantes << !Worgen
    .turnin 26385 >>Rendez la quête Vagues du changement brisantes << Worgen
    .accept 13518 >>Acceptez la quête La Dernière Vague de survivants
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .accept 13518 >>Acceptez la quête La Dernière Vague de survivants
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r
    .accept 13522 >>Acceptez la quête Menace venue de l'eau
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Tuez les |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Blanchegriffe|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Tuez les |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r
    .turnin 13522 >>Rendez la quête Menace venue de l'eau
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dentaria Reflet-d'Argent|r
    .turnin 13518 >>Rendez la quête La Dernière Vague de survivants
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Serendia Souffle-chêne|r |cFFfa9602patrolling up and down the stairs in the Auberge|r
    .accept 13520 >>Acceptez la quête Le Bienfait des mers
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aubergiste Kyteran|r
    .home >>Définissez votre Pierre de foyer à Lor’danel
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r.
    .accept 13521 >>Acceptez la quête Bourdon-boxe 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Corrupted Tide Crawlers|r. Ramassez-les pour obtenir leur |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Ramassez les |cRXP_PICK_Palourdes incrustées|r sous l'eau
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Tuez les |cRXP_ENEMY_Corrupted Tide Crawlers|r. Ramassez-les pour obtenir leur |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>Cliquez sur le |cRXP_PICK_Bourdon-boxe 413|r sur le sol
    .turnin 13521 >>Rendez la quête Bourdon-boxe 413
    .accept 13527 >>Acceptez la quête Les questions de goût, ça ne se discute pas…
step
    .goto 62,55.1,21.0
    >>Ramassez le |cRXP_FRIENDLY_Ours des chardons en décomposition|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r.
    .turnin 13527 >>Rendez la quête Les questions de goût, ça ne se discute pas…
    .accept 13528 >>Acceptez la quête Bigobox 723
	.target Wizbang Cranktoggle
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Serendia Souffle-chêne|r |cFFfa9602patrolling up and down the stairs in the Auberge.|r
    .turnin 13520 >>Rendez la quête Le don des mers
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irlara Clairematin|r
    .trainer >> Apprenez vos sorts de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanla Feuille-arc|r
    .trainer >> Apprenez vos sorts de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Apprenez vos sorts de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Apprenez vos sorts de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kenral Ventenuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Aile-de-lune|r
    .trainer >> Apprenez vos sorts de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dular|r
    .trainer >> Apprenez vos sorts de classe
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Tuez |cRXP_ENEMY_Ours|r. Ramassez-les pour leurs |cRXP_LOOT_Tripes d'ours des chardons corrompu|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>Cliquez sur |cRXP_PICK_Bigobox 723|r sur le sol
    .turnin 13528 >>Rendez la quête Bigobox 723
    .accept 13554 >>Acceptez la quête Un remède dans l'obscurité
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun|r
    .accept 13529 >>Acceptez la quête La source de la corruption
	.target Tharnariun
step
    #completewith GrellsIchor
	>>Tuez |cRXP_ENEMY_Vile Grells|r et |cRXP_ENEMY_Vile Corrupters|r. Ramassez-les pour leurs |cRXP_LOOT_Foul Ichor|r et la |T134245:0|t[|cRXP_LOOT_Corruptor's Passe-partout|r]
    .use 44927 >>|cRXP_WARN_Utilisez la|r |T134245:0|t[|cRXP_LOOT_Corruptor's Passe-partout|r] |cRXP_WARN_pour commencer la quête|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Acceptez la quête Le porte-chance
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
    >>Ouvrez les |cRXP_PICK_Cages|r à travers la grotte
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Tuez |cRXP_ENEMY_Zenn Vilsabot|r
    >>|cRXP_ENEMY_Zenn Vilsabot|r |cRXP_WARN_se trouve au niveau inférieur de la grotte|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>Cliquez sur |cRXP_PICK_Disgusting Workbench|r à l'arrière de la grotte
    .accept 13831 >>Acceptez la quête Une troublante prescription
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>Tuez les |cRXP_ENEMY_Vile Grells|r et les |cRXP_ENEMY_Vile Corrupters|r. Ramassez-les pour leur |cRXP_LOOT_Foul Ichor|r et le |T134245:0|t[|cRXP_LOOT_Clé originale du corrupteur|r]
    .use 44927 >>|cRXP_WARN_Utilisez la|r |T134245:0|t[|cRXP_LOOT_Clé originale du corrupteur|r] |cRXP_WARN_pour commencer la quête|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Acceptez la quête Le porte-chance
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Lor'Danel
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r et à |cRXP_FRIENDLY_Tharnariun Soigneflore|r
    .turnin 13554 >>Rendez la quête Un remède dans l'obscurité
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>Rendez la quête Une troublante prescription
    .turnin 13831 >>Rendez la quête Une troublante prescription
    .turnin 13529 >>Rendez la quête La source de la corruption
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    .target Volcor
    .accept 13564 >>Acceptez la quête Un compagnon perdu
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13563 >>Acceptez la quête Un amour éternel
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r |cRXP_WARN_patrols throughout Lor’danel|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Acceptez la quête La dernière flamme de Bashal’Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arya Clairautomne|r
    .target Arya Autumnlight
    .accept 13561 >>Acceptez la quête Du réconfort pour les Bien-nés
step
    .goto 62,45.958,34.240
    >>Cliquez sur |cRXP_PICK_The Dernière flamme of Bashal’Aran|r sur le sol
    .complete 13562,1
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>Tuez |cRXP_ENEMY_Anaya Coursaurore|r. Dépouillez-la pour le |cRXP_LOOT_Pendentif d'Anaya|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r et les |cRXP_ENEMY_Bien-nés frémissants|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arya Clairautomne|r
    .target Arya Autumnlight
    .turnin 13561 >>Rendez la quête Du réconfort pour les Bien-nés
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien Karithus|r
    .target Keeper Karithus
    .turnin 13564 >>Rendez la quête Un compagnon perdu
    .accept 13566 >>Acceptez la quête Des matériaux pour le rituel
    .accept 13598 >>Acceptez la quête Des remèdes déplaisants
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Séraphine|r
    .target Seraphine
    .accept 13565 >>Acceptez la quête De lointains cousins
step
    .goto 62,40.944,38.615
    >>Cliquez sur les |cRXP_PICK_Moonstalkers|r dormants à côté des arbres pour ramasser leurs |cRXP_LOOT_Moustaches|r
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Cliquez sur les |cRXP_PICK_Mottled Does|r pour ramasser leurs |cRXP_LOOT_Cheveux|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>Tuez |cRXP_ENEMY_Dame Janira|r
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
    >>Ramassez les |cRXP_LOOT_Fuming Toadstools|r sur le sol
    .use 45911 >>Tuez |cRXP_ENEMY_Darkscale Repérage|r. |cRXP_WARN_Use the|r |T134413:0|t[Racine pétrifiée] |cRXP_WARN_on their corpses|r
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Cliquez sur les |cRXP_PICK_Hungry Thistle Ours|r buvant de l'eau à côté du lit de la rivière pour ramasser leurs |cRXP_LOOT_Fur|r
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Séraphine|r
    .target Seraphine
    .turnin 13565 >>Rendez la quête De lointains cousins
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Rendez la quête Des matériaux pour le rituel
    .turnin 13598 >>Rendez la quête Des remèdes déplaisants
    .accept 13569 >>Acceptez la quête Le lien rituel
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >> Cliquez sur |cRXP_PICK_Grovekeeper's Encens|r sur le sol
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>Parlez au |cRXP_FRIENDLY_Grand esprit cerf|r
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gardien Karithus|r
    .target Keeper Karithus
    .turnin 13569 >>Rendez la quête Le lien rituel
    .accept 13599 >>Acceptez la quête Le retour de Griffe-sinistre
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Alinya|r
    .target Priestess Alinya
    .turnin 13601 >>Rendez la quête Au secours des réfugiés
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Selarin|r et à |cRXP_FRIENDLY_Corvin Aubelune|r
    .accept 13542 >>Acceptez la quête Contre le vent
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>Acceptez la quête Trois marteaux à briser
    .accept 13573 >>Acceptez la quête Le retour de Malfurion
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>Tuez les |cRXP_ENEMY_Frénétique Cyclones|r. Ramassez-les pour leurs |T236968:0|t[|cRXP_LOOT_Brassards de cyclone frénétique|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Tuez |cRXP_ENEMY_Dompteuse de nuages Crin-Sauvage|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Tuez |cRXP_ENEMY_Seigneur du ciel Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>Tuez |cRXP_ENEMY_Dompteuse de nuages Crin-Sauvage|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Tuez les |cRXP_ENEMY_Frénétique Cyclones|r. Ramassez-les pour leurs |T236968:0|t[|cRXP_LOOT_Brassards de cyclone frénétique|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_Utilisez la|r |T236968:0|t[Brassards de cyclone frénétique] |cRXP_WARN_à côté du puits de lune d'Auberdine|r
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Sentinelle Selarin|r et à |cRXP_FRIENDLY_Corvin Aubelune|r
    .turnin 13542 >>Rendez la quête Contre le vent
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>Rendez la quête Trois marteaux à briser
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 13573 >>Rendez la quête Le retour de Malfurion
    .accept 13575 >>Acceptez la quête Cette terre est dans leurs veines
    .accept 13577 >>Acceptez la quête Le dernier Indomptable
    .accept 13579 >>Acceptez la quête Le protecteur d'Ameth’Aran
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13577 >>Rendez la quête Le dernier Indomptable
    .accept 13578 >>Acceptez la quête L'adieu d'Aroom
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>Ramassez les |cRXP_LOOT_Slain Wildkin Plumes|r sur le sol
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13578 >>Rendez la quête L'adieu d'Aroom
    .accept 13582 >>Acceptez la quête Le feu d'Élune
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>Tuez |cRXP_ENEMY_Horoo le Gardien des flammes|r. Dépouillez-le pour |cRXP_LOOT_Torche d'Élune|r
    >>|cRXP_ENEMY_Horoo le Gardien des flammes|r |cRXP_WARN_patrouille légèrement|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13582 >>Rendez la quête Le feu d'Élune
    .accept 13583 >>Acceptez la quête Le serment de l'Indomptable
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Ancien Brunepatte|r
    .target Elder Brownpaw
    .turnin 13575 >>Rendez la quête Cette terre est dans leurs veines
    .accept 13576 >>Acceptez la quête Assistance mutuelle

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Tuez les |cRXP_ENEMY_Unbound (Feu) Elementals|r
    >>|cRXP_WARN_Utilisez le|r |T136061:0|t[Totem d'apaisement] |cRXP_WARN_sur leurs cadavres|r
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Ancien Brunepatte|r
    .target Elder Brownpaw
    .turnin 13576 >>Rendez la quête Assistance mutuelle
    .accept 13580 >>Acceptez la quête Apaiser les éléments
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >> Rendez-vous à l'autel au sommet de la petite colline
step
    .goto 62,39.66,62.12
    .cast 65361 >> |cRXP_WARN_Utilisez le|r |T135839:0|t[Totem apaisant énergisé] |cRXP_WARN_à côté de l'autel, puis défendez-le|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >> |cRXP_WARN_Défendez le|r |T135839:0|t[Totem apaisant énergisé] |cRXP_WARN_contre les attaquants|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Ancien Brunepatte|r
    .target Elder Brownpaw
    .turnin 13580 >>Rendez la quête Apaiser les éléments
    .accept 13581 >>Acceptez la quête Le serment des Noirbois
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13579 >>Rendez la quête Le protecteur d'Ameth’Aran
    .accept 13584 >>Acceptez la quête Calmer la terre
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>Tuez les |cRXP_ENEMY_Enraged Terre Elementals|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13584 >>Rendre la quête Calmer la terre
    .accept 13585 >>Accepter la quête Le serment de protéger
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 13581 >>Rendre la quête Le serment des Noirbois
    .turnin 13583 >>Rendre la quête Le serment de l'Indomptable
    .turnin 13585 >>Rendre la quête Le serment de protéger
    .accept 13586 >>Accepter la quête Le Rêve d'émeraude
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >> Rendez-vous vers la Caverne de Brise-Terre
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCliquez sur le Portail cauchemardesque et parlez à |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Rendre la quête Le Rêve d'émeraude
    .accept 13587 >>Accepter la quête Cauchemar éveillé
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>Tuez le |cRXP_ENEMY_Gardien cauchemardesque|r. Ramassez-le pour le |cRXP_LOOT_Emerald Parchemin|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Rendre la quête Cauchemar éveillé
    .accept 13940 >>Accepter la quête La fin du rêve
    .timer 30,La fin du rêve JDR
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 13940 >> Rendre la quête La fin du rêve
    .accept 13588 >> Accepter la quête L'œil de toutes les tempêtes
step
    .goto 62,43.555,53.701
    >>Parlez à |cRXP_FRIENDLY_Thessera|r pour prendre Vol, utilisez sa première capacité pour tuer |cRXP_ENEMY_Twilight Riders|r et le |cRXP_ENEMY_Portail du Crépuscule|r au milieu
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>Utilisez la deuxième capacité pour faire atterrir votre drake
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .target Malfurion Stormrage
    .turnin 13588 >>Rendre la quête L'œil de toutes les tempêtes
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Lor’danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r |cRXP_WARN_patrouille partout à Lor’danel|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>Rendre la quête La dernière flamme de Bashal’Aran
    .accept 13589 >>Accepter la quête Les envahisseurs briselances
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Serendia Souffle-chêne|r |cFFfa9602patrouillant les escaliers de l'auberge.|r
    .turnin 13599 >>Rendre la quête Le retour de Griffe-sinistre
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>Rendre la quête Un amour éternel
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .accept 13560 >>Accepter la quête Un océan pas si profond
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>Cliquez sur le |cRXP_PICK_Console de contrôle du Leurre Bot|r à côté de Gary
    .target Gary
    >>Utilisez le robot pour tuer les murlocs autour des navires coulés
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irlara Clairematin|r
    .trainer >> Apprenez vos sorts de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanla Feuille-arc|r
    .trainer >> Apprenez vos sorts de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Apprenez vos sorts de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Apprenez vos sorts de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kenral Ventenuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Aile-de-lune|r
    .trainer >> Apprenez vos sorts de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dular|r
    .trainer >> Apprenez vos sorts de classe
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Morra Soufflétoile|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Rendre la quête Les envahisseurs briselances
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 13504 >>Accepter la quête Les travailleurs briselances
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13505 >>Accepter la quête Les vestiges des Bien-nés
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
    .use 44979>>Tuez |cRXP_ENEMY_Shatterspear Overseers|r. Ramassez-les pour le |T134939:0|t[|cRXP_LOOT_Ordres du surveillant|r]
    >>|cRXP_WARN_Utilisez le|r |T134939:0|t[|cRXP_LOOT_Ordres du surveillant|r] |cRXP_WARN_pour commencer la quête|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>Accepter la quête Des raisons de s'inquiéter

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>Tuez |cRXP_ENEMY_Les travailleurs briselances|r
    >>Ramassez les |cRXP_LOOT_Highborne Relics|r par terre
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 13505 >>Rendre la quête Les vestiges des Bien-nés
    .target Balthule Shadowstrike
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 13504 >>Rendre la quête Les travailleurs briselances
    .accept 13507 >>Accepter la quête Privation de personnel
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Morra Soufflétoile|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Rendez la quête Des raisons de s'inquiéter
    .accept 13508 >>Acceptez la quête Une réponse rapide
    .turnin 13505 >>Rendez la quête Les vestiges des Bien-nés
    .accept 13509 >>Acceptez la quête Fournitures de guerre
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Tuez |cRXP_ENEMY_Horde Enforcers|r et |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Utilisez la|r |T135433:0|t[Sentinelle Torche] |cRXP_WARN_sur les |cRXP_PICK_Shatterspear Armaments|r autour du camp de la Horde|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .target Alanndarian Nightsong
    .turnin 13508 >>Rendez la quête Une réponse rapide
    .accept 13511 >>Acceptez la quête Un vœu amer
step
    .goto 62,64.122,5.336
    >>Tuez |cRXP_ENEMY_Rit'ko|r. Butin le pour la |cRXP_LOOT_Shatterspear Torturer's Clé de cage|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>Cliquez sur le |cRXP_PICK_Shatterspear Cage|r
    .target Sentinel Aynasha
    .accept 13510 >>Acceptez la quête Une arrivée providentielle
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_Escortez|r |cRXP_FRIENDLY_Sentinelle Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Tuez |cRXP_ENEMY_Horde Enforcers|r et |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Utilisez la|r |T135433:0|t[Sentinelle Torche] |cRXP_WARN_sur les |cRXP_PICK_Shatterspear Armaments|r autour du camp de la Horde|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 13507 >>Rendez la quête Privation de personnel
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Morra Soufflétoile|r
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>Rendez la quête Fournitures de guerre
    .turnin 13510 >>Rendez la quête Une arrivée providentielle
    .turnin 13511 >>Rendez la quête Un vœu amer
    .accept 13512 >>Acceptez la quête Frappes stratégiques
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13513 >>Acceptez la quête Sur le fil
    .target Balthule Shadowstrike
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathas Boissauvage|r
    .target Mathas Wildwood
    .accept 13844 >>Acceptez la quête Le pillage d'Althalaxx
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >> |cRXP_WARN_Utilisez la|r |T136021:0|t[Lance de dryade] |cRXP_WARN_pour tuer|r |cRXP_ENEMY_Sheya Tissetempête|r
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
    >>Tuez |cRXP_ENEMY_Shatterspear Shamans|r. Butin les pour leurs |cRXP_LOOT_Shatterspear Amulets|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Tuez |cRXP_ENEMY_Teegan Holloway|r au sommet de la tour
    >>Ramassez |cRXP_LOOT_Narassin's Entités de Cata|r situé au niveau intermédiaire de la tour
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >> |cRXP_WARN_Utilisez la|r |T136021:0|t[Lance de dryade] |cRXP_WARN_pour tuer|r |cRXP_ENEMY_Lorenth Mandetonnerre|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathas Boissauvage|r
    .target Mathas Wildwood
    .turnin 13844 >>Rendez la quête Le pillage d'Althalaxx
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>Rendez la quête Sur le fil
    .target Balthule Shadowstrike
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lieutenant Morra Soufflétoile|r
    .turnin 13512 >>Rendez la quête Frappes stratégiques
    .accept 13590 >>Acceptez la quête La ligne de front
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    .accept 13514 >>Acceptez la quête Le courroux des anciens
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >> |cRXP_WARN_Montez le|r |cRXP_FRIENDLY_Vengeful Protector|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_Lancez|r |T136025:0|t[Onde de choc] (1) |cRXP_WARN_pour tuer|r |cRXP_ENEMY_Shatterspear Trolls|r
    >>|cRXP_WARN_Lancez|r |T135734:0|t[Éruption lunaire] (2) |cRXP_WARN_pour brûler les bâtiments Pic-éclaté|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >> |cRXP_WARN_Quittez le|r |cRXP_FRIENDLY_Vengeful Protector|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseresse Sandrya Tombelune|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>Rendez la quête La ligne de front
    .accept 13515 >>Acceptez la quête Mettre un terme à la menace
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >> Parlez à |cRXP_FRIENDLY_Chasseresse Sandrya Tombelune|r pour commencer l'assaut
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>Tuez |cRXP_ENEMY_Jor'kil le Faucheur d'âmes|r. Dépouillez-le pour la |T133466:0|t[|cRXP_LOOT_Lettre de Hurlenfer|r]
    .use 46318 >>|cRXP_WARN_Utiliser|r |T133466:0|t[|cRXP_LOOT_Lettre de Hurlenfer|r] |cRXP_WARN_pour commencer la quête|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>Acceptez la quête Des liens inquiétants
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chasseresse Sandrya Tombelune|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>Rendez la quête Mettre un terme à la menace
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kerlonian Eternombre|r
    .target Kerlonian Evershade
    .turnin 13514 >>Rendez la quête Le courroux des anciens
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Lor’danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .turnin 13560 >>Rendez la quête Un océan pas si profond
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Forestier Glynda Nal'Shea|r, elle patrouille autour du puits de lune.
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>Rendez la quête Des liens inquiétants
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13570 >>Acceptez la quête Souvenirs d'Auberdine
    .turnin 13570 >>Rendez la quête Souvenirs d'Auberdine
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irlara Clairematin|r
    .trainer >> Apprenez vos sorts de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanla Feuille-arc|r
    .trainer >> Apprenez vos sorts de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Apprenez vos sorts de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Apprenez vos sorts de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kenral Ventenuit|r
    .trainer >> Apprenez vos sorts de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Aile-de-lune|r
    .trainer >> Apprenez vos sorts de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dular|r
    .trainer >> Apprenez vos sorts de classe
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teldira Plumelune|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>Envolez-vous vers Bosquet des Anciens
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foriel Largefeuille|r
    .target Foriel Broadleaf
    .accept 13525 >>Acceptez la quête Qu'arrive-t-il aux Furbolgs noirbois ?
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balren of the Griffe|r
    .target Balren of the Claw
    .turnin -13902 >>Rendez la quête Monter l'offensive
    .accept 13892 >>Acceptez la quête Ne laissez aucune trace
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .accept 13881 >>Acceptez la quête Consumés
step
#questguide
#completewith furbolgs
    >>Tuez |cRXP_ENEMY_Consumed Thistle Ours|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_Nagez vers l'|cRXP_PICK_Artéfact dévorant|r sous l'eau|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Brolg|r
    .target Elder Brolg
    .turnin 13525 >>Rendez la quête Qu'arrive-t-il aux Furbolgs noirbois ?
    .accept 13526 >>Acceptez la quête La patte d'ours
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Ramassez les |cRXP_LOOT_Bear's Paws|r sur le sol
    >>|cRXP_WARN_Elles ressemblent à de petites plantes|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >> Voyagez jusqu'à le Glaive du Maître
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >> |cRXP_WARN_Utilisez le|r |T133236:0|t[Figurine de panthère] |cRXP_WARN_pour vous transformer en une Panthère|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_Tête à |cRXP_ENEMY_Contremaître Balsoth|r et attendez la fin du jeu de rôle|r
    >>|cRXP_WARN_Remarque si vous prenez des dégâts de chute, vous perdrez l'effet Panthère|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>Cliquez sur la fenêtre de quête sous votre minicarte pour rendre la quête
    >>|cRXP_WARN_Si vous ne pouvez pas le faire, retournez en arrière et parlez à|r |cRXP_FRIENDLY_Balren of the Griffe|r
    .turnin 13892 >>Rendez la quête Ne laissez aucune trace
    .accept 13948 >>Acceptez la quête Améliorer la surveillance
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >> |cRXP_WARN_Utilisez le|r |T133236:0|t[Figurine de panthère] |cRXP_WARN_pour vous transformer en une Panthère à nouveau|r
    >>|cRXP_WARN_Approchez-vous furtivement de|r |cRXP_ENEMY_Orateur funeste Trevellion|r |cRXP_WARN_tout en haut de l'échafaudage. Attendez la fin de la cinématique à nouveau|r
    >>|cRXP_WARN_Évitement |cRXP_ENEMY_Faceless Ones|r car ils ont la détection de furtivité|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Brolg|r
    .target Elder Brolg
    .turnin 13526 >>Rendez la quête La patte d'ours
    .accept 13544 >>Acceptez la quête La bénédiction de l'ours
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>Mort |cRXP_ENEMY_Pied-léger|r. Butin le pour ses |cRXP_LOOT_Tailfeathers|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Tuez les |cRXP_ENEMY_Consumed Thistle Ours|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >> |cRXP_WARN_Utilisez le|r |T134189:0|t[Ours's Paw Bundle] |cRXP_WARN_à côté du|r |cRXP_PICK_Ancient Ours Statue|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balren of the Griffe|r et |cRXP_FRIENDLY_Larien|r
    .turnin 13948 >>Rendez la quête Améliorer la surveillance
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>Acceptez la quête Connaissances déterrées
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .turnin 13881 >>Rendez la quête Consumés
    .accept 13882 >>Acceptez la quête Les graines de la vie
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r pour recevoir la |cRXP_LOOT_Graine de la Terre|r
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
    >>|cRXP_WARN_Cherchez les |cRXP_FRIENDLY_Darkshore Wisps|r qui volent. Cliquez sur eux une fois qu'ils approchent du sol|r
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Brolg|r et |cRXP_FRIENDLY_Gren Poil-Semé|r
    .turnin 13544 >>Rendez la quête La bénédiction de l'ours
    .accept 13545 >>Acceptez la quête Purifier les souffrants
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>Acceptez la quête Les braseros jadefeu
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
    >>Cliquez sur les |cRXP_PICK_Jadefire Braziers|r dispersés autour du camp
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_Utilisez le|r |T237425:0|t[Paquet d'herbes bénites] |cRXP_WARN_sur un |cRXP_ENEMY_Furbolg Noirbois|r, puis tuez le|r |cRXP_ENEMY_Esprit de corruption|r |cRXP_WARN_qui apparaît|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gren Poil-Semé|r et |cRXP_FRIENDLY_Ancien Brolg|r
    .turnin 13572 >>Rendez la quête Les braseros jadefeu
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>Rendez la quête Purifier les souffrants
    .accept 13546 >>Acceptez la quête Le Souilleur
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>Tuez |cRXP_ENEMY_Sharax le Souilleur|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Brolg|r
    .target Elder Brolg
    .turnin 13546 >>Rendez la quête Le Souilleur
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
    >>Ouvrez les |cRXP_PICK_Glittering Carapaces|r sur le sol. Ramassez le butin pour la |cRXP_LOOT_Seed of the Mer|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Rendez la quête Connaissances déterrées
    .accept 13893 >>Acceptez la quête Soggoth et Kronn
    .accept 13907 >>Acceptez la quête Nettoyer les ruines
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apprenti archéologue Ferd|r
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Acceptez la quête Secrets embourbés
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    .target Prospector Remtravel
    .accept 13911 >>Acceptez la quête Les absences du Prospecteur
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
step
#questguide
    #completewith prospector
    #optional
    >>Tuez les |cRXP_ENEMY_Greymist Refugees|r et les |cRXP_ENEMY_Greymist Oracle|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospecteur Songerrance|r à travers le site d'excavation|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apprenti archéologue Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>Rendez la quête Les absences du Prospecteur
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>Cliquez sur les |cRXP_PICK_Mud-Crusted Ancient Discipline|r sous l'eau
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Tuez les |cRXP_ENEMY_Greymist Refugees|r et les |cRXP_ENEMY_Greymist Oracle|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Groff|r
    .target Archaeologist Groff
    .turnin 13907 >>Rendez la quête Nettoyer les ruines
    .accept 13909 >>Acceptez la quête Vous avez des débris ?
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apprenti archéologue Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>Rendez la quête Secrets embourbés
    .accept 13918 >>Acceptez la quête Le terminal des titans
step
#questguide
#completewith next
    >>Ramassez le |cRXP_PICK_Floating Brume grise Débris|r le long de la côte
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
    .use 46388 >>|cRXP_WARN_Utilisez le|r |T134519:0|t[Enfoui Artéfact Détecteur] |cRXP_WARN_pour révéler le |cRXP_PICK_Buried Débris|r le long de la côte. Ramassez-les pour la|r |cRXP_LOOT_Fragment d'un ancien mécanisme|r
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
    >>Ramassez le |cRXP_PICK_Floating Brume grise Débris|r le long de la côte
    .complete 13909,1
step
#questguide
    .use 46702 >> |cRXP_WARN_Utilisez le|r |T132997:0|t[Fragment d'un ancien mécanisme] |cRXP_WARN_pour les combiner pour former le|r |cRXP_LOOT_Mécanisme antique pourvu d'une fente|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Groff|r et |cRXP_FRIENDLY_Apprenti archéologue Ferd|r
    .turnin 13909 >>Rendez la quête Vous avez des débris ?
    .accept 13910 >>Acceptez la quête Un nouveau foyer
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>Rendez la quête Le terminal des titans
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >> |cRXP_WARN_Utilisez le|r |T132281:0|t[Marvelous Mobile Murloc Manor Maker] |cRXP_WARN_à côté du|r |cRXP_PICK_Greymist Murloc Construire Site|r
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archéologue Groff|r
    .target Archaeologist Groff
    .turnin 13910 >>Rendez la quête Un nouveau foyer
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larien|r
    .target Larien
    .turnin 13893 >>Rendez la quête Soggoth et Kronn
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .turnin 13882 >>Rendre la quête Les graines de la vie
    .accept 13925 >>Accepter Une once de prévention
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .target Onu
    .accept 13895 >>Accepter Les Anciens endormis
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aros|r
    .target Aros
    .turnin 13895 >>Rendre la quête Les Anciens endormis
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Assassin sombrécaille|r
    .target Darkscale Assassin
    .accept 13953 >>Accepter Des Nagas parmi nous
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balren de la Griffe|r et |cRXP_FRIENDLY_Felros|r
    .turnin 13953 >>Rendre la quête Des Nagas parmi nous
    .accept 13899 >>Accepter Le seigneur de guerre des Sombrécailles
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>Accepter Les marées se retournent contre nous
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>Utilisez le |T133749:0|t[Arbrisseau portevie] sur un |cRXP_ENEMY_Cerf blanche-queue|r, |cRXP_ENEMY_Grizzled Ours des chardons|r, |cRXP_ENEMY_Matriarche traquelune|r ou |cRXP_ENEMY_Géniteur traquelune|r
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .turnin 13925 >>Rendre la quête Une once de prévention
    .accept 13885 >>Accepter La défense de Sombrivage
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >> |cRXP_WARN_Parlez à |cRXP_FRIENDLY_Orseus|r pour monter un|r |cRXP_FRIENDLY_Hippogriffe|r
    .skipgossip
step
#questguide
    >>Lancez |T136065:0|t[Protection des animaux sauvages] (1) sur |cRXP_ENEMY_Grizzled Thistle Ours|r, |cRXP_ENEMY_Moonstalkers|r et |cRXP_ENEMY_Whitetail Daim|r
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .turnin 13885 >>Rendre la quête La défense de Sombrivage
    .accept 13891 >>Accepter Le Dévoreur de Sombrivage
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >> Utilisez le |T133749:0|t[Arbrisseau portevie] à l'|cRXP_PICK_Artéfact dévorant|r sous l'eau pour invoquer |cRXP_ENEMY_Yoth'al le Dévoreur|r
    .timer 10,Le Dévoreur de Sombrivage RP
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >> Mort |cRXP_ENEMY_Yoth'al le Dévoreur|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>Mort |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Tuez |cRXP_ENEMY_Seigneur de guerre Iréchine|r
    >>Cliquez sur le cadavre de |cRXP_FRIENDLY_Seigneur de guerre Wrathspines|r après
    .mob Warlord Wrathspine
    .turnin 13899 >>Rendre la quête Le seigneur de guerre des Sombrécailles
    .accept 13900 >>Accepter L'offrande à Azshara
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_Quittez la grotte et allez à la terrasse au-dessus de l'entrée|r
    >>Mort les |cRXP_ENEMY_Darkscale Priestesses|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,L'offrande à Azshara RP
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +Attendez la fin du RP avec |cRXP_ENEMY_Reine Azshara|r et attendez l'arrivée de |cRXP_FRIENDLY_Malfurion Hurlorage|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malfurion Hurlorage|r
    .turnin 13900 >>Rendre la quête L'offrande à Azshara
    .accept 13897 >> Accepter La bataille de Sombrivage
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>Mort |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>|cRXP_WARN_Voyage au Glaive du Maître et utilisez le|r |T237377:0|t[Cor des Anciens]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>Tuez l'|cRXP_ENEMY_Avatar de Soggoth|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balren of the Griffe|r
    .turnin 13897 >>Rendre la quête La bataille de Sombrivage
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Rendre la quête Les marées se retournent contre nous
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kathrena Fétu-d'hiver|r
    .target Kathrena Winterwisp
    .turnin 13891 >>Rendre la quête Le Dévoreur de Sombrivage
step
#questguide
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Lor’danel
]])
