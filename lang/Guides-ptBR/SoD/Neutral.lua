if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.GetSeason() ~= 2 then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas << Warrior
#subgroup Baú << Hunter
#name Carrodin Runas
#displayname Consumido pela Raiva - 25 (Pantanal) << Warrior
#displayname Exterminador de Najas - 25 (Pantanal) << Hunter
#title Consumido pela Raiva << Warrior
#title Exterminador de Najas << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>Viaje para Terras do Interior
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >>Entre na caverna Thelgen Pedra
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>Abate |cRXP_ENEMY_Carrodin|r. Saque-a para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Debilitante|r] << Warrior
    >>Abate |cRXP_ENEMY_Carrodin|r. Saque-a para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Exterminador de Najas|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of Cobra Slayer (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Debilitante|r] |cRXP_WARN_para treinar|r |T136088:0|t[Consumido pela Raiva]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Exterminador de Najas|r] |cRXP_WARN_para treinar|r |T136040:0|t[Exterminador de Najas]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Envenenar - 25 (Hillsbrad)
#title Envenenar


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >>Viagem para Durnholde Keep
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cris Legace|r
    >>|cRXP_BUY_Compre|r |T133469:0|t[Dica Quente] |cRXP_BUY_dela|r
    .collect 210330,1 --Hot Tip (1)
    .target Cris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>Abra a |T133469:0|t[Dica Quente]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #completewith next
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Abra o |cRXP_PICK_Cofre Enferrujado|r na água para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Peçonha|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Peçonha|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Perfídia - 25 (Floresta do Crepúsculo)
#title Perfídia

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>Abra a |cRXP_PICK_Offering Caixa|r no Cemitério dos Jardins da Tranquilidade para um |T133343:0|t[|cRXP_LOOT_Engraved Prateado Anel|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Defias Noite Runners|r para um |T133345:0|t[|cRXP_LOOT_Engraved Anel de Ouro|r]
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>Viaje para a Estátua de Corvo Hill
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >>Equipe ambos anéis e digite /kneel na Estátua para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Shiving|r]
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .train 424988 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Shiving|r] para treinar |T236280:0|t[Perfídia]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Golpes Selvagens - 14 (Cordilheira das Torres de Pedra)
#title Golpes Selvagens

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Abate |cRXP_ENEMY_Grimtotems|r. Saqueie-os para obter |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .equip 18,210534 >>|cRXP_WARN_Equipe o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_em 10 Bestas diferentes e aliadas como Pets de Caçador/Druids em Forma de Urso/Shamans em Lobo Fantasma|r << Horde
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_Em 10 diferentes bestas aliadas tais como animais de Caçador ou Druidas em Forma de Urso|r << Alliance
    .train 410021 >>|cRXP_WARN_Use o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] |cRXP_WARN_para treinar|r |T132143:0|t[Golpes Selvagens]
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Surto Estelar - 25 (Pantanal)
#title Surto Estelar

step << Druid
    #completewith next
    +|cRXP_WARN_É possível fazer isto no nível 1, porém você terá que morrer muito para conseguir|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gruguimdern|r
    >>|cRXP_WARN_Ele te dará um|r |T134052:0|t[|cRXP_LOOT_Charcomelo|r]
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Use o|r |T134052:0|t[|cRXP_LOOT_Charcomelo|r] |cRXP_WARN_para comê-lo|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa das Estrelas|r] |cRXP_WARN_para treinar|r |T135730:0|t[Surto Estelar]
    .use 210500
    .itemcount 210500,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Pernas << Warlock/Paladin
#subgroup Gloves << Rogue
#subgroup Braçadeiras << Mage
#name Grizzby Runas
#displayname Serendipidade - 25 (Savanas) << Priest
#displayname Lobo solitário - 25 (Savanas) << Hunter
#displayname A Lei da Selva - 25 (Savanas) << Druid
#displayname Armipotente - 25 (Savanas) << Warrior
#displayname Especialização em Duas Armas - 25 (Savanas) << Shaman
#displayname Pacto Demoníaco - 25 (Savanas) << Warlock
#displayname Sacrifício Divino - 25 (Savanas) << Paladin
#displayname Retroceder Tempo - 25 (Savanas) << Mage
#displayname Adaga de Bloqueio - 25 (Savanas) << Rogue
#next Golpe do Cruzado - 4 (Elwynn Forest) << Human Paladin
#next Golpe do Cruzado - 4 (Dun Morogh) << Dwarf Paladin
#next Estouro de lava - 25 (Contraforte de Eira dos Montes) << Shaman
#title Serendipidade << Priest
#title Lobo solitário << Hunter
#title A Lei da Selva << Druid
#title Armipotente << Warrior
#title Especialização em Duas Armas << Shaman
#title Pacto Demoníaco << Warlock
#title Sacrifício Divino << Paladin
#title Retroceder Tempo << Mage
#title Adaga de Bloqueio << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>Vá para Ponto de Ancoragem nas Savanas. |cRXP_WARN_Você precisará de 3 ouro para comprar a runa|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grizzby|r na estalagem
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Compre e use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Harmoniosa|r] |cRXP_WARN_para treinar|r |T237549:0|t[Serendipidade] << Priest
    .train 410010 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sacrificar|r] |cRXP_WARN_para treinar|r |T134596:0|t[Engrave Pants - Sacrifício Divino] << Paladin
    .train 401761 >>|cRXP_WARN_Compre e use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Retroceder Tempo|r] |cRXP_WARN_para treinar|r |T237538:0|t[Retroceder Tempo] << Mage
    .train 410122 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo solitário|r] |cRXP_WARN_para treinar|r |T132266:0|t[Lobo solitário] << Hunter
    .train 416042 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrevivência|r] |cRXP_WARN_para treinar|r |T132126:0|t[A Lei da Selva] << Druid
    .train 425445 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Armipotente|r] |cRXP_WARN_para treinar|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] |cRXP_WARN_para treinar|r |T237562:0|t[Pacto Demônioíaco] << Warlock
    .train 424990 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Adaga de Bloqueio|r] |cRXP_WARN_para treinar|r |T237531:0|t[Adaga de Bloqueio] << Rogue
    .train 410096 >>|cRXP_WARN_Compre e use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Duas Armas|r] |cRXP_WARN_para treinar|r |T132686:0|t[Gravar Peitoral - Especialização em Duas Armas] << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú << Shaman/Rogue
#subgroup Pernas << Mage/Warlock/Hunter
#subgroup Gloves << Paladin/Warrior/Priest/Druid
#name Runas Emboscadas
#displayname Calcinação Mental - 25 (Reputação) << Priest
#displayname Espalhar de Serpente - 25 (Reputação) << Hunter
#displayname Esmagar Crânio - 25 (Reputação) << Druid
#displayname Fúria Obcecada - 25 (Reputação) << Warrior
#displayname Chuva Curativa - 25 (Reputação) << Shaman
#displayname Agonia Eterna - 25 (Reputação) << Warlock
#displayname Foco de Luz - 25 (Reputação) << Paladin
#displayname Surto Arcano - 25 (Reputação) << Mage
#displayname Só um arranhão - 25 (Reputação) << Rogue
#next Sacrifício Divino - 25 (Azeroth) << Paladin
#title Calcinação Mental << Priest
#title Espalhar de Serpente << Hunter
#title Esmagar Crânio << Druid
#title Fúria Obcecada << Warrior
#title Chuva Curativa << Shaman
#title Agonia Eterna << Warlock
#title Foco de Luz << Paladin
#title Surto Arcano << Mage
#title Só um arranhão << Rogue

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>|T132765:0|tSaia e procure [Waylaid Suprimentos]. Depois volte para uma cidade capital e os entregue. Se quiser obter reputação mais rápido, compre os itens necessários no AH para aprimorá-los.
    *|cRXP_WARN_Você pode derrotar inimigos de nível inferior até atingir Amigável. Depois disso você tem que derrotar inimigos de nível alto (>=17).|r Baús no mundo aberto têm 90%+ de chance de soltar um desses itens.
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Supply Oficial|r na cidade mais próxima
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_Compre e use|r |T135791:0|t[|cRXP_FRIENDLY_Tenebrous Epifania|r] |cRXP_WARN_para treinar|r |T237565:0|t[Calcinação Mental] << Priest
    .train 409999 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beckoning Luz|r] |cRXP_WARN_para treinar|r |T236247:0|t[Foco de Luz] << Paladin
    .train 425171 >>|cRXP_WARN_Compre e use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Surto Arcano|r] |cRXP_WARN_para treinar|r |T135734:0|t[Surto Arcano] << Mage
    .train 425760 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Espalhar de Serpente|r] |cRXP_WARN_para treinar|r |T132209:0|t[Espalhar de Serpente] << Hunter
    .train 416046 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Esmagar Crânio|r] |cRXP_WARN_para treinar|r |T133732:0|t[Esmagar Crânio] << Druid
    .train 416003 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Fúria Obcecada|r] |cRXP_WARN_para treinar|r |T134919:0|t[Fúria Obcecada] << Warrior
    .train 416008 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Agonia Eterna|r] |cRXP_WARN_para treinar|r |T236296:0|t[Agonia Eterna] << Warlock
    .train 400082 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Teasing|r] |cRXP_WARN_para treinar|r |T132284:0|t[Só um arranhão] << Rogue
    .train 416057 >>|cRXP_WARN_Compre e use|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Chuva Curativa|r] |cRXP_WARN_para treinar|r |T136107:0|t[Chuva Curativa] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Crescimento Silvestre - 25 (Várias Zonas)
#title Crescimento Silvestre

step << Druid
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Clique na |cRXP_PICK_Owl Estátua|r para começar o evento
    >>|cRXP_WARN_Você precisará derrotar 3 ondas de 2 inimigos por vez, variando do nível 23 ao 25|r
    >>|cRXP_WARN_Garanta que o |cRXP_FRIENDLY_Fogo-fátuo Conjurado|r não morra. Não é possível curá-lo, porém será totalmente curado entre as ondas|r
    >>Depois de derrotar todas as ondas, pegue o |cRXP_PICK_Gift of the Fogo-fátuo|r no chão
    .collect 210044,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >>Viagem para Crepúsculo Grove em Crepúsculo Forest
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    .aura 424310 >>Clique na |cRXP_PICK_Owl Estátua|r para obter o efeito |T132150:0|t[Olhos da Coruja]
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Saia do Crepúsculo Grove
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>Mate |cRXP_ENEMY_Agon|r. Saque-o para obter |cRXP_LOOT_Symbol of the Second Owl|r
    >>|cRXP_ENEMY_Agon|r |cRXP_WARN_patrulha ao redor levemente|r
    >>|cRXP_WARN_Você precisa ter o|r |T132150:0|t[Olhos da Coruja] |cRXP_WARN_efeito para ver|r |cRXP_ENEMY_Agon|r
    .collect 210043,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +Clique na |cRXP_PICK_Twin Estátua de Coruja|r para obter o efeito |T237178:0|t[Aura da Coruja Gêmea]
    >>|cRXP_WARN_Você tem 1 min e 40 seg para chegar à outra pequena ilha e clicar na outra|r |cRXP_PICK_Twin Estátua de Coruja|r
    >>|cRXP_WARN_Certifique-se de usar|r |T132112:0|t[Aquatic Formação - Missão - Missão]
    >>|cRXP_WARN_A outra ilha está marcada no mapa|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>Nade para a outra ilha. Clique na |cRXP_PICK_Twin Estátua de Coruja|r em 1 min e 40 seg
    >>|cRXP_WARN_Certifique-se de usar|r |T132112:0|t[Aquatic Formação - Missão - Missão]
    >>|cRXP_WARN_Se falhar e perder o efeito, clique nesta|cRXP_PICK_ Twin Estátua de Coruja|r e volte para a ilha de onde você veio|r
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >>Teleporte para a Clareira da Lua
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >>Teleporte para a Clareira da Lua
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >>Aceite A Prova das Corujas
    .turnin 78229 >>Entregue A Prova das Corujas
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Crescimento Silvestre|r] |cRXP_WARN_to train|r |T236153:0|t[Crescimento Silvestre]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú << Warrior
#subgroup Pernas << Mage
#name Runas de Lich da Floresta do Crepúsculo
#displayname Flagelação - 25 (Floresta do Crepúsculo) << Warrior
#displayname Regeneração Frenética - 25 (Floresta do Crepúsculo) << Mage
#title Flagelação << Warrior
#title Regeneração Frenética << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >>Entre na cripta do nordeste
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>Abra o |cRXP_PICK_Popó Cofre|r. Pegue-o para o |T252996:0|t[|cRXP_LOOT_Filactério Arruinado|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >>Saia desta cripta e desça para a cripta ocidental
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >>Clique no |cRXP_PICK_Slumbering Ossos|r no pequeno trono|r
    >>|cRXP_WARN_Isto invocará uma Élite de nível 25|r |cRXP_ENEMY_Desperto Lich|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>Mate o |cRXP_ENEMY_Desperto Lich|r. Saque a |T134419:0|t[|cRXP_FRIENDLY_Runa de Flagelação|r] << Warrior
    >>Mate o |cRXP_ENEMY_Lich Desperto|r. Saqueie as |T134939:0|t[|cRXP_FRIENDLY_Anotações de feitiços: Regeneração em Massa|r] << Mage
    >>|cRXP_WARN_Se alguém estiver lá matando o |cRXP_ENEMY_Desperto Lich|r você pode ajudá-los também e ainda conseguirá saqueá-lo|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flagelação|r] |cRXP_WARN_para treinar|r |T133495:0|t[Flagelação]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Regeneração Frenética|r] |cRXP_WARN_para treinar|r |T132870:0|t[Regeneração Frenética]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Golpe Furioso - 25 (Várias Zonas)
#title Golpe Furioso

step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >>Viaje para Dun Modr, nos Ermos
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Empresário Ferro Negro|r dentro do edifício
    >>|cRXP_WARN_Você pode precisar fazer uma corrida de cadáver algumas vezes para chegar até ele|r
    >>|cRXP_BUY_Compre uma|r |T135130:0|t[Lança do Mata-dragões] |cRXP_BUY_custa 75 pratas|r
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
    .target Empresário Ferro Negro
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >>Viaje para Stonewatch Keep em Montanhas Cristarrubra
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>Clique no |cRXP_PICK_Escudo de Parede|r. Pegue-o para obter o |cRXP_LOOT_Escudo do Mata-dragões|r
    >>|cRXP_WARN_Isso está dentro da fortaleza principal no andar de cima atrás de |cRXP_ENEMY_Gath'Ilzogg|r que é uma élite de nível 26|r
    >>|cRXP_WARN_Você precisará matar |cRXP_ENEMY_Gath'Ilzogg|r ou tê-lo engajado por outra pessoa para poder saqueá-lo. Certifique-se de que tem um grupo antes de entrar|r
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >>Encontre um grupo e entre em Bastilha da Presa Negra
step << Warrior
    >>Abra o |cRXP_PICK_Elmo Descartado|r. Pegue-o para obter o |cRXP_LOOT_Elmo do Mata-dragões|r
    >>|cRXP_WARN_Isto é encontrado em um banco atrás de|r |cRXP_ENEMY_Comandante Springvale|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >>Aceite Elmo do Mata-dragões
    .accept 78134 >>Aceite Lança do Mata-dragões
    .accept 78133 >>Aceite Escudo do Mata-dragões
    .turnin 78132 >>Entregue Elmo do Mata-dragões
    .turnin 78134 >>Entregue Lança do Mata-dragões
    .turnin 78133 >>Entregue Escudo do Mata-dragões
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >>Aceite Alonso <Cavaleiro Errante> <Cavaleiro Errante>, o Mata-dragões
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>Abata o |cRXP_ENEMY_Filhote de Dragão Verde|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >>Entregue Alonso <Cavaleiro Errante> <Cavaleiro Errante>, o Mata-dragões
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Golpe Furioso|r] |cRXP_WARN_to train|r |T132215:0|t[Golpe Furioso]
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Força da Alma - 22 (Vale Gris)
#title Força da Alma

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>Abate |cRXP_ENEMY_Thistlefur Totemics|r e |cRXP_ENEMY_Thistlefur Xamã|r. Saque-os para obter o |T135736:0|t[Percepção Primeva]
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_Suba a árvore gigante perto da entrada da caverna. Siga a seta com cuidado|r
    .use 211534 >>|cRXP_WARN_Use o|r |T135736:0|t[Percepção Primeva] |cRXP_WARN_quando você estiver ao lado dos dois apanhadores de sonhos na árvore para criar o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de Sete Visitantes]|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação] << Alliance
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação] << Horde
    >>Você deve /kneel dentro de um dos seguintes lugares: Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge << Human/Dwarf
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, como aquele em Ventobravo ou aquele em Darnassus << NightElf
    >>Você deve /kneel em qualquer cemitério << Undead
    >>Você deve /kneel em qualquer Altar dos Loas, como aquele em Sen'Jin Village ou aquele na Encruzilhada nas Savanas << Troll
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Alliance
    >>Para receber seu segundo buff |T237569:0|t|T136077:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Horde
    .train 415997 >>|cRXP_WARN_Quando você tiver ambos|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de Sete Visitantes]|r |cRXP_WARN_para aprender|r |T135911:0|t[Força da Alma] << Alliance
    .train 415997 >>|cRXP_WARN_Quando você tiver ambos|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de Sete Visitantes]|r |cRXP_WARN_para aprender|r |T135911:0|t[Força da Alma] << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name Palavra de Poder: Barreira - 22 (Montanhas Cristarrubra)
#title Palavra de Poder: Barreira

step << Priest
    #completewith next
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>Abate |cRXP_ENEMY_Blackrock Shadowcasters|r. Saque-os para obter o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidade Enfeitiçada|r]
    >>|cRXP_ENEMY_Blackrock Shadowcasters|r |cRXP_WARN_são élites nível 22-23. Procure um grupo para isto|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação] << Alliance
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação] << Horde
    >>Você deve /kneel dentro de um dos seguintes lugares: Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge << Human/Dwarf
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, como aquele em Ventobravo ou aquele em Darnassus << NightElf
    >>Você deve /kneel em qualquer cemitério << Undead
    >>Você deve /kneel em qualquer Altar dos Loas, como aquele em Sen'Jin Village ou aquele na Encruzilhada nas Savanas << Troll
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Alliance
    >>Para receber seu segundo buff |T237569:0|t|T136077:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Horde
    .train 425213 >>|cRXP_WARN_Quando você tiver ambos|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidade Enfeitiçada|r] |cRXP_WARN_para aprender|r |T253400:0|t[Palavra de Poder: Barreira] << Alliance
    .train 425213 >>|cRXP_WARN_Quando você tiver ambos|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidade Enfeitiçada|r] |cRXP_WARN_para aprender|r |T253400:0|t[Palavra de Poder: Barreira] << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Círculo de Cura - 25 (Floresta do Crepúsculo)
#title Círculo de Cura

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>Mate os |cRXP_ENEMY_Defias Noite Runners|r, os |cRXP_ENEMY_Defias Noite Lâminas|r e os |cRXP_ENEMY_Defias Enchanters|r. Saqueie-os para obter o |T135736:0|t[|cRXP_LOOT_Percepção Sombria|r]
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >>|cRXP_WARN_Use o|r |T135736:0|t[|cRXP_LOOT_Percepção Sombria|r] |cRXP_WARN_na Sepultura Isolada atrás da torre para receber a|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights|r]
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação] << Alliance
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação] << Horde
    >>Você deve /kneel dentro de um dos seguintes lugares: Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge << Human/Dwarf
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, como aquele em Ventobravo ou aquele em Darnassus << NightElf
    >>Você deve /kneel em qualquer cemitério << Undead
    >>Você deve /kneel em qualquer Altar dos Loas, como aquele em Sen'Jin Village ou aquele na Encruzilhada nas Savanas << Troll
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Alliance
    >>Para receber seu segundo buff |T237569:0|t|T136077:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam << Horde
    .train 402859 >>|cRXP_WARN_Quando você tiver ambos|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de Mil Luzes]|r |cRXP_WARN_para aprender|r |T135887:0|t[Círculo de Cura] << Alliance
    .train 402859 >>|cRXP_WARN_Quando você tiver ambos|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de Mil Luzes]|r |cRXP_WARN_para aprender|r |T135887:0|t[Círculo de Cura] << Horde
    .use 211490
    .itemcount 211490,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Golpes de Naja - 25 (Contraforte de Eira dos Montes)
#title Golpes de Naja


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes (p. ex. de Undercity através de Floresta de Pinhaprata) << Horde
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes (p. ex. de Pantanal, siga para o norte) << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Procure |cRXP_FRIENDLY_Zixil|r. Ele patrulha entre Tarren Moinho e Southshore. Compre a |T134041:0|t[Freshwater Tortuguito Isca] dele
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>Usar o |T134041:0|t[Freshwater Tortuguito Isca] no barco no meio da lagoa
    >>Mate |cRXP_ENEMY_Koartul|r (25 élite) quando ele nascer. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Rune of Golpes de Naja|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Golpes de Naja|r] |cRXP_WARN_para treinar|r |T236177:0|t[Golpes de Naja]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Tiro Mortal - 25 (Múltiplas Zonas)
#title Tiro Mortal

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_na casa de leilões|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Comece a procurar um grupo para Caverna Ululante|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >>Entre na Caverna Ululante
step
    #season 2
    >>Mate |cRXP_ENEMY_Mutanus, o Devorador|r. Saqueie-o para obter |T132775:0|t[|cRXP_LOOT_Hypnotic Cristal|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>Mate os |cRXP_ENEMY_Thistlefur Shamans|r. Saqueie-os para obter |T237004:0|t[|cRXP_LOOT_Essência de Magia Selvagem|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>Usar a |T237004:0|t[|cRXP_LOOT_Essência de Magia Selvagem|r] para criar |T237489:0|t[|cRXP_LOOT_Varinha Nodosa de Magia Selvagem|r]
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jixo Furioguete <Audacioso Amador>|r em Cordilheira das Torres de Pedra
    .accept 78114 >>Aceite Laçando Mantícoras Selvagens
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jixo Furioguete <Audacioso Amador>|r
    .turnin 78114 >>Entregue Laçando Mantícoras Selvagens
    .accept 78121 >>Aceite Laçando uma Mantícora Selvagem
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>Fique com |cRXP_FRIENDLY_Jixo Furioguete <Audacioso Amador>|r e veja-o domesticar uma |cRXP_ENEMY_Mantícora|r
    .turnin 78121 >>Entregue Laçando uma Mantícora Selvagem
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Comando para Matar|r] |cRXP_WARN_para treinar|r |T236174:0|t[Tiro Mortal]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
<< SoD
#subgroup Baú << Shaman
#subgroup Cinto << Warrior/Hunter/Mage/Paladin
#subgroup Botas << Warlock/Priest/Rogue/Druid
#name Runas do Cavaleiro Negro
#displayname Espírito do Redentor - 40 (Azeroth) << Priest
#displayname Especialista em Corpo a Corpo - 40 (Azeroth) << Hunter
#displayname Rei da Selva - 40 (Azeroth) << Druid
#displayname Momento Exato - 40 (Azeroth) << Warrior
#displayname Maestria em Duas Mãos - 40 (Azeroth) << Shaman
#displayname Conhecimento Demônioíaco - 40 (Azeroth) << Warlock
#displayname Infusão de Luz - 40 (Azeroth) << Paladin
#displayname Salva de Mísseis - 40 (Azeroth) << Mage
#displayname Atocaiar - 40 (Azeroth) << Rogue
#title Espírito do Redentor << Priest
#title Especialista em Corpo a Corpo << Hunter
#title Rei da Selva << Druid
#title Momento Exato << Warrior
#title Maestria em Duas Mãos << Shaman
#title Conhecimento Demônioíaco << Warlock
#title Infusão de Luz << Paladin
#title Salva de Mísseis << Mage
#title Atocaiar << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_Antes de tentar adquirir esta runa é fortemente aconselhado procurar um grupo. Você deve matar um Élite de nível 41 sete vezes no total|r
step
    #completewith next
    .zone Deadwind Pass >>Viaje para a Trilha do Vento Morto
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dalaran Agent|r para receber |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r]
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .equip 13 >>|cRXP_WARN_Equipe|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r]
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Curious Dalaran Relíquia|r
    .use 216941
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Odd Dalaran Relíquia|r
    .use 216941
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>Voe para Floresta do Crepúsculo
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Glittering Dalaran Relíquia|r
    .use 216941
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>Viaje para Ermos
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Slippery Dalaran Relíquia|r
    .use 216941
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Whirring Dalaran Relíquia|r
    .use 216941
    .collect 216947,1
    .mob Dark Rider
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Heavy Dalaran Relíquia|r
    .use 216941
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    .aura 438288 >>|cRXP_WARN_Viagem para a localização da seta. Conforme você se aproxima, você receberá o|r |T237534:0|t[Presença Sombria] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_VOCÊ TAMBÉM DEVE ESTAR DESMONTADO PARA RECEBER O BÔNUS!|r
    >>|cRXP_WARN_Garanta que você tenha|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >>|cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Signo de Ariden|r] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Cavalgante Negro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    >>Mate o |cRXP_ENEMY_Cavalgante Negro|r. Saqueie-o pela |cRXP_LOOT_Creepy Dalaran Relíquia|r
    .use 216941
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>Viaje para a Trilha do Vento Morto
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Dalaran Agent|r
    .turnin 80147 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80149 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80098 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80152 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80148 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80150 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80151 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .turnin 80120 >>Vire em Serviço para Dalaran
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T135791:0|t[|cRXP_FRIENDLY_Luminous Epifania|r] << Priest
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Infusions|r] << Paladin
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notes: Salva de Mísseis|r] << Mage
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Fechar Combate|r] << Hunter
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa do Jungle King|r] << Druid
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão Inclemente|r] << Warrior
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Conhecimento Proibido|r] << Warlock
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa do Assailant|r] << Rogue
    >>Abra a |T133666:0|t[|cRXP_FRIENDLY_Sacola de Suprimentos|r] para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestria em Duas Mãos|r] << Shaman
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>|cRXP_WARN_Use a|r |T135791:0|t[|cRXP_FRIENDLY_Luminous Epifania|r] |cRXP_WARN_para treinar|r |T132864:0|t[Espírito do Redentor] << Priest
    .train 426180 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Infusions|r] |cRXP_WARN_para treinar|r |T236254:0|t[Infusão de Luz] << Paladin
    .train 401763 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notes: Salva de Mísseis|r] |cRXP_WARN_para treinar|r |T236221:0|t[Salva de Mísseis] << Mage
    .train 416086 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Fechar Combate|r] |cRXP_WARN_para treinar|r |T132394:0|t[Especialista em Corpo a Corpo] << Hunter
    .train 424765 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Jungle King|r] |cRXP_WARN_para treinar|r |T236159:0|t[Rei da Selva] << Druid
    .train 416005 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão Inclemente|r] |cRXP_WARN_para treinar|r |T134377:0|t[Momento Exato] << Warrior
    .train 416014 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Conhecimento Proibido|r] |cRXP_WARN_para treinar|r |T136172:0|t[Conhecimento Demoníaco] << Warlock
    .train 415926 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Assailant|r] |cRXP_WARN_para treinar|r |T236286:0|t[Atocaiar] << Rogue
    .train 436368 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestria em Duas Mãos|r] |cRXP_WARN_para treinar|r |T135145:0|t[Maestria em Duas Mãos] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto << Druid/Priest/Rogue/Warlock
#subgroup Botas << Mage/Shaman/Hunter/Paladin/Warrior
#name Corrente de Runas de Desolação
#displayname Espinho Mental - 35 (Azeroth) << Priest
#displayname Lançador de Armadilhas - 35 (Azeroth) << Hunter
#displayname Eclipse - Feitiço - 35 (Azeroth) << Druid
#displayname Regeneração Enfurecida - 35 (Azeroth) << Warrior
#displayname Despertar Ancestral - 35 (Azeroth) << Shaman
#displayname Sombra e Chama - 35 (Azeroth) << Warlock
#displayname A arte da guerra - 35 (Azeroth) << Paladin
#displayname Congelamento Cerebral - 35 (Azeroth) << Mage
#displayname Faca Envenenada - 35 (Azeroth) << Rogue
#title Espinho Mental << Priest
#title Lançador de Armadilhas << Hunter
#title Eclipse - Feitiço << Druid
#title Regeneração Enfurecida << Warrior
#title Despertar Ancestral << Shaman
#title Sombra e Chama << Warlock
#title A arte da guerra << Paladin
#title Congelamento Cerebral << Mage
#title Faca Envenenada << Rogue

step
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Clique na |cRXP_PICK_Extinto Fogueira de Acampamento|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Aceite Roubo na estrada
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibbly Ferrafivela|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Entregue Roubo na Estrada
    .accept 79235 >>Aceite Em Fuga
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale |cRXP_WARN_(Booty Bay)|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Entregue Em Fuga
    .accept 79236 >>Aceite Vai uma Cerejinha aí?
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nixxrax Enchecopo|r
    >>|cRXP_BUY_Compre um|r |T132790:0|t[Sherry Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Entregue Vai uma Cerejinha Aí?
    .accept 79242 >>Aceite Sem Honra entre Ladrões
    .target Tokal
step
    #completewith next
    .zone Wetlands >>Vá para a borda da zona Planalto Arathi/Pantanal
step
    .goto Wetlands,58.320,6.927
    .cast 6477 >>Entre no |cRXP_PICK_Barco a Remo|r na água
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illari Duskfeather|r para receber |cRXP_LOOT_Illari's Chave|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illari Duskfeather|r. Você precisará lutar contra ela depois
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>Mate |cRXP_ENEMY_Illari Duskfeather|r. Abra o |cRXP_PICK_Bolsa Descartada|r que ela deixa no chão. Saque-o para |cRXP_LOOT_Illari's Chave|r
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illari Duskfeather|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Clique em |cRXP_PICK_Illari's Saque Cache|r no chão
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Entregue Sem Honra entre Ladrões
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Abra |T133876:0|t[|cRXP_LOOT_Caixa Cravejada de Joias|r] para |T135791:0|t[|cRXP_FRIENDLY_Epifania Psicosófica|r] << Priest
    >>Abra |T133876:0|t[|cRXP_LOOT_Caixa Cravejada de Joias|r] para |T134419:0|t[|cRXP_FRIENDLY_Runa da Guerra|r] << Paladin
    >>Abra |T133876:0|t[|cRXP_LOOT_Caixa Cravejada de Joias|r] para |T134939:0|t[|cRXP_FRIENDLY_Anotações de feitiços: Congelamento Cerebral|r] << Mage
    >>Abra o |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Coureador|r] << Hunter
    >>Abra o |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para o |T134419:0|t[|cRXP_FRIENDLY_Runa do Eclipse - Feitiço - Feitiço|r] << Druid
    >>Abra o |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para o |T134419:0|t[|cRXP_FRIENDLY_Itens|r] << Warrior
    >>Abra o |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para a |T134419:0|t[|cRXP_FRIENDLY_Runa da Escuridão Sombria|r] << Warlock
    >>Abra a |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para a |T134419:0|t[|cRXP_FRIENDLY_Rune of the Lâmina Envenenada|r] << Rogue
    >>Abra o |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Caixa|r] para o |T134419:0|t[|cRXP_FRIENDLY_Runa do Despertar Ancestral|r] << Shaman
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>|cRXP_WARN_Use a|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Psicosófica|r] |cRXP_WARN_para treinar|r |T136181:0|t[Aparições Corrompidas] << Priest
    .train 416031 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Guerra|r] |cRXP_WARN_para treinar|r |T236246:0|t[A arte da guerra] << Paladin
    .train 401752 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de feitiços: Congelamento Cerebral|r] |cRXP_WARN_para treinar|r |T236206:0|t[Congelamento Cerebral] << Mage
    .train 410118 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Coureador|r] |cRXP_WARN_para treinar|r |T133882:0|t[Lançador de Armadilhas] << Hunter
    .train 410029 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Eclipse - Feitiço - Feitiço|r] |cRXP_WARN_para treinar|r |T236151:0|t[Eclipse - Feitiço - Feitiço] << Druid
    .train 403467 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Itens|r] |cRXP_WARN_para treinar|r |T132345:0|t[Regeneração Enfurecida] << Warrior
    .train 426452 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Escuridão Sombria|r] |cRXP_WARN_para treinar|r |T135823:0|t[Sombra e Chama] << Warlock
    .train 425102 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Lâmina Envenenada|r] |cRXP_WARN_para treinar|r |T236270:0|t[Faca Envenenada] << Rogue
    .train 425883 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Despertar Ancestral|r] |cRXP_WARN_para treinar|r |T237571:0|t[Despertar Ancestral] << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
step
    .goto 1417,89.536,78.149
    .cast 6477 >>Entre no |cRXP_PICK_Barco a Remo|r na água para voltar para Arathi
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group Guia Runas e Livros RestedXP
#subgroup Livros de Feitiço
#name Livro de Feitiço: Runas

#displayname Intelecto Expandido (Objetos de TBC) << Alliance Mage
#displayname Intelecto Expandido (Orgrimmar) << Horde Mage
#title Intelecto Expandido << Mage
#displayname Aspecto da Víbora/Coração de Leão (Objetos de TBC) << Alliance Hunter
#displayname Aspecto da Víbora/Coração de Leão (Orgrimmar) << Horde Hunter
#title Aspecto da Víbora/Coração de Leão << Hunter
#displayname Almas Colhidas/Portal de Evocação/Armadura Vil (Objetos de TBC) << Alliance Warlock
#displayname Almas Colhidas/Portal de Evocação/Armadura Vil (Orgrimmar) << Horde Warlock
#title Almas Colhidas/Portal de Evocação/Armadura Vil << Warlock
#displayname Redirecionar/Occult Veneno/Veneno Entorpecente/Veneno Sebáceo/Veneno Atrófico (Objetos de TBC) << Alliance Rogue
#displayname Redirecionar/Occult Veneno/Veneno Entorpecente/Veneno Sebáceo/Veneno Atrófico (Orgrimmar) << Horde Rogue
#title Redirecionar/Occult Veneno/Veneno Entorpecente/Veneno Sebáceo/Veneno Atrófico << Rogue
#displayname Demônio das Sombras/Fortitude Aumentada (Objetos de TBC) << Alliance Priest
#displayname Demônio das Sombras/Fortitude Aumentada (Orgrimmar) << Horde Priest
#title Demônio das Sombras/Fortitude Aumentada << Priest
#displayname Restauração Aprimorada/Reviver/Indomabilidade Profunda (Objetos de TBC) << Alliance Druid
#displayname Restauração Aprimorada/Reviver/Indomabilidade Profunda (Orgrimmar) << Horde Druid
#title Restauração Aprimorada/Reviver/Indomabilidade Profunda << Druid
#displayname Brado de Comando/Gancho de Açougue (Objetos de TBC) << Alliance Warrior
#displayname Brado de Comando/Gancho de Açougue (Orgrimmar) << Horde Warrior
#title Brado de Comando/Gancho de Açougue << Warrior
#displayname Itens de MoP/Bênçãos Aprimoradas (Objetos de TBC) << Paladin
#title Itens de MoP/Bênçãos Aprimoradas << Paladin
#displayname Projeção Totêmica/Fúria Xamanística (Orgrimmar) << Shaman
#title Projeção Totêmica/Fúria Xamanística << Shaman

step
    #completewith BuyBook
    >>|cRXP_WARN_Os livros de habilidade agora podem ser comprados com ouro de Objetos de TBC em vez de ter que fazer Monastério Escarlate para obtê-los.|r << Alliance
    >>|cRXP_WARN_Os livros de habilidade agora podem ser comprados com ouro de Orgrimmar em vez de ter que fazer Monastério Escarlate para obtê-los.|r << Horde
    .zone Stormwind City >>Vá para Ventobravo << Alliance
    .zone Orgrimmar >>Viaje para Orgrimmar << Horde
step << Alliance
    #optional
    #completewith next
    .goto Stormwind City,70.347,27.208,15,0
    .goto Stormwind City,72.005,21.542,20 >>Vá para o Castelo de Ventobravo
step
    #label BuyBook
    .goto Stormwind City,74.182,7.465 << Alliance
    .goto Orgrimmar,38.923,38.398 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor Solárbol|r << Horde
    >>|cRXP_WARN_Nota: |T133736:0|t|cRXP_LOOT_[Tomo do Intelecto Expandido]|r requer nível 25 para usar|r << Mage
    >>|cRXP_WARN_Nota: |T133733:0|t|cRXP_LOOT_[Grimório da Colheita de Almas]|r e |T133733:0|t|cRXP_LOOT_[Grimório de Portal de Evocação]|r requerem nível 25 para usar|r << Warlock
    >>|cRXP_WARN_Nota: |T133733:0|t|cRXP_LOOT_[Grimório de Armadura Vil]|r requer nível 50 para usar|r << Warlock
    >>|cRXP_WARN_Nota: |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r e |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r requerem nível 10 para usar|r << Paladin
    >>|cRXP_WARN_Nota: |T133745:0|t|cRXP_LOOT_[Itens de TBC]|r requer nível 25 para usar|r << Paladin
    >>|cRXP_WARN_Nota: |T133739:0|t|cRXP_LOOT_[Tratado do Coração de Leão]|r requer nível 10 para usar|r << Hunter
    >>|cRXP_WARN_Nota: |T133739:0|t|cRXP_LOOT_[Tratado do Aspecto da Víbora]|r requer nível 25 para usar|r << Hunter
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual de Redirecionamento]|r requer nível 25 para usar|r << Rogue
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual do Veneno Oculto]|r requer nível 54 para usar|r << Rogue
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual do Veneno Entorpecente]|r, |cRXP_LOOT_[Manual do Veneno Sebáceo]|r e |cRXP_LOOT_[Manual do Veneno Atrófico]|r requerem nível 60 para usar|r << Rogue
    >>|cRXP_WARN_Nota: |T237162:0|t|cRXP_LOOT_[Pergaminho do Demônio das Sombras]|r e |T237162:0|t|cRXP_LOOT_[Pergaminho da Fortitude Aumentada]|r requerem nível 25 para usar|r << Priest
    >>|cRXP_WARN_Nota: |T134914:0|t|cRXP_LOOT_[Folheto de Indomabilidade Profunda]|r,|cRXP_WARN_ |T134914:0|t|r[Folheto de Restauração Aprimorada]|cRXP_LOOT_ |re|cRXP_WARN_ |T134914:0|t|cRXP_LOOT_[Folheto de Reviver]|r requerem nível 25 para usar|r << Druid
    >>|cRXP_WARN_Nota: |T133741:0|t|cRXP_LOOT_[Manual do Brado de Comando]|r requer nível 25 para usar|r << Warrior
    >>|cRXP_WARN_Nota: |T133741:0|t|cRXP_LOOT_[Manual do Gancho de Açougue]|r requer nível 40 para usar|r << Warrior
    >>|cRXP_WARN_Nota: |T133747:0|t|cRXP_LOOT_[Revelação da Fúria Xamanística]|r requer nível 10 para usar|r << Shaman
    >>|cRXP_WARN_Nota: |T133747:0|t|cRXP_LOOT_[Revelação de Projeção Totêmica]|r requer nível 25 para usar|r << Shaman
    .train 438040 >>|cRXP_WARN_Compre e use o|r |T133735:0|t|cRXP_LOOT_[Manual de Redirecionamento]|r |cRXP_WARN_para aprender|r |T135425:0|t[Redirecionar] << Rogue
    .train 458822 >>|cRXP_WARN_Compre e use o|r |T133735:0|t|cRXP_LOOT_[Manual do Veneno Oculto]|r |cRXP_WARN_para aprender|r |T135935:0|t[Veneno Oculto I] << Rogue
    .train 438040 >>|cRXP_WARN_Compre e use o|r |T133735:0|t|cRXP_LOOT_[Manual do Veneno Entorpecente]|r |cRXP_WARN_para aprender|r |T132098:0|t[Veneno Entorpecente] << Rogue
    .train 439500 >>|cRXP_WARN_Compre e use o|r |T133735:0|t|cRXP_LOOT_[Manual do Veneno Sebáceo]|r |cRXP_WARN_para aprender|r |T132108:0|t[Veneno Sebáceo] << Rogue
    .train 438040 >>|cRXP_WARN_Compre e use o|r |T133735:0|t|cRXP_LOOT_[Manual do Veneno Atrófico]|r |cRXP_WARN_para aprender|r |T132100:0|t[Veneno Atrófico] << Rogue
    .train 436949 >>|cRXP_WARN_Compre e use o|r |T133736:0|t|cRXP_LOOT_[Tomo do Intelecto Expandido]|r |cRXP_WARN_para aprender|r |T236513:0|t[Intelecto Expandido] << Mage
    .train 436956 >>|cRXP_WARN_Compre e use o|r |T134914:0|t|cRXP_LOOT_[Folheto de Indomabilidade Profunda]|r |cRXP_WARN_para aprender|r |T132124:0|t[Indomabilidade Profunda] << Druid
    .train 417123 >>|cRXP_WARN_Compre e use o|r |T134914:0|t|cRXP_LOOT_[Folheto de Restauração Aprimorada]|r |cRXP_WARN_para aprender|r |T136073:0|t[Restauração Aprimorada] << Druid
    .train 437138 >>|cRXP_WARN_Compre e use o|r |T134914:0|t|cRXP_LOOT_[Folheto de Reviver]|r |cRXP_WARN_para aprender|r |T132132:0|t[Reviver] << Druid
    .train 409580 >>|cRXP_WARN_Compre e use o|r |T133739:0|t|cRXP_LOOT_[Tratado do Coração de Leão]|r |cRXP_WARN_para aprender|r |T132185:0|t[Coração de Leão] << Hunter
    .train 415423 >>|cRXP_WARN_Compre e use o|r |T133739:0|t|cRXP_LOOT_[Tratado do Aspecto da Víbora]|r |cRXP_WARN_para aprender|r |T132160:0|t[Aspecto da Víbora] << Hunter
    .train 415076 >>|cRXP_WARN_Compre e use o|r |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r |cRXP_WARN_para aprender|r |T135956:0|t[Exorcista] << Paladin
    .train 407798 >>|cRXP_WARN_Compre e use o|r |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r |cRXP_WARN_para aprender|r |T135961:0|t[Selo do Martírio] << Paladin
    .train 435984 >>|cRXP_WARN_Compre e use o|r |T133745:0|t|cRXP_LOOT_[Itens de TBC]|r |cRXP_WARN_para aprender|r |T236248:0|t[Bênçãos Aprimoradas] << Paladin
    .train 401977 >>|cRXP_WARN_Compre e use o|r |T237162:0|t|cRXP_LOOT_[Pergaminho do Demônio das Sombras]|r |cRXP_WARN_para aprender|r |T136199:0|t[Demônio das Sombras] << Priest
    .train 436951 >>|cRXP_WARN_Compre e use o|r |T237162:0|t|cRXP_LOOT_[Pergaminho da Fortitude Aumentada]|r |cRXP_WARN_para aprender|r |T237543:0|t[Fortitude Aumentada] << Priest
    .train 437032 >>|cRXP_WARN_Compre e use o|r |T133733:0|t|cRXP_LOOT_[Grimório da Colheita de Almas]|r |cRXP_WARN_para aprender|r |T132851:0|t[Almas Colhidas] << Warlock
    .train 437169 >>|cRXP_WARN_Compre e use o|r |T133733:0|t|cRXP_LOOT_[Grimório de Portal de Evocação]|r |cRXP_WARN_para aprender|r |T134423:0|t[Portal de Evocação] << Warlock
    .train 403619 >>|cRXP_WARN_Compre e use o|r |T133733:0|t|cRXP_LOOT_[Grimório de Armadura Vil]|r |cRXP_WARN_para aprender|r |T136156:0|t[Armadura Vil] << Warlock
    .train 403215 >>|cRXP_WARN_Compre e use o|r |T133741:0|t|cRXP_LOOT_[Manual do Brado de Comando]|r |cRXP_WARN_para aprender|r |T132351:0|t[Brado de Comando] << Warrior
    .train 403228 >>|cRXP_WARN_Compre e use o|r |T133741:0|t|cRXP_LOOT_[Manual do Gancho de Açougue]|r |cRXP_WARN_para aprender|r |T132507:0|t[Gancho de Açougue] << Warrior
    .train 425336 >>|cRXP_WARN_Compre e use o|r |T133747:0|t|cRXP_LOOT_[Revelação da Fúria Xamanística]|r |cRXP_WARN_para aprender|r |T136088:0|t[Fúria Xamanística] << Shaman
    .train 437009 >>|cRXP_WARN_Compre e use o|r |T133747:0|t|cRXP_LOOT_[Revelação de Projeção Totêmica]|r |cRXP_WARN_para aprender|r |T310733:0|t[Projeção Totêmica] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 226396 << Rogue -- Manual of Occult Poison
    .use 226394 << Rogue -- Manual of Atrophic Poison
    .use 226397 << Rogue -- Manual of Sebacious Poison
    .use 226395 << Rogue -- Manual of Numbing Poison
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 226403 << Warrior -- Handbook of Meathook
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 403619 << Warlock -- Grimoire of Fel Armor
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 226400 << Paladin -- Testament of the Exorcist
    .use 226398 << Paladin -- Testament of Martyrdom
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
    .target Milton Sheaf << Alliance
    .target Zor Lonetree << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Bugcatcher Runas
#displayname Golpe da Mantícora - 35 (Azeroth) << Hunter
#displayname Instintos de Sobrevivência - 35 (Azeroth) << Druid
#title Golpe da Mantícora << Hunter
#title Instintos de Sobrevivência << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Amarílis Teieira|r
    >>|cRXP_BUY_Compre um|r |T133653:0|t[Entomology Starter Kit]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Abra o |T133653:0|t[Entomology Starter Kit]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_Use o|r |T134325:0|t[Bug Pegando Rede] |cRXP_WARN_em um|r |cRXP_ENEMY_Tarântula-arbórea|r
    >>|cRXP_WARN_Encontram-se no topo de troncos de árvores|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_Use o|r |T134325:0|t[Bug Pegando Rede] |cRXP_WARN_em um|r |cRXP_ENEMY_Caruncho-do-feno|r
    >>|cRXP_WARN_Estes podem ser encontrados em qualquer uma das fazendas, incluindo dentro dos celeiros|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_Use o|r |T134325:0|t[Bug Pegando Rede] |cRXP_WARN_em um|r |cRXP_ENEMY_Catacarne|r
    >>|cRXP_WARN_Estes são encontrados no Cemitério dos Kodos|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Fale com |cRXP_FRIENDLY_Amarílis Teieira|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa do Envigoramento|r] << Hunter
    >>Fale com |cRXP_FRIENDLY_Amarílis Teieira|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Instinto|r] << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Envigorar|r] |cRXP_WARN_para treinar|r |T135125:0|t[Golpe da Mantícora] << Hunter
    .train 410027 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Instinto|r] |cRXP_WARN_para treinar|r |T132266:0|t[Instintos de Sobrevivência] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group Guia Runas e Livros RestedXP
#subgroup Extras
#subweight -1
#name Saco de Dormir Aconchegante - 14
#title Saco de Dormir Aconchegante

step
    #optional
    +|cRXP_WARN_Você deve estar no mínimo no nível 14 antes de poder começar a missão para o|r |T133662:0|t[|cRXP_LOOT_Saco de Dormir Aconchegante|r]
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step << Alliance
    .goto Westfall,37.413,50.701
    >>Clique em |cRXP_PICK_Restos Queimados|r no chão
    .accept 79008 >>Aceite ...e aquele bilhete que você encontrou
step << Alliance
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step << Alliance
    .goto The Barrens,46.361,73.904
    >>Clique em |cRXP_PICK_Restos Queimados|r no chão
    .turnin 79008 >>Entregue ... e aquele bilhete, hein?
    .accept 79192 >>Aceite Degraus
step << Horde
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step << Horde
    .goto The Barrens,46.361,73.904
    >>Clique em |cRXP_PICK_Restos Queimados|r no chão
    .accept 79007 >>Aceite ...e aquele bilhete que você encontrou
step << Horde
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step << Horde
    .goto Westfall,37.413,50.701
    >>Clique em |cRXP_PICK_Restos Queimados|r no chão
    .turnin 79007 >>Entregue ... e aquele bilhete, hein?
    .accept 79192 >>Aceite Degraus
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >>Voe para cima e ao longo do caminho de terra ao norte de Refúgio da Rocha do Sol
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Clique em |cRXP_PICK_Pocket Litter|r na caixa
    .turnin 79192 >>Entregue Degraus
    .accept 79980 >>Aceite Rabisco
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >>Siga o caminho através das montanhas
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Clique no |cRXP_PICK_Monte de Terra|r no chão
    .turnin 79980 >>Entregue Rabisco
    .accept 79974 >>Aceite Trabalho Suado
step
    #completewith next
    .zone Loch Modan >>Voe para Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >>|cRXP_WARN_Suba na parede do Dique de Loch Modan e desça cuidadosamente para a saliência no centro da parede. Siga a seta|r
step
    .goto Loch Modan,49.421,12.917
    >>Clique em |cRXP_PICK_Figurina Entalhada|r na saliência
    .turnin 79974 >>Entregue Trabalho Suado
    .accept 79975 >>Aceite Punho da Águia
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >>Voe para Thoradin's Parede no limite de zona do Planalto Arathi/Contraforte de Eira dos Montes
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >>Suba no carrinho e caminhe para cima junto à parede
step
    .goto Arathi Highlands,22.466,24.127
    >>Clique em |cRXP_PICK_Messenger Bolsa|r pendurada na parede
    .turnin 79975 >>Entregue Punho da Águia
    .accept 79976 >>Aceite Deve Ser Aqui
step
    .goto Arathi Highlands,22.466,24.127
    >>Clique em |cRXP_PICK_Hastily Rolled-Up Satchel|r no chão
    .turnin 79976 >>Entregue Deve Ser Aqui
step
    +|cRXP_WARN_É altamente recomendado que você guarde seu|r |T134057:0|t[|cRXP_LOOT_Ração de Estudante|r] |cRXP_WARN_para níveis mais altos antes de consumi-los. Cada uso de|r |T134057:0|t[|cRXP_LOOT_Ração de Estudante|r] |cRXP_WARN_adiciona 20% de experiência descansada ao seu personagem, portanto é mais eficiente usar em níveis mais altos|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete <<Druid/Shaman/Warrior
#subgroup Braçadeiras <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Emerald Wardens Runas
#displayname Armadura Derretida <<Mage
#displayname Escorno <<Druid
#displayname T.N.T. <<Hunter
#displayname Martelo da Ira Aprimorado <<Paladin
#displayname Área de Caos <<Priest
#displayname Ir ao Ponto <<Rogue
#displayname Queimadura <<Shaman
#displayname Agonia Instável <<Warlock
#displayname Proficiência em Escudo <<Warrior

step
    +|cRXP_WARN_Vá para qualquer uma das zonas listadas abaixo. Nos locais marcados em cada uma delas você encontrará um NPC de uma nova facção,|r |cRXP_FRIENDLY_The Emerald Wardens|r.
    >>Floresta do Crepúsculo
    >>Vale Gris
    >>Feralas
    >>Terras Agrestes
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    >>Procure um Quartermaster dos |cRXP_FRIENDLY_The Emerald Wardens|r no local marcado e compre sua runa deles
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431705 >>|cRXP_WARN_Use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Niilista|r] |cRXP_WARN_para treinar|r |T132886:0|t[Área de Caos] << Priest
    .train 429308 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Armadura Derretida|r] |cRXP_WARN_para treinar|r |T132221:0|t[Armadura Derretida] << Mage
    .train 431747 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Suplício|r] |cRXP_WARN_para treinar|r |T136228:0|t[Agonia Instável] << Warlock
    .train 416066 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Queimadura|r] |cRXP_WARN_para treinar|r |T135822:0|t[QUEIME] << Shaman
    .train 410098 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Protetor|r] |cRXP_WARN_para treinar|r |T132359:0|t[Proficiência em Escudo] << Warrior
    .train 432297 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Vivacidade|r] |cRXP_WARN_para treinar|r |T236269:0|t[Ir ao Ponto] << Rogue
    .train 431611 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonação|r] |cRXP_WARN_para treinar|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Derramamento de Sangue|r] |cRXP_WARN_para treinar|r |T304501:0|t[Escorno] << Druid
    .train 429261 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo|r] |cRXP_WARN_para treinar|r |T236262:0|t[Martelo da Ira Aprimorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Warrior --Rune of the Protector
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Braçadeiras <<Druid/Shaman/Warrior
#name Runas de Oferenda Selvagem
#displayname Proteção Avançada - 40 (Azeroth) <<Mage
#displayname Largar o Dedo - 40 (Azeroth) <<Hunter
#displayname Santuário Aprimorado - 40 (Azeroth) <<Paladin
#displayname Égide Divina - 40 (Azeroth) <<Priest
#displayname Vigor em Combate - 40 (Azeroth) <<Rogue
#displayname Contracorrente - 40 (Azeroth) <<Shaman
#displayname Vingança - 40 (Azeroth) <<Warlock
#displayname Espada e Escudo - 40 (Azeroth) <<Warrior
#displayname Glifo de Regeneração Frenética Aprimorada - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
step
    .goto Felwood,51.6,82.0
    >>Fale com a |cRXP_FRIENDLY_Emissária Caninegro|r perto do Santuário Esmeralda
    .accept 82043 >>Aceite Os Deuses Selvagens
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_Para completar esta missão você precisará de uma pessoa com um|r |T134799:0|t|cRXP_LOOT_Wildwhisper Draught|r |cRXP_WARN_nas mochilas. Ele cai dos Trolls Élite em Jintha'alor nas Terras Agrestes. Pegue-a apenas se ninguém em seu grupo do Urzal dos Mortos tiver um|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>Procure um grupo para Urzal dos Mortos. Você precisará limpar o espiral até o chefe final |cRXP_ENEMY_Amnennar, o Frigífero|r e mate-o. Depois uma pessoa do grupo precisa usar seu |T134799:0|t|cRXP_LOOT_Wildwhisper Draught|r para invocar um |cRXP_FRIENDLY_Espírito Espectral de Agamaggan|r. Fale com ele para entregar a missão e receber uma de continuação
    .turnin 82043 >>Entregue Os Deuses Selvagens
    .accept 82044 >>Aceite Os Deuses Selvagens
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>Você recebeu agora um |T237378:0|t|cRXP_LOOT_Rugido de Agamaggan|r. Este item pode ser usado em áreas específicas em |cRXP_PICK_Abismo Rocha Negra|r, |cRXP_PICK_Zul'farrak|r e |cRXP_PICK_Maraudon|r para invocar um novo chefe |cRXP_ENEMY_Ancestral Delirante|r que sempre cai uma |T132119:0|t|cRXP_LOOT_Oferenda Selvagem|r na morte. Colete 3 delas para completar a missão. |T132119:0|t|cRXP_LOOT_Oferendas Selvagens|r também são usadas como moeda para comprar itens muito poderosos da |cRXP_FRIENDLY_Emissária Caninegro|r, então você pode querer farmar mais que apenas 3 para sua runa
    >>|cRXP_WARN_Em|r |cRXP_FRIENDLY_Zul'farrak|r |cRXP_WARN_mate 3 chefes e você será capaz de invocar um|r |cRXP_ENEMY_Ancestral Delirante|r |cRXP_WARN_perto do lago de Ghaz'rilla|r
    >>|cRXP_WARN_Em|r |cRXP_FRIENDLY_Maraudon|r |cRXP_WARN_mate|r |cRXP_ENEMY_Princesa Theradras|r |cRXP_WARN_e você será capaz de invocar um|r |cRXP_ENEMY_Ancestral Delirante|r |cRXP_WARN_na arena dela|r
    >>|cRXP_WARN_Em|r |cRXP_FRIENDLY_Abismo Rocha Negra|r |cRXP_WARN_mate|r |cRXP_ENEMY_Alto Interrogador Gerstahn|r, |cRXP_ENEMY_Mestre dos Cães Grebmar|r |cRXP_WARN_e complete|r |cRXP_ENEMY_o Evento da Arena|r |cRXP_WARN_. Depois você será capaz de invocar um|r |cRXP_ENEMY_Ancestral Delirante|r |cRXP_WARN_na Estrada da Escuridão Ferros (caminho para Bael'gar)|r
    >>|cRXP_WARN_DICA:|r As oferendas podem ser coletadas em uma incursão e você pode executar a mesma masmorra repetidamente. Atualmente a maneira mais rápida de farmá-las é |cRXP_WARN_entrar em uma incursão de 10 pessoas|r e executar |cRXP_WARN_repetições de Maraudon Princesa ou Zul'farrak|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>Vá para Selva Maleva
step
    .goto Felwood,51.6,82.0
    >>Fale com a |cRXP_FRIENDLY_Emissária Caninegro|r perto do Santuário Esmeralda
    .turnin 82044 >>Entregue Os Deuses Selvagens
    .target Shadowtooth Emissary
step
    .train 431650 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T237539:0|t[Égide Divina] << Priest
    .train 431461 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T132091:0|t[Glifo de Regeneração Frenética Aprimorada] << Druid
    .train 401754 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T135733:0|t[Proteção Avançada] << Mage
    .train 416085 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T236185:0|t[Largar o Dedo] << Hunter
    .train 429247 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T135925:0|t[Santuário Aprimorado] << Paladin
    .train 432293 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T135673:0|t[Vigor em Combate] << Rogue
    .train 410105 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T252995:0|t[Contracorrente] << Shaman
    .train 426470 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T236299:0|t[Vingança] << Warlock
    .train 427082 >>|cRXP_WARN_Use o|r |T236160:0|t[|cRXP_FRIENDLY_Sabedoria de Hyjal|r] que você recebeu |cRXP_WARN_para treinar|r |T236315:0|t[Espada e Escudo] << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group Guia Runas e Livros RestedXP
#subgroup Capacete <<Warlock
#subgroup Braçadeiras <<Paladin/Priest/Mage
#name Ley Cristal Runas
#displayname Deslocamento - 45 (Azeroth) <<Mage
#displayname Poder Purificador - 45 (Azeroth) <<Paladin
#displayname Desespero - 45 (Azeroth) <<Priest
#displayname Ignição Explosiva - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_Para encontrar esta runa, você vai precisar obter 4|r |T134938:0|t|cRXP_LOOT_Scrolls of Geomancia|r |cRXP_WARN_e canalizar um em quatro Ley Cristais em várias zonas do mundo para invocar os|r |cRXP_ENEMY_Enraged Leywalkers|r. |cRXP_WARN_Alternativamente, você pode se agrupar com outros magos que têm o pergaminho ou bruxos com|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragmentos|r << Mage
    >>|cRXP_WARN_Para encontrar esta runa, você vai precisar obter 4|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragmentos|r |cRXP_WARN_das suas|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Diabrete|r] |cRXP_WARN_expedições e canalizar um em quatro Ley Cristais em várias zonas do mundo para invocar os|r |cRXP_ENEMY_Enraged Leywalkers|r. |cRXP_WARN_Alternativamente, você pode se agrupar com outros bruxos que têm o fragmento ou magos com|r |T134938:0|t|cRXP_LOOT_Scrolls of Geomancia|r << Warlock
    +|cRXP_WARN_Para encontrar esta runa você vai precisar se agrupar com um bruxa com|r |T132842:0|t|cRXP_FRIENDLY_Fragmentos de Núcleo Mundial|r |cRXP_WARN_ou um mago com|r |T134938:0|t|cRXP_LOOT_Pergaminhos de Geomancia|r |cRXP_WARN_para invocar os inimigos necessários. Você não pode invocá-los por si mesmo|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>Vá para cada um dos Ley Cristais marcados em seu mapa e use seu |T134938:0|t|cRXP_LOOT_Scroll of Geomancia|r neles ou tenha alguém em seu grupo fazer isso para invocar um |cRXP_ENEMY_Trilha-meridianos Enfurecido|r. Derrote-o e saqueie seu |cRXP_LOOT_Leycryst|r. Isso pode ser feito em qualquer ordem << Mage
    >>Vá para cada um dos Ley Cristais marcados em seu mapa e use seu |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragmento|r neles ou tenha alguém em seu grupo fazer isso para invocar um |cRXP_ENEMY_Trilha-meridianos Enfurecido|r. Derrote-o e saqueie seu |cRXP_LOOT_Leycryst|r. Isso pode ser feito em qualquer ordem << Warlock
    >>Vá para cada um dos Ley Cristais marcados em seu mapa e tenha o bruxo ou mago em seu grupo invocar um |cRXP_ENEMY_Trilha-meridianos Enfurecido|r. Derrote-o e saqueie seu |cRXP_LOOT_Leycryst|r. Isso pode ser feito em qualquer ordem << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>|T237193:0|t|cRXP_LOOT_Meridistal de Azshara|r de |cRXP_PICK_Azshara|r perto da Serra Desolada
    .collect 221317,1 >>|T237189:0|t|cRXP_LOOT_Meridistal de Feralas|r de |cRXP_PICK_Feralas|r em High Wilderness
    .collect 221319,1 >>|T237192:0|t|cRXP_LOOT_Meridistal da Rocha Negra|r do sul de |cRXP_PICK_Searing Engolir|r
    .collect 221320,1 >>|T237191:0|t|cRXP_LOOT_Meridistal das Terras Agrestes|r de |cRXP_PICK_The Terras Agrestes|r ao norte de Altar of Zul
    .mob Enraged Leywalker
    .train 429309,1 << Mage
    .train 431745,1 << Warlock
    .train 429255,1 << Paladin
    .train 431673,1 << Priest
step
    .train 429309 >>|cRXP_WARN_Use qualquer um dos quatro cristais que você coletou para combiná-los e aprender|r |T132171:0|t[Deslocamento] << Mage
    .train 431745 >>|cRXP_WARN_Use qualquer um dos quatro cristais que você coletou para combiná-los e aprender|r |T236290:0|t[Ignição Explosiva] << Warlock
    .train 429255 >>|cRXP_WARN_Use qualquer um dos quatro cristais que você coletou para combiná-los e aprender|r |T135950:0|t[Poder Purificador] << Paladin
    .train 431673 >>|cRXP_WARN_Use qualquer um dos quatro cristais que você coletou para combiná-los e aprender|r |T237555:0|t[Desespero] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Destreza Mental << Shaman
#title Dor e Sofrimento << Priest
#name Destreza Mental - 43 (Tanaris) << Shaman
#name Dor e Sofrimento - 43 (Tanaris) << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>Abate |cRXP_ENEMY_Wastewander Sombra Mages|r. Saque o |T134939:0|t[|cRXP_LOOT_Anotações de Bruxo Codificadas|r] deles
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>Abate |cRXP_ENEMY_Wastewander Thieves|r. Saque o |T134329:0|t[|cRXP_LOOT_Código Errante|r] deles
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>Abate |cRXP_ENEMY_Wastewander Sombra Mages|r. Saque o |T134939:0|t[|cRXP_LOOT_Anotações de Bruxo Codificadas|r] deles
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Use o|r |T134329:0|t[Código Errante] |cRXP_WARN_para receber|r |T237018:0|t[Deciphered Bruxo Notes]
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Fique em cima do|r "Cryptic Pergaminho de Evocação". |cRXP_WARN_Use o|r |T237018:0|t[Deciphered Bruxo Notes] |cRXP_WARN_enquanto estiver em cima do pergaminho|r.
    >>Abate o |cRXP_ENEMY_Enraged Emissário do Caos|r. Saque a |T134419:0|t[|cRXP_FRIENDLY_Runa de Destreza Mental|r] dele << Shaman
    >>Abate o |cRXP_ENEMY_Enraged Emissário do Caos|r. Saque a |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Inverno|r] dele << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Destreza Mental|r] |cRXP_WARN_para aprender|r |T136055:0|t[Destreza Mental] << Shaman
    .train 415991 >>|cRXP_WARN_Use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Inverno|r] |cRXP_WARN_para aprender|r |T237567:0|t[Dor e Sofrimento] << Priest
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD/Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Arma de Longo Alcance
#name Especialização em Arma de Longo Alcance - 58 (Terras Pestilentas Orientais)

step
    #completewith rangeSpec
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step << Horde
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Saque o livro vermelho ao lado do |cRXP_FRIENDLY_Nathanos Arauto da Praga|r. Fica fora da casa, à esquerda da porta. Contém a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Arma de Longo Alcance|r]
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step << Alliance
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Saque o livro vermelho ao lado do |cRXP_ENEMY_Nathanos Arauto da Praga|r. Fica fora da casa, à esquerda da porta. Contém a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Arma de Longo Alcance|r]
    >>|cRXP_WARN_Se há alguém próximo, peça-lhes para afastar|r |cRXP_ENEMY_Nathanos Arauto da Praga|r |cRXP_WARN_por um tempo enquanto você saqueie a runa com segurança|r
    >>|cRXP_WARN_Se não há ninguém próximo, você pode morrer para|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_e então ressuscitar enquanto se posiciona dentro da casa e fora de sua linha de visão. Depois saqueie o livro de dentro da casa usando a tecla de interação ou ajustando a câmera para conseguir clicar nele|r << Warrior/Rogue
    >>|cRXP_WARN_Se não há ninguém próximo, coloque seu mascote em|r |T136106:0|t[Stay] |cRXP_WARN_a uma distância decente de|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_então envie um comando de|r |T132152:0|t[Atacar] |cRXP_WARN_do mascote para que o inimigo o ataque. Uma vez que ele está mirando seu mascote, coloque seu mascote em|r |T132311:0|t[Passiva], |cRXP_WARN_isso fará seu mascote retornar à sua posição de Stay. Passe ao lado do livro e use |T132293:0|t[Fingir de Morto] para sair do combate e saqueie a runa|r << Hunter
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step
    .train 453692 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Arma de Longo Alcance|r] |cRXP_WARN_para aprender|r |T135490:0|t[Especialização em Arma de Longo Alcance]
    .use 226410
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD/Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização Sagrada
#name Especialização Sagrada - 60 (Terras Pestilentas Orientais)

step
    #completewith next
    >>|cRXP_WARN_Obter esta runa exigirá que você lute contra inimigos em uma área élite. É possível fazer sozinho, mas se você for de nível mais baixo ou não estiver bem equipado, considere procurar alguém para ajudá-lo|r
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    >>|cRXP_WARN_Você pode obter esta runa ao mesmo tempo que|r |T135883:0|t[|cRXP_FRIENDLY_Cura Vinculada|r] |cRXP_WARN_se você avançar naquela linha de missão primeiro. Vá para|r |T135883:0|t[|cRXP_FRIENDLY_Cura Vinculada|r] |cRXP_WARN_guia de runa se você preferiria obter ambas as runas ao mesmo tempo|r << Priest
    .goto Eastern Plaguelands,77.5,81.7,50 >>Viagem para Manopla de Tyr, |cRXP_WARN_lembre-se de que esta é uma área élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Cabeça para a ala da biblioteca do prédio marcado no seu mapa e procure por um livro localizado no topo de uma estante. Saque-o para obter a runa. Tenha em mente que você não pode saqueá-lo em combate|r
    >>|cRXP_WARN_Você pode eliminar todos os inimigos da sala ou morrer ao lado do livro e ressuscitar em um local que está fora da linha de visão dos inimigos para saquear a runa sem precisar matar nada|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização Sagrada|r] para aprender |T237537:0|t[Especialização Sagrada]
    .train 453702,1
    .itemcount 226418,1
    .use 226418
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Druid SoD/Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização Arcana
#name Especialização Arcana - 60 (Terras Pestilentas Ocidentais)

step
    #completewith next
    >>|cRXP_WARN_Obter esta runa exigirá que você lute contra inimigos em uma área élite. É possível fazer sozinho, mas se você for de nível mais baixo ou não estiver bem equipado, considere procurar alguém para ajudá-lo|r
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .goto Western Plaguelands,48.7,22.4,50 >>Viagem para Hearthglen, |cRXP_WARN_lembre-se de que esta é uma área élite|r
step
    .goto Western Plaguelands,47.3,13.6
    >>|cRXP_WARN_Vá para o topo da torre marcada no seu mapa. Procure por um livro vermelho deitado em um canto ao lado de uma estante, é guardado por|r |cRXP_ENEMY_Scarlet Sacerdote|r. |cRXP_WARN_Saque-o para obter a runa|r
    .collect 226413,1 --Rune of Arcane Specialization
    .train 453702,1
step
    #completewith next
    .train 453695 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização Arcana|r] para treinar |T132849:0|t[Especialização Arcana]
    .train 453695,1
    .itemcount 226413,1
    .use 226413
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Paladin SoD/Warrior SoD/Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Machado
#name Especialização em Machado - 58 (Estepes Ardentes)

step
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    .goto Burning Steppes,40.3,34.9,100 >>Vá para o Blackrock Baluarte
step
    .goto Burning Steppes,39.9,34.1
    >>|cRXP_WARN_Entre no Baluarte e procure por um livro vermelho deitado no local marcado no seu mapa. Saque-o pela runa|r
    .collect 226407,1 --Rune of Axe Specialization
step
    #completewith next
    .train 453688 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Machado|r] para treinar |T132394:0|t[Especialização em Machado]
    .itemcount 226407,1
    .use 226407
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Warrior SoD/Shaman SoD/Mage SoD/Priest SoD/Rogue SoD/Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Adaga
#name Especialização em Adaga - 60 (Silithus)

step
    #completewith next
    .zone Burning Steppes >>Vá para Silithus
step
    .goto Silithus,20,85,50 >>Vá para o sul da zona até uma tenda perto dos portões de Ahn'Qiraj
step
    .goto Silithus,20,85
    >>|cRXP_WARN_Entre na tenda e procure por um livro vermelho deitado no local marcado no seu mapa. Saque-o pela runa|r
    .collect 226409,1 --Rune of Dagger Specialization
step
    #completewith next
    .train 453690 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Adaga|r] para treinar |T135641:0|t[Especialização em Adaga]
    .itemcount 226409,1
    .use 226409
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Warrior SoD/Shaman SoD/Rogue SoD/Warlock SoD/Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização de Defesa
#name Especialização de Defesa - 60 (Blackrock Mountain)

step
    #completewith next
    .zone 25 >>Vá para Blackrock Mountain através de Garganta Abrasadora ou das Estepes Ardentes
step
    .goto 1415/0,-1232.500,-7612.600,20 >>Vá para o lado leste do círculo abrasador até encontrar uma entrada que leva a um caminho para o Lower Blackrock Spire
step
    .goto 1415/0,-1294.200,-7574.700,5 >>Suba pelo caminho e entre no primeiro quarto lateral à sua direita. |cRXP_WARN_Você pode precisar matar inimigos de elite no seu caminho já que não pode saquear o livro enquanto em combate|r
step
    .goto 1415/0,-1302.100,-7583.400
    >>|cRXP_WARN_Procure por um livro vermelho deitado no chão nesta sala. Pode aparecer em múltiplas localizações. Saque-o pela runa|r
    .collect 226694,1 --Rune of Defense Specialization
step
    #completewith next
    .train 459313 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização de Defesa|r] para treinar |T134952:0|t[Especialização de Defesa]
    .itemcount 226694,1
    .use 226694
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Combate Feral
#name Especialização em Combate Feral - 60 (Hibérnia)

step
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .goto Winterspring,49.0,8.0,50 >>Vá para o norte em direção à Pedra Sabre-de-gelo
step
    .goto Winterspring,49.0,8.0
    >>|cRXP_WARN_Procure por um livro vermelho no local marcado. Pode estar guardado por dois inimigos níveis 55-56|r |cRXP_ENEMY_Frostsabers|r |cRXP_WARN_Saque-o pela runa|r
    .collect 226419,1 --Rune of Feral Combat Specialization
step
    #completewith next
    .train 453703 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Combate Feral|r] para treinar |T132116:0|t[Especialização em Combate Feral]
    .itemcount 226419,1
    .use 226419
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Mage SoD/Shaman SoD/Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Fogo
#name Especialização em Fogo - 52 (Garganta Abrasadora)

step
    #completewith next
    .zone Searing Gorge >>Vá para Garganta Abrasadora
step
    .goto 1427/0,-1425.800,-6772.400,25 >>Entre em Slag Pits através da entrada da caverna marcada no seu mapa
step
    .goto 1427/0,-1306.900,-6642.800,25 >>Atravesse a ponte em direção ao norte
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Procure por um livro vermelho em um banco atrás|r |cRXP_ENEMY_Feitor Maltorius|r. |cRXP_WARN_Saque-o pela runa. Tenha em mente que você não pode fazer isso enquanto em combate|r
    >>|cRXP_WARN_Se você for de nível mais alto, você pode saqueá-lo sem enfrentar em combate|r |cRXP_ENEMY_Feitor Maltorius|r |cRXP_WARN_se você se manter na beira da varanda dele, se você não conseguir tente pedir a alguém para puxá-lo enquanto você saqueia o livro ou mate-o e seus guardas|r
    >>|cRXP_WARN_Como um Caçador, você pode puxá-lo para longe com seu mascote, depois lance|r |T132293:0|t[Fingir de Morto] |cRXP_WARN_enquanto próximo ao livro para sair do combate e saqueie-o. Certifique-se de puxar o Feitor em algum lugar fora de sua linha de visão ou ele pode colocá-lo de volta em combate|r << Hunter
    .collect 226414,1 --Rune of Fire Specialization
step
    #completewith next
    .train 453696 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Fogo|r] para treinar |T132847:0|t[Especialização em Fogo]
    .itemcount 226414,1
    .use 226414
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Druid SoD/Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Arma de Punho
#name Especialização em Arma de Punho - 60 (Silithus)

step
    #completewith next
    .zone Silithus >>Vá para Silithus
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Procure por um livro vermelho no local marcado. Está envolvido pelo crepúsculo e pode ser um pouco difícil de ver|r
    .collect 226411,1 --Rune of Fist Weapon Specialization
step
    #completewith next
    .train 453691 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Arma de Punho|r] para treinar |T133832:0|t[Especialização em Arma de Punho]
    .itemcount 226411,1
    .use 226411
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Hunter SoD/Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização Gélida
#name Especialização Gélida - 60 (Hibérnia)

step
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .goto Winterspring,59.0,59.0,50 >>Vá para o sul até o Owlbeast Camp
step
    .goto Winterspring,59.0,59.0
    >>|cRXP_WARN_Procure um livro vermelho no local marcado. Pode estar guarnecido por um par de criaturas nível 57-58|r |cRXP_ENEMY_Owlbeasts|r |cRXP_WARN_Saque-o para obter a runa|r
    .collect 226415,1 --Rune of Frost Specialization
step
    #completewith next
    .train 453697 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização Gélida|r] para treinar |T132852:0|t[Especialização Gélida]
    .itemcount 226415,1
    .use 226415
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Rogue SoD/Shaman SoD/Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Natureza
#name Especialização em Natureza - 56 (Selva Maleva)

step
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
step
    .goto Felwood,63.42,7.71,50 >>Vá para o norte até o Felpaw Village
step
    .goto Felwood,62.8,7.5
    >>|cRXP_WARN_Procure um livro vermelho no local marcado. Está em um acampamento ao lado de|r |cRXP_ENEMY_Chefe Gorjassangue|r |cRXP_WARN_Saque-o para obter a runa|r
    .collect 226416,1 --Rune of Nature Specialization
step
    #completewith next
    .train 453698 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Natureza|r] para treinar |T132848:0|t[Especialização em Natureza]
    .itemcount 226416,1
    .use 226416
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Rogue SoD/Shaman SoD/Paladin SoD/Priest SoD/Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Maça
#name Especialização em Maça - 60 (Pantanal)

step
    #completewith next
    .zone Wetlands >>Viagem para Pantanal
step
    .goto 1437/0,-3451.700,-3450.800,25 >>Vá para o leste até o início do caminho para Grim Batol
step
    .goto 1437/0,-3582.500,-4138.200,25 >>Siga a estrada todo o caminho até Grim Batol. |cRXP_WARN_Não lute contra os dragões vermelhos no caminho. Você consegue chegar lá sem precisar matar nenhum deles|r
step
     .goto 1437/0,-3451.900,-4052.500
    >>|cRXP_WARN_Siga o caminho até o portão de Grim Batol. Procure um livro vermelho no lado direito da entrada. Saque-o para obter a runa|r
    .collect 226408,1 --Rune of Mace Specialization
step
    #completewith next
    .train 453689 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Maça|r] para treinar |T133038:0|t[Especialização em Maça]
    .itemcount 226408,1
    .use 226408
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Warlock SoD/Shaman SoD/Mage SoD/Priest SoD/Druid SoD/Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Arma de Haste
#name Especialização em Arma de Haste - 60 (Azshara)

step
    #completewith next
    .zone Azshara >>Voe para Azshara
step
    .goto Azshara,76.43,43.95,100 >>Vá para o Templo de Arkkoran
step
    .goto Azshara,76.88,44.24
    >>|cRXP_WARN_Procure um livro vermelho em um poço lunar dentro do templo. Saque-o para obter a runa|r
    .collect 226412,1 --Rune of Pole Weapon Specialization
step
    #completewith next
    .train 453694 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Arma de Haste|r] para treinar |T135145:0|t[Especialização em Arma de Haste]
    .itemcount 226412,1
    .use 226412
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD/Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Sombra
#name Especialização em Sombra - 60 (Barreira do Inferno)

step
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
step
    .goto Blasted Lands,45.19,55.29,100 >>Vá para o sul até a Cicatriz Maculada. |cRXP_WARN_Você terá que atravessar uma área de Élite com vários inimigos imunes a CC de alto nível. Provavelmente terá que fazer death run até o local da runa|r
step
    .goto Blasted Lands,33.0,48.0
    >>|cRXP_WARN_Procure um livro vermelho em um altar marcado no seu mapa. Saque-o para obter a runa|r
    .collect 226417,1 --Rune of Shadow Specialization
step
    #completewith next
    .train 453700 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Sombra|r] para treinar |T132851:0|t[Especialização em Sombra]
    .itemcount 226417,1
    .use 226417
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Paladin SoD/Mage SoD/Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Espada
#name Especialização em Espada - 60 (Trilha do Vento Morto)

step
    #completewith next
    .zone Deadwind Pass >>Voe para Trilha do Vento Morto
step
    .goto Deadwind Pass,47.40,75.50 >>Vá para Karazhan
step
    .goto 1430/0,-2019.100,-11170.300,10 >>Entre na Adega do Mestre
step
    .goto Deadwind Pass,43.06,74.58
    >>|cRXP_WARN_Entre na área da caverna e procure um livro vermelho no local marcado no seu mapa. Saque-o para obter a runa|r
    .collect 226406,1 --Rune of Sword Specialization
step
    #completewith next
    .train 453635 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Espada|r] para treinar |T132223:0|t[Especialização em Espada]
    .itemcount 226406,1
    .use 226406
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Warlock SoD/Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Meditação
#name Especialização em Meditação - 30 (Mil Agulhas)

step
    #completewith next
    .zone Thousand Needles >>Vá para as Planícies Cintilantes em Mil Agulhas
    >>A rota de voo mais próxima para a localização da runa é Gadgetzan
step
    .goto Thousand Needles,80,77,10 >>Vá para dentro da cabana marcada no seu mapa
step
    .goto Thousand Needles,80,77
    >>|cRXP_WARN_Entre na cabana e procure por um |cRXP_WARN_livro cinzento|r deitado em uma prateleira dentro. Saque-o para obter a runa|r
    .collect 231828,1 --Rune of Meditation Specialization
step
    .train 468763 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Meditação|r] para treinar |T135913:0|t[Especialização em Meditação]
    .itemcount 231828,1
    .use 231828
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Anel
#title Especialização em Cura
#name Especialização em Cura - 40 (Planalto Arathi)

step
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .goto Arathi Highlands,21.98,79.75,40 >>Vá para Faldir's Cove, siga o caminho entre as montanhas e a parede sudeste de Stromgarde
step
    .goto Arathi Highlands,35.2,79.1
    >>|cRXP_WARN_Cabeça para a fogueira ao lado de |cRXP_FRIENDLY_Professor Bruzundanga|r procure por um |cRXP_WARN_livro cinzento|r deitado em uma caixa ao lado da fogueira. Saque-o para obter a runa|r
    .collect 231829,1 --Rune of Healing Specialization
    .target Professor Phizzlethorpe
step
    .train 468761 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Cura|r] para treinar |T135913:0|t[Especialização em Cura]
    .itemcount 231829,1
    .use 231829
]])
