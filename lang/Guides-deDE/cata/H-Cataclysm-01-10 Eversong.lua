if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Insel der Sonnenwanderer
#next 6-10 Immersangwald
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor BloodElf
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    #label SunstriderIsleFirstQuestCheck
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8325 >>Akzeptiert die Quest Rückeroberung der Insel der Sonnenwanderer
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Tötet |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8325 >>Gebt die Quest Rückeroberung der Insel der Sonnenwanderer ab
    .accept 8326 >>Akzeptiert die Quest Bedauerliche Maßnahmen
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    >>Tötet |cRXP_ENEMY_Springpaw Cubs|r und |cRXP_ENEMY_Springpaw Lynx|r. Plündert sie für |cRXP_LOOT_Collars|r
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    .xp 2+650 >>Farmt bis 650/900 Erfahrung
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8326 >>Gebt die Quest Bedauerliche Maßnahmen ab
    .accept 8327 >>Akzeptiert die Quest Berichterstattung an Lanthan Perilon
    .accept 31170 >>Akzeptiert die Quest Ausbildung zum Mönch << Monk
    .accept 9393 >>Akzeptiert die Quest Ausbildung zum Jäger << Hunter
    .accept 8328 >>Akzeptiert die Quest Ausbildung zum Magier << Mage
    .accept 9676 >>Akzeptiert die Quest Ausbildung zum Die Bruderschaft der Defias << Paladin
    .accept 8564 >>Akzeptiert die Quest Ausbildung zum Priester << Priest
    .accept 9392 >>Akzeptiert die Quest Ausbildung zum Schurken << Rogue
    .accept 8563 >>Akzeptiert die Quest Ausbildung zum Hexenmeister << Warlock
    .accept 8329 >>Akzeptiert die Quest Ausbildung zum Krieger << Warrior
    .target Magistrix Erona
step << Monk
    .goto 467/0,-3998.000,7978.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pao|r
    .turnin 31170 >>Gebt die Quest Ausbildung zum Mönch ab
    .accept 31171 >>Akzeptiert die Quest Tigerpfote
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Sallina|r
    .turnin 9393 >>Gebt die Quest Ausbildung zum Jäger ab
    .accept 10070 >> Akzeptiert die Quest Zielschuss
    .train 56641 >>Erlernen |T132213:0|t[Zuverlässiger Schuss] << Cata
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 8328 >>Gebt die Quest Ausbildung zum Magier ab
    .accept 10068 >>Akzeptiert die Quest Arkane Geschosse
    .train 5143 >>Erlernen |T136096:0|t[Arkane Geschosse] << Cata
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 8328 >>Gebt die Quest Ausbildung zum Magier ab
    .accept 10068 >>Akzeptiert die Quest Frostnova
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .turnin 9676 >>Gebt die Quest Ausbildung zum Die Bruderschaft der Defias ab
    .accept 10069 >>Akzeptiert die Quest Wege des Lichts
    .train 20271 >>Erlernt |T135959:0|t[Richturteil] << Cata
    .train 20154 >>Erlernen |T135960:0|t[Siegel der Rechtschaffenheit] << Cata
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matron Arena|r
    .turnin 8564 >>Gebt die Quest Ausbildung zum Priester ab
    .accept 10072 >>Akzeptiert die Quest Heilung der Verwundeten
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << Cata
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matron Arena|r
    .turnin 8564 >>Gebt die Quest Ausbildung zum Priester ab
    .accept 10072 >>Akzeptiert die Quest Das Wort lernen
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 9392 >>Gebt die Quest Ausbildung zum Schurken ab
    .accept 10071 >>Akzeptiert die Quest Ausweiden
    .train 2098 >>Erlernen |T132292:0|t[Ausweiden] << Cata
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 8563 >>Gebt die Quest Ausbildung zum Hexenmeister ab
    .accept 10073 >>Akzeptiert die Quest Feuerbrand
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand] << Cata
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 8563 >>Gebt die Quest Ausbildung zum Hexenmeister ab
    .accept 10073 >>Akzeptiert die Quest Verderbnis
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delios Silverblade|r
    .turnin 8329 >>Gebt die Quest Ausbildung zum Krieger ab
    .accept 27091 >>Akzeptiert die Quest Zum Angriff!
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff] << Cata
    .target Delios Silverblade
step << Monk
    .goto Eversong Woods,38.34,20.64
	>>Cast |T606551:0|t[Tigerklaue] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 31171,2 --Cast Tiger Palm
	.mob Training Dummy
step << Hunter
    .goto Eversong Woods,38.34,20.64
	>>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10070,2 << !Cata --Cast Steady Shot
	.complete 10070,1 << Cata --Cast Steady Shot
	.mob Training Dummy
step << Mage cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T136096:0|t[Arkane Geschosse] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10068,1 << Cata --Cast Arcane Missiles
	.mob Training Dummy
step << Mage !cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T135848:0|t[Frostschadennova] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10068,2 --Cast Frost Nova
	.mob Training Dummy
step << Paladin cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T135960:0|t[Siegel der Rechtschaffenheit] on yourself, then wirkt |T135959:0|t[Richturteil] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10069,1 << Cata --Cast Judgement
	.mob Training Dummy
step << Paladin !cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T135961:0|t[Siegel des Befehls], then attack a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10069,2
	.mob Training Dummy
step << Priest cata
    .goto Eversong Woods,39.49,20.29
	>>Cast |T135907:0|t[Blitzheilung] on a |cRXP_ENEMY_Wounded Outrunner|r
	.complete 10072,1 --Cast Flash Heal
	.target Wounded Outrunner
 step << Priest !cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T136207:0|t[Schattenwort: Schmerz] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10072,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto Eversong Woods,38.34,20.64
	>>Cast |T132292:0|t[Ausweiden] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10071,2 << !Cata --Cast Eviscerate
	.complete 10071,1 << Cata --Cast Eviscerate
	.mob Training Dummy
step << Warlock cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T135817:0|t[Feuerbrand] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10073,1 --Cast Immolate
	.mob Training Dummy
step << Warlock !cata
    .goto Eversong Woods,38.34,20.64
	>>Cast |T136118:0|t[Verderbnis] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 10073,2 --Cast Corruption
	.mob Training Dummy
step << Warrior
    .goto Eversong Woods,38.34,20.64
	>>Cast |T132337:0|t[Ansturm] on a |cRXP_ENEMY_Training Attrappe|r outside
	.complete 27091,2 << !Cata --Cast Charge
	.complete 27091,1 << Cata --Cast Charge
	.mob Training Dummy
step << Monk
    .goto 467/0,-3998.200,7978.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pao|r
    .turnin 31171 >>Gebt die Quest Tigerpfote ab
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Sallina|r
    .turnin 10070 >>Gebt die Quest Zielschuss ab
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 10068 >>Gebt die Quest Arkane Geschosse ab
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 10068 >>Gebt die Quest Frostnova ab
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .turnin 10069 >>Gebt die Quest Wege des Lichts ab
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matron Arena|r
    .turnin 10072 >>Gebt die Quest Heilung der Verwundeten ab
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matron Arena|r
    .turnin 10072 >>Gebt die Quest Das Wort lernen ab
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 10071 >>Gebt die Quest Ausweiden ab
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 10073 >>Gebt die Quest Feuerbrand ab
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 10073 >>Gebt die Quest Verderbnis ab
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delios Silverblade|r
    .turnin 27091 >>Gebt die Quest Zum Angriff! ab
    .target Delios Silverblade
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Geh nach oben
step
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Well Beobachter Solanian|r
    .accept 8330 >>Akzeptiert die Quest Solanians Habe
    .accept 8345 >>Akzeptiert die Quest Der Schrein von Dath'Remar
    .target Well Watcher Solanian
step
    .goto Eversong Woods,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Ithanas|r
    .accept 8336 >>Akzeptiert die Quest Für eine Handvoll Fragmente
    .target Arcanist Ithanas
step
    .goto Eversong Woods,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcanist Helion|r
    .accept 8346 >>Akzeptiert die Quest Unstillbarer Durst
    .target Arcanist Helion
step
    #completewith Journal
    >>Wirkt |T136222:0|t[Arkaner Strom], wenn im Nahkampfbereich von einem |cRXP_ENEMY_Manawyrm|r
    >>Tötet |cRXP_ENEMY_Mana Wyrms|r und |cRXP_ENEMY_Feral Tenders|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Gebt die Quest Berichterstattung an Lanthan Perilon ab
    .accept 8334 >>Akzeptiert die Quest Aggressivität
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Plündert das |cRXP_PICK_Tagebuch|r vom Boden
    .complete 8330,3 --Collect Solanian's Journal (x1)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tenders|r und |cRXP_ENEMY_Feral Tenders|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob Tender
    .mob Feral Tender
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Plündert das |cRXP_PICK_Klarsicht-Kugel|r auf der Plattform
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
    #loop
	.line Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
	.goto Eversong Woods,33.92,26.49,40,0
    >>Tötet |cRXP_ENEMY_Tenders|r und |cRXP_ENEMY_Feral Tenders|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >>Gebt die Quest Aggressivität ab
    .accept 8335 >>Akzeptiert die Quest Felendren der Verbannte
    .target Lanthan Perilon
step
    #completewith RunRamp
    >>Tötet |cRXP_ENEMY_Feral Tenders|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Klickt |cRXP_PICK_Schrein von Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Plündert |cRXP_PICK_Rolle|r vom Boden
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Lauft die Rampe hinauf
step
    #completewith Academy
    >>Tötet a |cRXP_ENEMY_Tainted Arkangespenst|r. Plündert sie für |T132884:0|t[|cRXP_LOOT_Tainted Arkan Sliver|r].
    >>|cRXP_WARN_Benutzt |T132884:0|t[|cRXP_LOOT_Besudelt Arkan Sliver|r] um die Quest zu starten|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Akzeptiert die Quest Besudelter Arkanspan
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Tötet |cRXP_ENEMY_Arkan Wraiths|r und |cRXP_ENEMY_Besudelt Arkan Wraiths|r auf eurem Weg durch die Akademie. Plündert sie für ihre |cRXP_LOOT_Slivers|r
    >>Tötet |cRXP_ENEMY_Felendren the Verbannt|r oben. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step
    .goto Eversong Woods,30.84,27.13
    >>Tötet a |cRXP_ENEMY_Tainted Arkangespenst|r. Plündert sie für |T132884:0|t[|cRXP_LOOT_Tainted Arkan Sliver|r].
    >>|cRXP_WARN_Benutzt |T132884:0|t[|cRXP_LOOT_Besudelt Arkan Sliver|r] um die Quest zu starten|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Akzeptiert die Quest Besudelter Arkanspan
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mana Wyrms|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Wirkt |T136222:0|t[Arkaner Strom], wenn im Nahkampfbereich von einem |cRXP_ENEMY_Manawyrm|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Tötet |cRXP_ENEMY_Mana Wyrms|r. Plündert sie für |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helion|r und |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >>Gebt die Quest Unstillbarer Durst ab
    .turnin 8338 >>Gebt die Quest Besudelter Arkanspan ab
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>Gebt die Quest Für eine Handvoll Fragmente ab
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Geh nach oben
step
    #label SolanianB
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >>Gebt die Quest Solanians Habe ab
    .turnin 8345 >>Gebt die Quest Der Schrein von Dath'Remar ab
    .target Well Watcher Solanian
step << Hunter Cata
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Sallina|r
    .train 2973 >>Erlernen |T132223:0|t[Raptorstoß]
    .target Ranger Sallina
    .xp <6,1
step << Mage Cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Julia Sunstriker|r
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Julia Sunstriker
    .xp <5,1
step << Paladin Cata
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .train 465 >>Erlernen |T135893:0|t[Aura der Hingabe]
    .target Jesthenis Sunstriker
    .xp <5,1
step << Priest Cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Matron Arena|r
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Matron Arena
    .xp <5,1
step << Rogue Cata
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pathstalker Avokor|r
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Pathstalker Avokor
    .xp <5,1
step << Warlock Cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .train 1454 >>Erlernt |T136126:0|t[Aderlass]
    .target Summoner Teli'Larien
    .xp <5,1
step << Warrior Cata
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delios Silverblade|r
    .train 34428 >>Erlernen |T132342:0|t[Siegesrausch]
    .target Delios Silverblade
    .xp <5,1
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >>Gebt die Quest Felendren der Verbannte ab
    .accept 8347 >>Akzeptiert die Quest Unterstützung für die Kundschafter
    .target Lanthan Perilon
step
    #completewith next
    .goto Eversong Woods,39.283,30.747,30,0
    .goto Eversong Woods,40.177,31.700,30 >>Geht über die Brücke
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >>Gebt die Quest Unterstützung für die Kundschafter ab
    .accept 9704 >>Akzeptiert die Quest Von den Getriebenen getötet
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.020,35.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der Leiche von |cRXP_FRIENDLY_Outrunner|r auf dem Boden
    .turnin 9704 >>Gebt die Quest Von den Getriebenen getötet ab
    .accept 9705 >>Akzeptiert die Quest Bergung des Päckchens
    .target Slain Outrunner
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >>Gebt die Quest Bergung des Päckchens ab
    .accept 8350 >>Akzeptiert die Quest Erfolgreiche Lieferung
    .target Outrunner Alarion


]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Immersangwald
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor BloodElf/Undead
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Jaela|r
    .accept 8475 >>Akzeptiert die Quest Die Todesschneise
    .target Ranger Jaela
step << Undead
    #loop
    .goto Eversong Woods,49.857,55.567,0
    .waypoint Eversong Woods,49.699,53.225,40,0
    .waypoint Eversong Woods,49.857,55.567,40,0
    .waypoint Eversong Woods,49.851,57.816,40,0
    .waypoint Eversong Woods,50.095,59.583,40,0
    .waypoint Eversong Woods,51.072,56.126,40,0
    >>Tötet |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Jaela|r
    .turnin 8475 >>Gebt die Quest Die Todesschneise ab
    .target Ranger Jaela
step
    #completewith next
    .subzone 3665 >>Reist nach Falkenplatz
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >>Akzeptiert die Quest Schwere Fehlfunktion
    .target Magister Jaronis
step << !Undead
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Betretet das Gasthaus
step << !Undead
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >>Gebt die Quest Erfolgreiche Lieferung ab << BloodElf
    .home >>Setzt euren Ruhestein in Falkenplatz
    .target Innkeeper Delaniel
    .isQuestAvailable 8885
step << !Undead
    #completewith next
    .goto Eversong Woods,47.823,47.696,8,0
    .goto Eversong Woods,47.771,47.303,8 >>Geht hinaus
step
    .goto Eversong Woods,48.166,46.311
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 8468 >>Akzeptiert die Quest Wanted: Thaelis der Manadurstige
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 8463 >> Akzeptiert die Quest Instabile Manakristalle
    .target Aeldon Sunbrand
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    .vendor >> Verkauft eure Waffe beim Händler. Wenn es euch genug Geld für einen |T135321:0|t[Gladius]|t (5s 9c) bringt, könnt ihr ihn kaufen. Kommt später zurück, wenn ihr noch nicht genug habt
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius]|t |cRXP_BUY_bei ihm|r
    .collect 2488,1,8468,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]|t |cRXP_BUY_bei ihm|r
    .collect 2493,1,8468,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +Legt den |T135321:0|t[Gladius]|t an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Thaelis
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] an
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Plündert |cRXP_PICK_Instabil Mana Kristall Boxes|r vom Boden
    >>Tötet |cRXP_ENEMY_Arcane Patrollers|r. Plündert sie für |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Tötet |cRXP_ENEMY_Thaelis the Hungerleider|r. Plündert ihn für seinen |cRXP_LOOT_Thaelis's Kopf|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    #loop
    .goto Eversong Woods,47.22,37.39,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    >>Plündert |cRXP_PICK_Instabil Mana Kristall Boxes|r vom Boden
    >>Tötet |cRXP_ENEMY_Arcane Patrollers|r. Plündert sie für |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarondis|r
    .turnin 8472 >>Gebt die Quest Schwere Fehlfunktion ab
    .accept 8895 >>Akzeptiert die Quest Lieferung an das Sanktum des Nordens
    .target Magister Jaronis
step
    .goto Eversong Woods,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Kan'ren|r
    .turnin 8468 >>Gebt die Quest Wanted: Thaelis der Manadurstige ab
    .target Sergeant Kan'ren
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8463 >>Gebt die Quest Instabile Manakristalle ab
    .accept 9352 >>Akzeptiert die Quest Darnassische Eindringlinge
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Noellene|r
    .train 635 >>Trainiere deine Klassenfähigkeiten
    .target Noellene
	.xp <7,1
    .xp >9,1
step << Paladin Cata
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Noellene|r
    .train 85673 >>Trainiere deine Klassenfähigkeiten
    .target Noellene
    .xp >7,1
	.xp <9,1
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lothan|r
    .train 772 >>Trainiere deine Klassenfähigkeiten
    .target Lothan Silverblade
	.xp <7,1
    .xp >9,1
step << Warrior Cata
    #optional
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lothan|r
    .train 6343 >>Trainiere deine Klassenfähigkeiten
    .target Lothan Silverblade
    .xp >7,1
	.xp <9,1
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 5277 >>Trainiere deine Klassenfähigkeiten
    .target Tannaria
	.xp <9,1
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hannovia|r
    .train 2973 >>Trainiere deine Klassenfähigkeiten
    .target Hannovia
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Trainiere deine Klassenfähigkeiten
    .target Hannovia
	.xp <8,1
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Betretet das Gasthaus
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Geh nach oben
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ponaris|r
    .train 588 >>Trainiere deine Klassenfähigkeiten
    .target Ponaris
	.xp <7,1
    .xp >9,1
step << Priest Cata
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Trainiere deine Klassenfähigkeiten
    .target Ponaris
	.xp >7,1
    .xp <9,1
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garridel|r
    .train 116 >>Trainiere deine Klassenfähigkeiten
    .target Garridel
	.xp <7,1
    .xp >8,1
step << Mage Cata
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garridel|r
    .train 122 >>Trainiere deine Klassenfähigkeiten
    .target Garridel
	.xp >7,1
    .xp <8,1
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celoenus|r
    .train 689 >>Trainiere deine Klassenfähigkeiten
    .target Celoenus
	.xp <6,1
    .xp >8,1
step << Warlock Cata
    #optional
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celoenus|r
    .train 697 >>Trainiere deine Klassenfähigkeiten
    .target Celoenus
	.xp >6,1
    .xp <8,1
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    .vendor >> Verkauft eure Waffe beim Händler. Wenn es euch genug Geld für einen |T135321:0|t[Gladius]|t (5s 9c) bringt, könnt ihr ihn kaufen. Kommt später zurück, wenn ihr noch nicht genug habt
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius]|t |cRXP_BUY_bei ihm|r
    .collect 2488,1,9062,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]|t |cRXP_BUY_bei ihm|r
    .collect 2493,1,9062,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Legt den |T135321:0|t[Gladius]|t an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Caidanis
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] an
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Reisen toward |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .turnin 8895 >>Gebt die Quest Lieferung an das Sanktum des Nordens ab
    .accept 9119 >>Akzeptiert die Quest Zwischenfall beim Sanktum des Westens
    .target Ley-Keeper Caidanis
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 9119 >>Gebt die Quest Zwischenfall beim Sanktum des Westens ab
    .accept 8486 >>Akzeptiert die Quest Arkane Instabilität
    .target Ley-Keeper Velania
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Manawraiths|r und |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    #loop
    .goto Eversong Woods,36.77,60.99,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    >>Tötet a |cRXP_ENEMY_Darnassian Späher|r. Plündert sie für |T133464:0|t[|cRXP_LOOT_Incriminating Documents|r]
    >>|cRXP_WARN_Benutzt |T133464:0|t[|cRXP_LOOT_Belastende Dokumente|r] um die Quest zu starten|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >> Akzeptiert die Quest Belastende Dokumente
    .mob Darnassian Scout
    .use 20765
step
    #loop
    .goto Eversong Woods,35.759,60.591,0
    .goto Eversong Woods,35.768,57.544,40,0
    .goto Eversong Woods,34.491,60.834,40,0
    .goto Eversong Woods,35.759,60.591,40,0
    .goto Eversong Woods,35.946,59.096,40,0
    >>Tötet |cRXP_ENEMY_Manawraiths|r und |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 8486 >>Gebt die Quest Arkane Instabilität ab
    .turnin 9352 >>Gebt die Quest Darnassische Eindringlinge ab
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .accept 8884 >>Akzeptiert die Quest Fischköpfe, Fischköpfe...
    .target Hathvelion Sungaze
step
    #loop
    .goto Eversong Woods,25.61,64.29,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>Tötet |cRXP_ENEMY_Grimscale Foragers|r und |cRXP_ENEMY_Grimscale Seers|r. Plündert sie für |cRXP_LOOT_Murloc Kopf|r und |T134939:0|t[|cRXP_LOOT_Captain Kelisendra's Verloren Rutters|r]
    >>|cRXP_WARN_Benutzt |T134939:0|t[|cRXP_LOOT_Kapitänin Kelisendras verlorene Seekarten|r], um die Quest zu starten|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>Akzeptiert die Quest Kapitänin Kelisendras verlorene Seekarten
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .turnin 8884 >>Gebt die Quest Fischköpfe, Fischköpfe... ab
    .accept 8885 >>Akzeptiert die Quest Mmmrrrgggllls Läuten
    .target Hathvelion Sungaze
step
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    #xprate <1.2
    .goto Eversong Woods,44.718,69.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Velan Brightoak|r
    .accept 8491 >>Akzeptiert die Quest Pelzjagd
    .target Velan Brightoak
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Geh nach oben
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Degolien|r
    .accept 8892 >> Akzeptiert die Quest Vorfall beim Ankerplatz der Sonnensegel
    .target Ranger Degolien
step << BloodElf
    .goto Eversong Woods,43.698,71.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sathiel|r
    .accept 9130 >>Akzeptiert die Quest Waren von Silbermond
    .target Sathiel
    --VV TODO: See if this quest chain is live on beta
step << BloodElf
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .turnin 9130 >>Gebt die Quest Waren von Silbermond ab
    .accept 9133 >>Akzeptiert die Quest Fliegt nach Silbermond
    .target Skymaster Brightdawn
step
    #xprate <1.2
    #completewith next
    .goto Eversong Woods,40.742,70.869,0
    >>Tötet |cRXP_ENEMY_Springpaw Stalkers|r. Plündert sie für |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kelisendra|r und |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >>Gebt die Quest Kapitänin Kelisendras verlorene Seekarten ab
    .accept 8886 >>Akzeptiert die Quest Piraten der Grimmschuppen!
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>Akzeptiert die Quest Zurückgelassene Waffen
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #completewith Aldaron
    >>Tötet |cRXP_ENEMY_Wretched Thugs|r und |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #loop
    .goto Eversong Woods,34.66,68.00,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    >>Plündert die |cRXP_PICK_Armament Boxes|r auf dem Boden in der Nähe von |cRXP_ENEMY_Wretched|r und im Inneren des Gebäudes
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Velendris|r
    .turnin 8480 >>Gebt die Quest Zurückgelassene Waffen ab
    .accept 9076 >>Akzeptiert die Quest Getriebener Rädelsführer
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Klettert auf die Spitze des Gebäudes
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Tötet |cRXP_ENEMY_Aldaron der Tollkühne|r an der Spitze. Plündert |cRXP_LOOT_Aldaron's Kopf|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    #loop
    .goto Eversong Woods,31.40,70.90,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    >>Tötet |cRXP_ENEMY_Wretched Thugs|r und |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #xprate <1.2
    #completewith next
    >>Tötet |cRXP_ENEMY_Springpaw Stalkers|r. Plündert sie für |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Tötet |cRXP_ENEMY_Grimscale Murlocs|r und |cRXP_ENEMY_Grimscale Oracles|r. Plündert sie für |cRXP_LOOT_Cargo|r
    >>Plündert die |cRXP_PICK_Cargo Fässer|r auf dem Boden
    >>|cRXP_WARN_Benutzt|r |T136222:0|t[Arkaner Strom] |cRXP_WARN_um|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Blitzheilung] zu unterbrechen << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66,40,0
    >>Tötet den |cRXP_ENEMY_Mmmrrrggglll|r. Plündert |cRXP_LOOT_Mmmrrrgggllls Läuten|r
    >>|cRXP_WARN_Er patrouilliert leicht in der Gegend|r
    >>|cRXP_WARN_Benutzt|r |T136222:0|t[Arkaner Strom] |cRXP_WARN_um|r |cRXP_ENEMY_Mmmrrrggglll|r's |T136052:0|t[Welle der Heilung] zu unterbrechen << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66,50,0
    >>Tötet |cRXP_ENEMY_Grimscale Murlocs|r und |cRXP_ENEMY_Grimscale Oracles|r. Plündert sie für |cRXP_LOOT_Cargo|r
    >>Plündert die |cRXP_PICK_Cargo Fässer|r auf dem Boden
    >>|cRXP_WARN_Benutzt|r |T136222:0|t[Arkaner Strom] |cRXP_WARN_um|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Blitzheilung] zu unterbrechen << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >>Gebt die Quest Mmmrrrgggllls Läuten ab
    .target Hathvelion Sungaze
step
    #xprate <1.2
    #completewith next
    >>Tötet |cRXP_ENEMY_Springpaw Stalkers|r. Plündert sie für |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kelisendra|r und |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >>Gebt die Quest Piraten der Grimmschuppen! ab
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>Gebt die Quest Getriebener Rädelsführer ab
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,36.115,71.876,0
    .goto Eversong Woods,28.840,71.832,0
    .waypoint Eversong Woods,36.115,71.876,60,0
    .waypoint Eversong Woods,34.94,74.229,60,0
    .waypoint Eversong Woods,28.840,71.832,60,0
    .waypoint Eversong Woods,26.134,73.852,60,0
    >>Beenden killing |cRXP_ENEMY_Springpaw Stalkers|r. Plündert sie für |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith SunsailTurnin
    .deathskip >> Sterbt und erscheint beim |cRXP_FRIENDLY_Geistheiler|r oder lauft nach Morgenluft zurück
step
    #xprate <1.2
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>Gebt die Quest Pelzjagd ab
    .target Velan Brightoak
step
    #label SunsailTurnin
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Gebt die Quest Vorfall beim Ankerplatz der Sonnensegel ab
    .target Ranger Degolien

    --Section below for users who are not level 10 yet

step
    #xprate <1.2
    .goto Eversong Woods,43.675,71.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marniel Amberlight|r
    .accept 9358 >>Akzeptiert die Quest Waldläuferin Sareyn
    .target Marniel Amberlight
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,44.030,70.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .accept 9254 >>Akzeptiert die Quest Der eigensinnige Lehrling
    .target Magistrix Landra Dawnstrider
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >>Gebt die Quest Waldläuferin Sareyn ab
    .accept 9252 >>Akzeptiert die Quest Die Verteidigung von Morgenluft
    .target Ranger Sareyn
    .isOnQuest 9358
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sareyn|r
    .accept 9252 >>Akzeptiert die Quest Die Verteidigung von Morgenluft
    .target Ranger Sareyn
    .isQuestTurnedIn 9358
step
    #xprate <1.2
    #completewith Notes
    >>Tötet |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,51.07,76.32,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>Tötet |cRXP_ENEMY_Darkwraiths|r
    >>|cRXP_WARN_Seid vorsichtig, da|r |cRXP_ENEMY_Darkwraiths|r |cRXP_WARN_wirkt|r |T136224:0|t[Wutanfall] |cRXP_WARN_(erhöhter Schaden und Angriffsgeschwindigkeit) bei niedriger Gesundheit|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
    .isOnQuest 9252
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >>Gebt die Quest Der eigensinnige Lehrling ab
    .accept 8487 >>Akzeptiert die Quest Besudelte Erde
    .target Apprentice Mirveda
    .isOnQuest 9254
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mirveda|r
    .accept 8487 >>Akzeptiert die Quest Besudelte Erde
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Beute |cRXP_PICK_Tainted Soil Piles|r auf dem Boden
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mirveda|r
    >>Warte auf das RP
    .turnin 8487 >>Gebt die Quest Besudelte Erde ab
    .timer 9,Besudelte Erde RP
    .accept 8488 >>Akzeptiert die Quest Ungewöhnliche Ergebnisse
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Tötet |cRXP_ENEMY_Gharsul der Gnadenlose|r und |cRXP_ENEMY_Angershades|r, um |cRXP_FRIENDLY_Mirveda|r zu schützen
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >>Gebt die Quest Ungewöhnliche Ergebnisse ab
    .accept 9255 >>Akzeptiert die Quest Forschungsnotizen
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,54.13,71.21,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Tötet |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #completewith DefendingFBV
    .deathskip >> Sterbt und erscheint beim |cRXP_FRIENDLY_Geistheiler|r oder lauft nach Morgenluft zurück
    .isQuestComplete 9252
step
    #xprate <1.2
    .goto Eversong Woods,44.029,70.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .turnin 9255 >>Gebt die Quest Forschungsnotizen ab
    .target Magistrix Landra Dawnstrider
    .isQuestComplete 9255
step
    #xprate <1.2
    #label DefendingFBV
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >> Gebt die Quest Die Verteidigung von Morgenluft ab
    .target Ranger Sareyn
    .isQuestComplete 9252
step << !Undead
    #completewith IncrDocs
    .hs >> Benutzt euren Ruhestein zum Falkenplatz
    .cooldown item,6948,>2,1
step
    #completewith IncrDocs
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .fly Falconwing Square >>Fliegt nach Falkenplatz
    .target Skymaster Brightdawn
    .cooldown item,6948,<0 << !Undead
step
    #label IncrDocs
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Gebt die Quest Belastende Dokumente ab
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Noellene|r
    .train 20473 >>Trainiere deine Klassenfähigkeiten
    .target Noellene
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lothan|r
    .train 71 >>Trainiere deine Klassenfähigkeiten
    .target Lothan Silverblade
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 5277 >>Trainiere deine Klassenfähigkeiten
    .target Tannaria
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hannovia|r
    .train 34026 >>Trainiere deine Klassenfähigkeiten
    .target Hannovia
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Betretet das Gasthaus
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Geh nach oben
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Trainiere deine Klassenfähigkeiten
    .target Ponaris
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garridel|r
    .train 2139 >>Trainiere deine Klassenfähigkeiten
    .target Garridel
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celoenus|r
    .train 1120 >>Trainiere deine Klassenfähigkeiten
    .target Celoenus
step << !Undead
    #completewith next
    .goto Eversong Woods,46.244,46.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skymaster Skyles|r
    .fly Silvermoon >>Fliegt nach Silbermond
    .target Skymaster Skyles
step << !Undead
    .goto Eversong Woods,56.644,49.628,20,0
    .goto Eversong Woods,56.253,49.224,10,0
    .goto 110,70.881,86.623,10,0
    .goto 110,72.396,85.242
    .zone Silvermoon City >>Betretet Silbermond
step << BloodElf
    .goto Silvermoon City,53.92,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Gebt die Quest ab. Fliegt nach Silbermond.
    .target Sathren Azuredawn
    .isOnQuest 9133
step << !Undead
    #completewith next
    .goto Silvermoon City,57.53,24.56,10,0
    .goto Silvermoon City,51.77,17.86,10,0
    .goto Silvermoon City,49.48,14.80
    .zone Undercity >>Benutzt die Translokationskugel und reist nach Unterstadt
step << !Undead
    #completewith next
    .goto 18,66.17,4.93,10,0
    .goto 18,61.88,64.94,10 >>Verlasst Unterstadt
    .zoneskip Tirisfal Glades
step << Undead
    #completewith next
    .hs >>Benutzt euren Ruhestein nach Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morris|r
    .turnin 6324 >>Gebt die Quest Nachschub für Brill ab
    .target Deathguard Morris
step
    .goto 18,61.06,58.86,12,0
    .goto 18,61.51,59.01,10,0
    .goto 18,61.27,59.22,8,0
    .goto 18,61.13,58.84,8,0
    .goto 18,61.38,58.71,8,0
    .goto 18,61.34,59.17,8,0
    .goto 18,60.51,58.69
    >>Geh auf den Zeppelin-Turm
    .zone Orgrimmar >>Nehmt den Zeppelin nach Orgrimmar
]])
