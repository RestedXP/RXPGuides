if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 1-7 Coldridge Valley
#next 6-11 Dun Morogh SoD
#displayname 1-7 Coldridge Valley
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa.
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
    .target Sten Stoutarm
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] dele|r << Priest
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] e |T132540:0|t[Botas] |cRXP_WARN_(não podem ser gravados)|r |cRXP_BUY_e compre |T133745:0|t[|cRXP_FRIENDLY_Itens de MoP|r] e |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r] dele|r << Paladin
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] dele|r << Warrior
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre |T133733:0|t[|cRXP_FRIENDLY_Grimório de Armadura Vil|r] dele|r << Warlock
    >>|cRXP_BUY_Venda o lixo e compre |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r]|r << Rogue
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chama Viva|r] dele|r << Mage
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] e |T132540:0|t[Botas] |cRXP_WARN_(não podem ser gravados em)|r |cRXP_BUY_e compre |T134419:0|t[|cRXP_FRIENDLY_Rune of Comando para Matar|r] e |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] dele|r << Hunter
    >>|cRXP_BUY_Venda o lixo e compre todas as runas a seguir:|r << Warlock
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    #sticky
    #optional
    #label Libram << Paladin
    .equip 18 >>Equipe o |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r], você pode usá-lo após 30 segundos para aprender |T135891:0|t[Golpe do Cruzado] << Paladin
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 228797 << Warlock --Grimoire of Fel Armor
    .train 402852 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] para treinar |T237570:0|t[Homúnculos] << Priest
    .train 407798 >>Usar o |T133745:0|t[|cRXP_FRIENDLY_Testament of Martírio|r] para treinar |T135961:0|t[Selo do Martírio], |cRXP_WARN_use it as your primary Seal|r << Paladin
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] << Warrior
    .train 401768 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chama Viva|r] << Mage
    .train 410111 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Comando para Matar|r] << Hunter
    .train 409580 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] para treinar |T132185:0|t[Coração de Leão] << Hunter
    .train 403619 >>Usar o |T133733:0|t[|cRXP_FRIENDLY_Grimório de Armadura Vil|r] para treinar |T136156:0|t[Armadura Vil] << Warlock
    .engrave 7 >>Grave |T236174:0|t[Tiro Mortal] nas calças << Hunter
    .engrave 7 >>Grave |T135820:0|t[Chama Viva] em suas calças << Mage
    .engrave 7 >>Grave |T237570:0|t[Homúnculos] em suas calças << Priest
    .engrave 7 >>Grave |T236317:0|t[Ataque Frenético] nas calças << Warrior
    >>|cRXP_WARN_Dica:|r Você pode puxar múltiplos |cRXP_ENEMY_Wolves|r com |T135812:0|t[Bola de Fogo] e depois AdE-los com |T135820:0|t[Chama Viva] << Mage
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >>Usar o |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r] para aprender |T135891:0|t[Golpe do Cruzado]
step << Hunter
    #optional
    #sticky
    .aura 409583 >>Lembre de ativar o |T132185:0|t[Coração de Leão]
step << Warlock
    #optional
    #sticky
    .aura 403619 >>|cRXP_WARN_Certifique-se de que você se lembra de ativar seu|r |T136156:0|t[Armadura Vil]
step << Paladin
    #optional
    #completewith next
    .aura 407798 >>Lembre de usar |T135961:0|t[Selo do Martírio] como seu selo
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mate os |cRXP_ENEMY_Ragged Young Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>Farme até o nível 2
    .mob Ragged Young Wolf
step << Warrior/Mage/Warlock/Hunter
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o lixo e compre|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] << Warrior
    .vendor >>|cRXP_BUY_Venda o lixo e compre todas as runas principais de AdE|r << Mage
    .vendor >>|cRXP_BUY_Venda o lixo e compre todas as runas a seguir:|r << Hunter/Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    >>Lança de Gelo é apenas útil para que você possa entregar uma missão mais tarde << Mage
    >>|cRXP_WARN_Você obterá as outras runas mais tarde|r
    .target Rune Broker
    .skipgossip
step << Warrior/Mage/Hunter
    .train 403470 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória], você a graverá em breve << Warrior
    .train 415936 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Bomba Viva|r] para treinar |T236220:0|t[Bomba Viva] << Mage
    .train 401759 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Combustão|r] para treinar |T236207:0|t[Combustão] << Mage
    .train 440858 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Orbe Congelado|r] para treinar |T135851:0|t[Orbe Congelado] << Mage
    .train 401760 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Lança de Gelo|r] para treinar |T135844:0|t[Lança de Gelo] << Mage
    .train 410121 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa da Quimera|r] para treinar |T236176:0|t[Tiro Quimérico] << Hunter
    .train 410122 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Lobo Solitário|r] para treinar |T132266:0|t[Lobo solitário] << Hunter
    .train 416086 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Fechar Combate|r] para treinar |T132394:0|t[Especialista em Corpo a Corpo] << Hunter
    .train 440563 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para treinar |T132171:0|t[Bater e Correr] << Hunter
    .train 415423 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Aspecto da Víbora para treinar |T132160:0|t[Aspecto da Víbora]|r] << Hunter
    .train 416009 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r] para treinar |T136150:0|t[Táticas Demoníacas] << Warlock
    .train 425476 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] para treinar |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 416015 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] para treinar |T135789:0|t[Incinerar] << Warlock
    .train 403919 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] para treinar |T236298:0|t[Assombrar] << Warlock
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Mercador
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    >>|cRXP_WARN_Tenha certeza de que você guarda 10c para depois|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Warrior !Rogue
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Mercador << Hunter
    >>|cRXP_BUY_Compre 600|r |T132384:0|t[Luz Shots] |cRXP_BUY_dele|r << Hunter
    .vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    >>|cRXP_WARN_Equipe as luvas que você recebe desta missão para gravar uma runa nelas|r
    .turnin 179 >>Entregue Equipadores Anões
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3106 >>Aceite Runa Simples << Dwarf Warrior
    .accept 3107 >>Aceite Runa Consagrada << Dwarf Paladin
    .accept 3108 >>Aceite Runa Cinzelada << Dwarf Hunter
    .accept 3109 >>Aceite Runa Cifrada << Dwarf Rogue
    .accept 3110 >>Aceite Runa Santificada << Dwarf Priest
    .accept 3112 >>Aceite Simple Memorandum << Gnome Warrior
    .accept 3113 >>Aceite Memorando Criptografado << Gnome Rogue
    .accept 3114 >>Aceite Memorando Glífico << Gnome Mage
    .accept 3115 >>Aceite Runa Conspurcada << Gnome Warlock
    .target Sten Stoutarm
step << Priest/Paladin/Rogue
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Compre todas as seguintes runas:|r
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Priest/Paladin/Rogue
    .train 400101 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Passo Furtivo|r] para treinar |T132303:0|t[Passo Furtivo] << Rogue
    .train 432301 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Jogo Sujo|r] para treinar |T236285:0|t[Vantagem Desleal] << Rogue
    .train 400105 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] para treinar |T132323:0|t[Golpe Sombrio] << Rogue
    .train 424984 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] para treinar |T132375:0|t[Talho de Sabre] << Rogue
    .train 415922 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Espadachim|r] para treinar |T134538:0|t[Bacamarte] << Rogue
    .train 431663 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epifania|r] para treinar |T136181:0|t[Aparições Corrompidas] << Priest
    .train 425216 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r] para treinar |T237514:0|t[Peste do Caos] << Priest
    .train 402862 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Acólito Perturbado|r] para treinar |T237545:0|t[Penitência] << Priest
    .train 402849 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia da Morte de um Rei|r] para treinar |T136149:0|t[Palavra Sombria: Morte] << Priest
    .train 410014 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Tempestade Divina|r] para treinar |T236250:0|t[Tempestade Divina] << Paladin
    .train 410008 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Vingador|r] para treinar |T135874:0|t[Escudo do Vingador] << Paladin
    .train 410013 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo do Íntegro|r] para treinar |T236253:0|t[Martelo do Íntegro] << Paladin
    .train 440788 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Escudo de Retidão|r] para treinar |T236265:0|t[Escudo de Retidão] << Paladin
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Mage
    #optional
    #sticky
    .engrave 15 >>Fique atento a quedas de capa. Uma vez que conseguir uma, grave |T135851:0|t[Orbe Congelado] nela
    >>|cRXP_WARN_Este feitiço é absurdamente poderoso|r
step << Mage/Hunter/Priest
    .equip 10 >>Equipe as |T132939:0|t[Luvas do Tratador de Lobos] << Hunter
    .equip 10 >>Equipe as |T132940:0|t[Luvas do Tratador de Coelhos] << Mage
    .use 6171 << Hunter --Wolf Handler Gloves
    .use 719 << Mage --Rabbit Handler Gloves
    .engrave 10 >>Grave |T236176:0|t[Tiro Quimérico] nas luvas << Hunter
    .engrave 7 >>Grave |T135820:0|t[Chama Viva] em suas calças << Mage
    .engrave 10 >>Grave |T236220:0|t[Bomba Viva] em suas luvas << Mage
    .engrave 5 >>Grave |T236207:0|t[Combustão] no seu peito << Mage
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Hunter
    #sticky
    #optional
    >>|cRXP_WARN_Fique atento a quaisquer|r Baú/Belt/Manto |cRXP_WARN_quedas|r|cRXP_WARN_. Equipe-os e grave as runas respectivas|r
    .engrave 5 >>Grave |T132266:0|t[Lobo solitário] no |T132724:0|t[Baú]
    .engrave 6 >>Grave |T132394:0|t[Especialista em Corpo a Corpo] no |T132513:0|t[Belt]
    .engrave 15 >>Grave |T132171:0|t[Bater e Correr] no |T133771:0|t[Manto]
step << Paladin
    #completewith next
    +Abate mais |cRXP_ENEMY_Lobos|r ou |cRXP_ENEMY_Troggs|r até ter 88 cobre em lixo de vendedor. |cRXP_WARN_Você precisará disso para comprar armas em breve|r
    .money >0.0088
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
step << !Hunter !Mage
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>Entre em Anvilmar << Rogue/Warlock/Paladin
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar << !Rogue !Warlock !Paladin
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .turnin 3107 >>Entregue Runa Consagrada << Dwarf
    .accept 77657 >>Aceite Relíquias da Luz << Dwarf
    .turnin 77657 >>Entregue Relíquias da Luz << Dwarf
    .target Bromos Grummner
step << Paladin
    .goto Dun Morogh,28.79,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r
    >>|cRXP_WARN_Subir de nível com um escudo e uma arma de uma mão no início é muito mais rápido pelo poder das runas de escudo|r
    >>|cRXP_BUY_Venda sucata e compre o|r |T134955:0|t[Escudo Pequeno]
    .collect 17184,1 --Small Shield (1)
    .target Grundel Harkin
step << Paladin
    .goto Dun Morogh,28.66,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rybrad Friamargem|r
    >>|cRXP_WARN_Subir de nível com um escudo e uma arma de uma mão no início é muito mais rápido pelo poder das runas de escudo|r
    >>|cRXP_BUY_Venda sucata e compre o|r |T133485:0|t[Clava]
    .collect 2130,1 --Club (1)
    .target Rybrad Coldbank
step << Paladin
    #sticky
    >>|cRXP_WARN_Fique atento para qualquer|r |T132624:0|t[Baú]|cRXP_WARN_,|r |T132602:0|t[Bracers] |cRXP_WARN_ou|r |T133762:0|t[Manto] |cRXP_WARN_que você pode equipar|r
    .engrave 5 >>Grave |T236250:0|t[Tempestade Divina] no seu peito
    .engrave 9 >>Grave |T236253:0|t[Martelo do Íntegro] em suas Bracers
    .engrave 15 >>Grave |T236265:0|t[Escudo de Retidão] em sua capa
step << Paladin
    #optional
    #completewith next
    .equip 16,2130 >>Equipe a |T133485:0|t[Clava]
    .equip 17,17184 >>Equipe o |T134955:0|t[Escudo Pequeno]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    >>|cRXP_WARN_Você não precisa treinar magias ainda, não vale a pena usá-las em vez das runas|r
    .accept 1599 >>Aceite Beginnings
    .turnin 3115 >>Entregue Memorando Conspurcado << Gnome
    .accept 77666 >>Aceite Poder Roubado << Gnome
    .turnin 77666 >>Entregue Poder Roubado << Gnome
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r dentro
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .accept 77655 >>Aceite A Runa Perdida << Dwarf
    .turnin 77655 >>Entregue A Runa Perdida << Dwarf
    .accept 77656 >>Aceite A Runa Perdida << Gnome
    .turnin 77656 >>Entregue A Runa Perdida << Gnome
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r lá dentro
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .accept 77658 >>Aceite Três Vezes Roubado << Dwarf
    .turn in 77658 >>em 77658 >> Entregue Três Vezes Roubado << Dwarf
    .accept 77659 >>Aceite Três Vezes Roubado << Gnome
    .turnin 77659 >>Entregue Três Vezes Roubado << Gnome
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Priest/Rogue
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>Se você não tiver dinheiro suficiente para os dois itens |cRXP_WARN_(60 cobre)|r, mate mais os |cRXP_ENEMY_Lobos|r << Priest
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>Venda itens trash de vendedor e compre o |T132495:0|t[Cinto de Tecido Fino] e os |T132543:0|t[Sapatos de Tecido Fino], você precisará deles para gravar runas em breve << Priest
    >>Venda itens trash de vendedor e compre o |T132495:0|t[Cinto de Tecido Fino] e as |T132602:0|t[Braçadeiras de Tecido Fino], você precisará delas para gravar runas em breve << Rogue
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 << Priest --Thin Cloth Shoes (1)
    .collect 3600,1 << Rogue --Thin Cloth Bracers (1)
    .target Durnan Furcutter
step << Rogue
    .equip 6 >>Equipe o |T132495:0|t[Cinto de Tecido Fino]
    .equip 9 >>Equipe as |T132602:0|t[Braçadeiras de Tecido Fino]
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado]
    .engrave 6 >>Grave o |T132303:0|t[Passo Furtivo] no seu cinto
    .engrave 9 >>Grave a |T236285:0|t[Vantagem Desleal] nas suas braçadeiras
    .engrave 10 >>Grave |T132375:0|t[Talho de Sabre] em suas luvas
    .use 3599 --Thin Cloth Belt
    .use 3600 --Thin Cloth Bracers
    .use 2125 --Cracked Leather Gloves
step << Rogue
    #optional
    #sticky
    .engrave 15 >>Fique atento a quedas de capas. Quando você conseguir uma, grave o |T134538:0|t[Bacamarte] nela
    >>|cRXP_WARN_Esta é uma habilidade de ataque em área muito forte|r
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r dentro
    >>|cRXP_WARN_Trem|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_pois você precisará disso em breve para uma missão de classe|r << Dwarf
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .accept 77661 >>Aceite Meditação da Luz << Dwarf
    .turnin 77661 >>Entregue Meditação da Luz << Dwarf
    .target Branstock Khalder
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Grave as|cRXP_WARN_ |T132961:0|t[Luvas de Tecido Esfarrapado] |rcom|r |T133816:0|t[Gravar Luvas - Assombrar] << Warlock
    .train 403919,3 << Warlock
step << Priest/Paladin
    .engrave 6 >>Grave as |T136181:0|t[Aparições Corrompidas] no seu cinto << Priest
    .engrave 8 >>Grave a |T237514:0|t[Peste do Caos] nas botas << Priest
    .engrave 10 >>Grave |T136149:0|t[Palavra Sombria: Morte] nas luvas << Priest
    .engrave 7 >>Grave o |T135874:0|t[Escudo do Vingador] nas calças << Paladin
    .engrave 10 >>Grave o |T135891:0|t[Golpe do Cruzado] nas luvas << Paladin
step << Warlock
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>|cRXP_BUY_Comerciante lixo e compre|r |T132602:0|t[Braçadeiras de Tecido Fino] |cRXP_BUY_e|r |T132543:0|t[Sapatos de Tecido Fino]|cRXP_BUY_, você precisará deles para gravar uma runa em breve|r << Warlock
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .collect 2117,1 << Warlock --Thin Cloth Shoes (1)
    .target Durnan Furcutter
step << Warrior/Warlock
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas] << Warrior
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] nas luvas << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >>Equipe as |T132602:0|t[Braçadeiras de Tecido Fino] << Warlock
    .equip 10 >>Equipe os |T132543:0|t[Sapatos de Tecido Fino] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .use 2117 << Warlock --Thin Cloth Shoes
    .engrave 5 >>Grave as |T136150:0|t[Táticas Demoníacas] no seu peito << Warlock
    .engrave 7 >>Grave o |T237562:0|t[Pacto Demoníaco] nas calças << Warlock
    .engrave 9 >>Grave o |T135789:0|t[Incinerar] nas braçadeiras << Warlock
    .engrave 8 >>Grave a |T236302:0|t[Chama Sombria] nas botas << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>Farme até 1130+/1400xp
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >>Farme até 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Coldridge Valley Malha Entrega
    .accept 182 >>Aceite The Trolls Cave
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << Hunter/Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>Farme até o nível 4
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >>Entre na caverna dos Trolls
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Abate os |cRXP_ENEMY_Frostmane Novices|r dentro da caverna dos Trolls. Saque-os pelo |cRXP_LOOT_Feather Charms|r
    >>|cRXP_WARN_Você está contra o tempo. NÃO saia AFK ou faça logout|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Hunter/Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_Certifique-se de que terá pelo menos uma prata após vender. Você precisará dela para treinar|r |T132204:0|t[Picada de Serpente] << Hunter
    .hs >>Vá para Anvilmar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    #label EnterAnvilmar
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Você tem 5 minutos para retornar a Anvilmar antes que|r |T132791:0|t[Rabo-de-galo Escaldante de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,20 >>Entre em Anvilmar
step << Hunter
    #optional
    #completewith HTraining
    #requires EnterAnvilmar
    .goto Dun Morogh,28.77,66.37,0
    .vendor >>|cRXP_BUY_Considere comprar peças de equipamento faltantes de |cRXP_FRIENDLY_Durnan Cortapelo|r dentro de Anvilmar para gravar |T134419:0|t|cRXP_WARN_[Runas]|r em|r
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r dentro
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Mercador
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 2
    #label HTraining
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada << Dwarf
    .accept 77660 >>Aceite Caminhada nas Cavernas << Dwarf
    .turnin 77660 >>Entregue Caminhada nas Cavernas << Dwarf
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    >>|cRXP_WARN_Se você ainda não encontrou nenhum|r |T132624:0|t[Baú]|cRXP_WARN_ ou|r |T132602:0|t[Bracers] |cRXP_WARN_ ainda, compre-os do vendedor dentro de Anvilmar em vez de gastar dinheiro em feiços de treinamento. Runas são mais fortes que feiços que você pode comprar|r
    .trainer >>Treine suas magias de classe
    .target Bromos Grummner
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .turnin 1599 >>Entregue Beginnings
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Hunter
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue The Trolls Cave
    .accept 218 >>Aceite O Diário Roubado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_Você tem 5 minutos para obter |cRXP_LOOT_Diário de Grolin Barbabranca|r e retornar a Anvilmar antes|r |T132791:0|t[Durnan's Rabo-de-galo Escaldante] |cRXP_WARN_expirar|r
    >>|cRXP_WARN_Se você falhar a missão, não se preocupe pois pode obtê-la novamente depois|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>Entre na Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>Viaje para |cRXP_ENEMY_Grik'nir o Frio|r dentro
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mate o |cRXP_ENEMY_Grik'nir o Frio|r dentro. Saqueie-o pelos |cRXP_LOOT_Diário de Grolin Barbabranca|r
    >>|cRXP_WARN_Procure garantir que você terá 2 pratas após vender. Você precisará delas para aprender feiços logo|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>Saia da Frostmane Cave
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>|cRXP_WARN_Se você falhou a missão, pule este passo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Mercador
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Mercador
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>Abandone a missão [Durnan's Rabo-de-galo Escaldante]. Você a aceitará novamente depois.
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se você tiver um par ou sacar um par|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Grave sua|r |T132952:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r e |cRXP_FRIENDLY_Grolin Barbabranca|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .trainer >>Treine suas magias de classe
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .turnin 77667 >>Entregue Pesquisa de Feitiços << Gnome
    .trainer >>Treine suas magias de classe
    .target Marryk Nurribit
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .trainer >>Treine suas magias de classe
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão << Dwarf
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .trainer >>Treine suas magias de classe
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    >>Se você tem 2 prata, treine |T132155:0|t[Dilacerar] também
    .train 100,1 << Warrior --Charge
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 77667 >>Entregue Pesquisa de Feitiços
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >>Entregue A Runa Perdida << Dwarf
    .turnin 77656 >>Entregue A Runa Perdida << Gnome
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step << Mage
    #completewith next
    .hs >>Usar sua Pedra de Regresso
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >>Entregue Relíquias da Luz
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >>Entregue Caminhada nas Cavernas
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >>Abandone Relíquias da Luz pois você já tem um par de |T132938:0|t[Gloves] equipado << Paladin
    .abandon 77660 >>Abandone Caminhada nas Cavernas pois você já tem um par de |T132952:0|t[Gloves] equipado << Hunter
step
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o refugo para ele e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisar|r
    .target Rune Broker
    .skipgossip
step
    #label Observations
    >>Fale com o |cRXP_FRIENDLY_Montanhista Thalos|r e |cRXP_FRIENDLY_Mãos Rodamola|r
    .turnin 282 >>Entregue Observações de Senir
    .accept 420 >>Aceite Observações de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >>Aceite Suprimentos para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>Atravesse Coldridge Passe
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh SoD
#displayname 7-12 Dun Morogh
#next 12-13 Dun Morogh SoD
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Abata os |cRXP_ENEMY_Crag Boars|r ao viajar para Kharanos. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Costelas de Javali|r
    >>|cRXP_WARN_Guarde todos os|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você conseguir para Provisões para a Vaporeta e depois para subir seu|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
    .accept 287 >>Aceite A Fortaleza Jubafria--2.5x xp, should be lvl7 here
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160,1 >>Entregue Suprimentos para Tannok << Warrior/Rogue
    .turnin 2160,2 >>Entregue Suprimentos para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>Apague o |T135426:0|t[Faca de Arremesso Pequena Degradada] de sua mochila, pois não é mais necessário
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .train 921 >>Aprenda |T133644:0|t|cRXP_PICK_Picaretada Bater Carteira|r, você precisará disso para uma runa depois
    .target Hogral Bakkan
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .accept 5625 >>Aceite Vestimentas da Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lançar |T135929:0|t[Cura Inferior] (Rank 2) e então |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Montanhista Dolf|r fora
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .vendor >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que você puder pagar|r << Mage
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r
    >>Compre uma |T132800:0|t[|cRXP_LOOT_Rhapsody Malt|r] dele
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no edifício Ferraria
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t [Ferraria]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Suba no telhado do Kharanos Estalagem, depois pule no topo do grande barril. Siga a seta|r
    >>Abra o |cRXP_PICK_Rusty Caixa-forte|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .accept 313 >>Aceite The Grizzled Den
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r e |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Lance|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Mate os |cRXP_ENEMY_Javalis|r. Saque-os para |T134026:0|t[Dun Morogh Pig Carne]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #optional
    #completewith EvershineEnd
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para seus |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que conseguir pagar|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor 6328 >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_se puder pagá-lo. Senão, você poderá comprá-lo depois|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Videntes Frostmane|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >>|cRXP_WARN_Use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs digitando /pray próximo a um Altar de Luz na Catedral de Ventobravo, em Loch Modan ou o Bairro Místico em Ironforge|r
    >>|cRXP_WARN_O |T136057:0|t|cRXP_PICK_Meditação de Eluna|r bônus tem que vir de outro jogador sacerdote, usando a emote /pray em você enquanto você está ajoelhado com /kneel, se você vir outro sacerdote com outro bônus de meditação, peça-lhe|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Frostmane Videntes|r. Saque-os para o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .train 401768 >>|cRXP_WARN_Use a|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dele|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no edifício Ferraria
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >>Suba até o nível 6
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    >>|cRXP_WARN_Se você não tem dinheiro suficiente, farme inimigos ao redor de Kharanos. Você precisará deste feitiço para uma runa mais tarde|r
    .target Grif Wildheart

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>Voe para The Grizzled Den
    .isOnQuest 313
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate os |cRXP_ENEMY_Wendigos|r e os |cRXP_ENEMY_Young Wendigos|r. Saque-os de |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Ammo Caixote|r. Pegue |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Vá para |cRXP_FRIENDLY_Hegnar Estremetiro|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    >>|cRXP_BUY_Compre um|r |T135611:0|t[Bacamarte Ornado]|cRXP_BUY_dele|r
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .target Hegnar Rumbleshot
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>Tente terminar de saquear |T133972:0|t[|cRXP_LOOT_Crag Javali Ribs|r] dos javalís fora da caverna. |cRXP_WARN_Pule este passo se não houver nenhum aí|r
    >>|cRXP_WARN_Certifique-se de que você saqueou um |T134026:0|t[Dun Morogh Pig Carne]. Você precisará dele para obter uma runa agora|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usar |T134026:0|t[Dun Morogh Pig Carne] perto do cadáver dentro da caverna para invocar |cRXP_ENEMY_Jorul|r
    >>Abate |cRXP_ENEMY_Jorul|r. Saque-o de |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>Vá para Brewnall Village
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Leper Gnomes|r. Saque de |T134269:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Suba o lado da entrada da caverna. Pule para A Fortaleza Jubafria
    .isOnQuest 287
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Mate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Rogue
    #season 2
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    #completewith ShimmerweedCollect
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Frostmane Trolls|r. Saque de |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Largue para dentro da pequena sala sem saída da caverna|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >>Morra e ressurja em Kharanos
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue em A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .accept 6064 >>Aceite Adestramento da Fera - Missão << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob Large Crag Boar
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .accept 6084 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob Snow Leopard
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .accept 6085 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob Ice Claw Bear
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .accept 6086 >>Aceite Treinamento da Fera - Missão
    .target Grif Wildheart
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .accept 2218 >>Aceite Estrada para a Salvação
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .train 118 >>Treine |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil Canjento
    .target Pilot Stonegear
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Triturar até ter 10s30c de itens para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>Viaje para Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Bixi Bateagita|r ou |cRXP_FRIENDLY_Bulif Manopedra|r
    .trainer >>Se você está em um grupo ou tem alguém para ajudar a matar |cRXP_ENEMY_Ragash|r agora, treine 2h Maças com |cRXP_FRIENDLY_Bulif Manopedra|r, caso contrário, treine Arremesso com |cRXP_FRIENDLY_Bixi Bateagita|r. Se você não tiver certeza qual treinar, apenas treine Arremesso
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
