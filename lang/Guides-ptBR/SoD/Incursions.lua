if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group Missões Diárias da Incursão Pesadelo
#name (25-32) Incursão Pesadelo - Floresta do Crepúsculo

step
    #optional
    #completewith travel
    +|cRXP_WARN_Você superou o nível desta zona de incursão e receberá recompensas de XP reduzidas por fazer missões aqui. Selecione uma incursão diferente da lista que seja mais apropriada para seu nível.|r
    >>|cRXP_WARN_Os ganhos de Reputação são os mesmos independentemente do seu nível, mas uma vez que você atinja o nível 53, você pode fazer uma missão infinita de entrega de material de profissão para obter reputação extremamente rápida|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>Compre 10 |T133852:0|t[|cRXP_LOOT_Nightmare Moss|r], 10 |T134314:0|t[|cRXP_LOOT_Dream-Touched Dragonscale|r] e 10 |T134575:0|t[|cRXP_LOOT_Cold Ferro Ore|r] da casa de leilões antes de ir para Floresta do Crepúsculo
    >>|cRXP_WARN_Pule este passo se você não estiver perto de uma localização de casa de leilões ou os preços não parecerem vale a pena. Estas três missões fornecem uma quantidade combinada de 16.000 de XP e 225 de reputação|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >>|cRXP_WARN_Viaje para Floresta do Crepúsculo. Certifique-se de que você tem bastante espaço no seu Registro de Missões. Você precisará manter de 12 a 15 missões ao mesmo tempo da incursão no registro|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >>Vá para o caminho que leva ao Bosque do Crepúsculo
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >>Suba o caminho
    .maxlevel 53
step
    >>Procure um Quartermaster dos |cRXP_FRIENDLY_The Emerald Wardens|r no local marcado e compre sua runa deles
    .goto Duskwood,45.6,51.2
    .target Quartermaster Falinar
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Niilista|r] |cRXP_WARN_para treinar|r |T132886:0|t[Área de Caos] << Priest
    .train 429308 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Armadura Derretida|r] |cRXP_WARN_para treinar|r |T132221:0|t[Armadura Derretida] << Mage
    .train 431747 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Suplício|r] |cRXP_WARN_para treinar|r |T136228:0|t[Agonia Instável] << Warlock
    .train 416066 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Queimadura|r] |cRXP_WARN_para treinar|r |T135822:0|t[QUEIME] << Shaman
    .train 432297 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Vivacidade|r] |cRXP_WARN_para treinar|r |T236269:0|t[Ir ao Ponto] << Rogue
    .train 431611 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonação|r] |cRXP_WARN_para treinar|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Derramamento de Sangue|r] |cRXP_WARN_para treinar|r |T304501:0|t[Escorno] << Druid
    .train 429261 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo|r] |cRXP_WARN_para treinar|r |T236262:0|t[Martelo da Ira Aprimorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Intendente Falinar|r
    .vendor >>|cRXP_BUY_Compre até 5|r |T134718:0|t[Greater Cura Potions] |cRXP_BUY_dele se quiser.|r |cRXP_WARN_Estas podem ser usadas apenas nas zonas de incursão|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Intendente Falinar|r
    .vendor >>|cRXP_BUY_Compre até 5|r |T236885:0|t[Elevado de Cura Potions] |cRXP_BUY_dele se quiser.|r |cRXP_WARN_Estas podem ser usadas apenas nas zonas de incursão|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >>Aceite Missão X da Floresta do Crepúsculo: Musgo do Pesadelo
    .accept 81740 >>Aceite Missão XI da Floresta do Crepúsculo: Minério de Ferro Frio
    .accept 81741 >>Aceite Missão XII da Floresta do Crepúsculo: Escama de Dragão Tocada pelo Sonho
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >>Aceite Missão X da Floresta do Crepúsculo: Musgo do Pesadelo
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81740 >>Aceite Missão XI da Floresta do Crepúsculo: Minério de Ferro Frio
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81741 >>Aceite Missão XII da Floresta do Crepúsculo: Escama de Dragão Tocada pelo Sonho
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .turnin -81739 >>Entregue Missão X da Floresta do Crepúsculo: Musgo do Pesadelo
    .turnin -81740 >>Entregue Missão XI da Floresta do Crepúsculo: Minério de Ferro Frio
    .turnin -81741 >>Entregue Missão XII da Floresta do Crepúsculo: Escama de Dragão Tocada pelo Sonho
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    >>|cRXP_WARN_Você agora fará um looping de missão de incursão. Todas essas missões podem ser completadas em um grupo, tornando-as ainda mais eficientes. Se você vir algum jogador perto do dador de missão, tente formar um grupo. Se você encontrar alguns jogadores, você também pode fazer as missões de chefe que não seriam possíveis de fazer sozinho|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >>Aceite Missão I da Floresta do Crepúsculo: Derrotar Worgens
    .accept 81731 >>Aceite Missão II da Floresta do Crepúsculo: Derrotar Ogros
    .accept 81732 >>Aceite Missão III da Floresta do Crepúsculo: Derrotar Draconianos
    .accept 81733 >>Aceite Missão IV da Floresta do Crepúsculo: Inteligência sobre Ogros
    .accept 81734 >>Aceite Missão V da Floresta do Crepúsculo: Inteligência sobre Worgens
    .accept 81735 >>Aceite Missão VI da Floresta do Crepúsculo: Inteligência sobre Dragões
    .accept 81736 >>Aceite Missão VII da Floresta do Crepúsculo: Recuperar a Foice das Sombras
    .accept 81737 >>Aceite Missão VIII da Floresta do Crepúsculo: Recuperar Ogro Mago Text
    .accept 81738 >>Aceite Missão IX da Floresta do Crepúsculo: Recuperar Ovo de Dragão
    .accept 81745 >>Aceite Missão XVI da Floresta do Crepúsculo: Resgatar Kroll Sombramonte
    .accept 81746 >>Aceite Missão XVII da Floresta do Crepúsculo: Resgatar Alara Curabosque
    .accept 81747 >>Aceite Missão XVII da Floresta do Crepúsculo: Resgatar Elenora Andacharco <Druidesa da Garra>
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .accept 81742 >>Aceite Missão XIII da Floresta do Crepúsculo: Derrotar Ylanthrius
    .accept 81743 >>Aceite Missão XIV da Floresta do Crepúsculo: Derrotar Vvarc'zul
    .accept 81744 >>Aceite Missão XV da Floresta do Crepúsculo: Derrotar Amokarok
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Clique no portal ao lado do doador de missões|r para ser transportado para Sonho Esmeralda
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >>Saia da Floresta do Crepúsculo |cRXP_WARN_quando estiver dentro de Sonho Esmeralda|r
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>Abate |cRXP_ENEMY_Demente Ogros|r e |cRXP_ENEMY_Tecelões de Fogo Dementados|r enquanto completa outros objetivos
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >>Fale com |cRXP_FRIENDLY_Elenora Andacharco <Druidesa da Garra>|r deitada no chão. Ela deve começar a te seguir
    >>|cRXP_WARN_Se ela não estiver lá, isso significa que outra pessoa está escoltando-a, pule este passo se você não conseguir encontrá-la|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Tenha cuidado, se você morrer todos os NPCs de escolta que o seguem retornarão para onde você os apanhou e você terá que encontrá-los novamente|r
    >>|cRXP_WARN_O NPC de escolta também deixará de te seguir 15 minutos depois que você o pegar, então tente ser rápido!|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>Entre na caverna e pegue [|cRXP_LOOT_Ogro Mago Texto|r] deitado na plataforma no meio dela
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>Vá mais fundo na caverna e fale com o |cRXP_FRIENDLY_Guardião Onírico Thalinar|r para receber o |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Vvarc'Zul|r|cRXP_WARN_. Tenha cuidado pois ele tem uma quantidade massiva de saúde, lança|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_e invoca|r |T135819:0|t[Elemental do Fogo] |cRXP_WARN_reforços|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>Abate |cRXP_ENEMY_Filhotes de Terror Noturno|r e |cRXP_ENEMY_Caminhantes Terríveis Wyrmkin|r enquanto completa outros objetivos
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>Saque o [|cRXP_LOOT_Ovo de Arrastarão Verde Não Chocado|r] deitado no chão ao lado do toco de árvore
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >>Fale com |cRXP_FRIENDLY_Alara Curabosque <Druidesa da Garra>|r deitada no chão. Ela deve começar a te seguir
    >>|cRXP_WARN_Se ela não estiver lá, isso significa que outra pessoa está escoltando-a, pule este passo se você não conseguir encontrá-la|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>Entre na casa de fazenda e fale com o |cRXP_FRIENDLY_Guardião Onírico Amália|r para receber o |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Ylanthrius|r. |cRXP_WARN_Um dragão verde voando acima da fazenda|r|cRXP_WARN_. Ele tem uma quantidade massiva de saúde, é imune a feitiços de natureza, tem um|r|T132338:0|t[Cutilada]|cRXP_WARN_,|r |T134307:0|t[Revés com a Cauda] |cRXP_WARN_e|r |T135745:0|t[Invoca] |cRXP_WARN_um|r |cRXP_ENEMY_Draco|r |cRXP_WARN_reforço que lança um bafo frontal que causa dano enorme|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>Abate |cRXP_ENEMY_Pesadelo Corredores|r e |cRXP_ENEMY_Pesadelo Tecelões|r enquanto completa outros objetivos
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>Entre no celeiro e fale com |cRXP_FRIENDLY_NO TRANSLATION FOUND TO THIS ELEMENT|r para receber o |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    >>|cRXP_WARN_Não entre fundo no celeiro. Você pode falar com o NPC através da parede interna mirando nele e então usando sua tecla de interação|r
    >>|cRXP_WARN_Tenha cuidado pois o chefe|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_está parado bem ao lado do NPC|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_dentro do celeiro. Tenha cuidado pois ele tem uma quantidade massiva de saúde e lança um AdE|r |T136183:0|t[Medo]
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >>Fale com |cRXP_FRIENDLY_Kroll Sombramonte <Druida da Garra>|r deitado no chão. Ele deve começar a te seguir
    >>|cRXP_WARN_Se ele não estiver lá, isso significa que alguém está a escoltando, pule este passo se você não conseguir encontrá-lo|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>Vá para o segundo andar da casa maior e pegue o |T135138:0|t[|cRXP_LOOT_Foice das Sombras|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >>Vá para oeste até chegar a uma área fora dos limites do pesadelo. Sua tela começará a brilhar em verde e você será teleportado de volta perto da entrada. |cRXP_WARN_Não se preocupe, os NPCs que você está escoltando o seguirão de volta|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >>Volte para o portal do pesadelo. |cRXP_WARN_Não morra no caminho ou as missões de escolta falharão! Se você atingir o portal com segurança, todas as três missões devem ser completadas|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>Verifique se você recebeu crédito por todas as missões de escolta. Elas devem ser todas completadas quando você chegar ao portal. |cRXP_WARN_Tente se mover para frente e para trás um pouco se você não receber o crédito|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >>Volte para o portal que você usou para entrar no Emerald Dream e |cRXP_WARN_Clique nele para voltar para o mundo Normal|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >>Entregue Missão I da Floresta do Crepúsculo: Derrotar Worgens
    .turnin 81731 >>Entregue Missão II da Floresta do Crepúsculo: Derrotar Ogros
    .turnin 81732 >>Entregue Missão III da Floresta do Crepúsculo: Derrotar Draconianos
    .turnin 81733 >>Entregue Missão IV da Floresta do Crepúsculo: Inteligência sobre Ogros
    .turnin 81734 >>Entregue Missão V da Floresta do Crepúsculo: Inteligência sobre Worgens
    .turnin 81735 >>Entregue Missão VI da Floresta do Crepúsculo: Inteligência sobre Dragões
    .turnin 81736 >>Entregue Missão VII da Floresta do Crepúsculo: Recuperar a Foice das Sombras
    .turnin 81737 >>Entregue Missão VIII da Floresta do Crepúsculo: Recuperar Ogro Mago Texto
    .turnin 81738 >>Entregue Missão IX da Floresta do Crepúsculo: Recuperar Ovo de Dragão
    .turnin 81745 >>Entregue Missão XVI da Floresta do Crepúsculo: Resgatar Kroll Sombramonte
    .turnin 81746 >>Entregue Missão XVII da Floresta do Crepúsculo: Resgatar Alara Curabosque
    .turnin 81747 >>Entregue Missão XVII da Floresta do Crepúsculo: Resgatar Elenora Andacharco <Druidesa da Garra>
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Avançado Palandar|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .turnin -81742 >>Entregue Missão XIII da Floresta do Crepúsculo: Derrotar Ylanthrius
    .turnin -81743 >>Entregue Missão XIV da Floresta do Crepúsculo: Derrotar Vvarc'zul
    .turnin -81744 >>Entregue Missão XV da Floresta do Crepúsculo: Derrotar Amokarok
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_Você superou o nível de todas as zonas de incursão e não poderá mais aceitar nenhuma das missões regulares em nenhuma delas|r
    >>Se você está procurando ganhar reputação com o|r |cRXP_FRIENDLY_Emerald Wardens|r, há missões infinitamente repetíveis em Feralas onde você pode entregar 10 de qualquer um destes: |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] ou |T134312:0|t[|cRXP_LOOT_Moondragon Escamoso|r]
    >>Estas missões não dão XP ou ouro e recompensam 100 de reputação por entrega. Compre quantos dos materiais mais eficientes da Casa de Leilões você precisar e vá para Feralas para entregá-los
    .xp <53,1
step
    #optional
    +Você completou este loop da Incursão do Pesadelo. As missões ficarão disponíveis novamente após o reset diário. |cRXP_WARN_Selecione um guia diferente na lista para continuar|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group Missões Diárias da Incursão Pesadelo
#name (40-49) Vale Gris Pesadelo Incursão

step
    #optional
    #completewith next
    +|cRXP_WARN_Você superou o nível desta zona de incursão e receberá recompensas de XP reduzidas por fazer missões aqui. Selecione uma incursão diferente da lista que seja mais apropriada para seu nível.|r
    >>|cRXP_WARN_Os ganhos de Reputação são os mesmos independentemente do seu nível, mas uma vez que você atinja o nível 53, você pode fazer uma missão infinita de entrega de material de profissão para obter reputação extremamente rápida|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>Compre 10 |T132106:0|t[|cRXP_LOOT_Dreamroot|r], 10 |T134306:0|t[|cRXP_LOOT_Dream-Imbuído Dragonscale|r] e 10 |T133848:0|t[|cRXP_LOOT_Fool's Pó de Ouro|r] da casa de leilões antes de ir para Vale Gris
    >>|cRXP_WARN_Pular este passo se você não estiver perto de uma localização da casa de leilões ou os preços não parecerem valer a pena. Estas três missões dão uma quantidade combinada de 25.875xp e 225 de reputação|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >>Vá para Vale Gris. |cRXP_WARN_Certifique-se de ter bastante espaço no Registro de Missões. Você precisará manter de 12 a 15 missões simultaneamente da incursão no seu registro|r
    >>Se você tem a rota de voo de Azshara, é mais rápido voar para lá e depois correr para Vale Gris do que voar para Astranaar << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>Vá para a área do portal Pesadelo Esmeralda no nordeste do Vale Gris
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Kyleen|r
    .target Quartermaster Kyleen
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Niilista|r] |cRXP_WARN_para treinar|r |T132886:0|t[Área de Caos] << Priest
    .train 429308 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Armadura Derretida|r] |cRXP_WARN_para treinar|r |T132221:0|t[Armadura Derretida] << Mage
    .train 431747 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Suplício|r] |cRXP_WARN_para treinar|r |T136228:0|t[Agonia Instável] << Warlock
    .train 416066 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Queimadura|r] |cRXP_WARN_para treinar|r |T135822:0|t[QUEIME] << Shaman
    .train 432297 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Vivacidade|r] |cRXP_WARN_para treinar|r |T236269:0|t[Ir ao Ponto] << Rogue
    .train 431611 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonação|r] |cRXP_WARN_para treinar|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Derramamento de Sangue|r] |cRXP_WARN_para treinar|r |T304501:0|t[Escorno] << Druid
    .train 429261 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo|r] |cRXP_WARN_para treinar|r |T236262:0|t[Martelo da Ira Aprimorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .accept 81777 >>Aceite Missão X do Vale Gris: Raiz-de-Sonho
    .accept 81778 >>Aceite Missão XI do Vale Gris: Pó de Ouro de Tolo
    .accept 81779 >>Aceite Missão XII do Vale Gris: Escama de Dragão Infusa pelo Sonho
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .accept 81777 >>Aceite Missão X do Vale Gris: Raiz-de-Sonho
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .accept 81778 >>Aceite Missão XI do Vale Gris: Pó de Ouro de Tolo
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .accept 81779 >>Aceite Missão XII do Vale Gris: Escama de Dragão Infusa pelo Sonho
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .turnin -81777 >>Entregue Missão X do Vale Gris: Raiz-de-Sonho
    .turnin -81778 >>Entregue Missão XI do Vale Gris: Pó de Ouro de Tolo
    .turnin -81779 >>Entregue Missão XII do Vale Gris: Escama de Dragão Infusa pelo Sonho
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .accept 81772 >>Aceite Missão IV do Vale Gris: Inteligência sobre Sátiros
    .accept 81785 >>Aceite Missão XVIII do Vale Gris: Resgatar Maseara Lunautumna
    .accept 81784 >>Aceite Missão XVII do Vale Gris: Resgatar Doran Ramonírico
    .accept 81783 >>Aceite Missão XVI do Vale Gris: Resgatar Alíssian Clamaventos
    .accept 81776 >>Aceite Missão IX do Vale Gris: Recuperar Ovo de Dragão Tocado pelo Sonho
    .accept 81775 >>Aceite Missão VIII do Vale Gris: Recuperar a Profecia Azshariana
    .accept 81774 >>Aceite Missão VII do Vale Gris: Recuperar o Dreamengine
    .accept 81773 >>Aceite Missão do Vale Gris VI: Inteligência sobre Arvorosos
    .accept 81771 >>Aceite Missão IV do Vale Gris: Inteligência sobre Dragões
    .accept 81768 >>Aceite Missão I do Vale Gris: Derrotar Sátiros
    .accept 81769 >>Aceite Missão II do Vale Gris: Derrotar Arvorosos
    .accept 81770 >>Aceite Missão III do Vale Gris: Derrotar Draconianos
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .accept 81780 >>Aceite Missão XIII do Vale Gris: Derrotar Larsera
    .accept 81781 >>Aceite Missão XIV do Vale Gris: Derrotar Zalius
    .accept 81782 >>Aceite Missão XV do Vale Gris: Retalhador 9000
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Kyleen|r
    .vendor >>|cRXP_BUY_Compre até 5|r |T236885:0|t[Elevado de Cura Potions] |cRXP_BUY_dela se quiser|r
    >>|cRXP_WARN_Estes podem ser usados apenas dentro das zonas de Incursão|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Entre no |cRXP_PICK_Portal Esmeralda Onírico|r
    >>|cRXP_WARN_Corra direto passando pelos |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r e |cRXP_ENEMY_Imps|r. Eles vão resetar agressão ao entrar no portal|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>Mate os |cRXP_ENEMY_Wyrmkin Nightstalkers|r e os |cRXP_ENEMY_Terror Whelps|r
    >>|cRXP_WARN_Tenha cuidado.|r Os |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_são élites de nível 41|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>Fale com o |cRXP_FRIENDLY_Doran Ramonírico <Druida da Garra>|r. Ele deve começar a segui-lo.
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Tenha cuidado, se você morrer todos os NPCs de escolta que o seguem retornarão para onde você os apanhou e você terá que encontrá-los novamente|r
    >>|cRXP_WARN_O NPC de escolta também deixará de te seguir 15 minutos depois que você o pegar, então tente ser rápido!|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>Pegue o |cRXP_LOOT_Dream-Touched Dragão Ovo|r no chão
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Larsera|r|cRXP_WARN_. Ela tem uma piscina de vida enorme, é imune aos feitiços de natureza, tem um|r|T132338:0|t[Cutilada]|cRXP_WARN_,|r |T134307:0|t[Revés com a Cauda] |cRXP_WARN_e|r |T135745:0|t[Invocações] |cRXP_WARN_um|r |cRXP_ENEMY_Draco|r |cRXP_WARN_adicional que lança um sopro frontal que causa dano enorme|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Onírico Ellodar|r
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Onírico Mandoran|r
    .complete 81772,1 --Intelligence Report: Satyrnaar: 1/1
    .target Dreamwarden Mandoran
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith MasearaAut
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,79.89,49.31,0
    .goto Ashenvale,80.78,48.47,0
    .goto Ashenvale,81.72,48.52,0
    .goto Ashenvale,82.20,50.18,0
    .goto Ashenvale,80.00,46.71,0
    .goto Ashenvale,78.29,44.73,0
    .goto Ashenvale,80.72,50.24,0
    >>Mate os |cRXP_ENEMY_Dreamfire Betrayers|r e os |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>Saqueie a |cRXP_LOOT_Profecia Azshariana|r no chão
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>Fale com a |cRXP_FRIENDLY_Maseara Lunautumna <Druidesa da Garra>|r. Ela deve começar a segui-la.
    .target Maseara Autumnmoon
    .isOnQuest 81785
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,50,0
    .goto Ashenvale,79.89,49.31,50,0
    .goto Ashenvale,80.78,48.47,50,0
    .goto Ashenvale,81.72,48.52,50,0
    .goto Ashenvale,82.20,50.18,50,0
    .goto Ashenvale,80.00,46.71,50,0
    .goto Ashenvale,78.29,44.73,50,0
    .goto Ashenvale,80.72,50.24,50,0
    >>Mate os |cRXP_ENEMY_Dreamfire Betrayers|r e os |cRXP_ENEMY_Dreamfire Hellcallers|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>Abra o |cRXP_PICK_Caixote Vibrante|r. Pegue o |cRXP_LOOT_Dreamengine|r.
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>Entre em Kargathia Keep
    >>|cRXP_WARN_A entrada está bloqueada por um|r |cRXP_ENEMY_Ceifador de Sonhos|r|cRXP_WARN_ (élite de nível 41). Controle de multidão ou mate-a enquanto você entra correndo|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Guardiã Onírica Lanaria|r
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>|cRXP_WARN_Abate o|r |cRXP_ENEMY_Retalhador 9000|r. Cuidado pois ele tem muita vida, um |T132338:0|t[Cutilada] e um |T132338:0|t[AdE Repulsão]
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>Abate os |cRXP_ENEMY_Antigos Vingativos|r na área
    >>|cRXP_WARN_Cuidado pois são élite. Pule este passo se você não for forte o suficiente para solá-los|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>Fale com a |cRXP_FRIENDLY_Alíssian Clamaventos <Druidesa da Garra>|r. Ela deve começar a segui-la.
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>Abate |cRXP_ENEMY_Zalius|r |cRXP_WARN_. Cuidado pois ele tem muita vida|r
    .complete 81781,1 --Defeat Zalius (1)
    .isOnQuest 81781
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,86.31,43.07,0
    .goto Ashenvale,86.57,47.66,50,0
    .goto Ashenvale,87.03,45.92,50,0
    .goto Ashenvale,88.26,42.14,50,0
    .goto Ashenvale,86.31,43.07,50,0
    .goto Ashenvale,84.36,45.06,50,0
    .goto Ashenvale,83.90,47.38,50,0
    >>Complete derrotar os |cRXP_ENEMY_Rastreadores Noturnos Dracônicos|r e os |cRXP_ENEMY_Filhotes de Terror|r
    >>|cRXP_WARN_Tenha cuidado.|r Os |cRXP_ENEMY_Wyrmkin Nightstalkers|r |cRXP_WARN_são élites de nível 41|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    #requires Treants
    #label IncursionsComplete
    .goto Ashenvale,93.97,38.02
    >>Vá para o |cRXP_PICK_Portal de Esmeralda Onírico|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r ou |cRXP_FRIENDLY_Doran|r não estão mais seguindo você, volte e fale com eles novamente|r
    >>|cRXP_WARN_Passo para trás e para frente do ponto marcado pela seta (fundo da rampa do portal) um par de vezes. Isto fará os NPCs cruzarem o limite e dar-lhe o crédito|r
    .complete 81783,1 --Rescue Alyssian Windcaller: 1/1
    .target +Alyssian Windcaller
    .goto Ashenvale,92.11,54.21,0
    .complete 81784,1 --Rescue Doran Dreambough: 1/1
    .goto Ashenvale,87.24,43.58,0
    .target +Doran Dreambough
    .complete 81785,1 --Rescue Maseara Autumnmoon: 1/1
    .goto Ashenvale,81.16,50.28,0
    .target +Maseara Autumnmoon
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Saia do |cRXP_PICK_Portal do Sonho Esmeralda|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .turnin 81771 >>Entregue Missão IV do Vale Gris: Inteligência sobre Dragões
    .turnin 81772 >>Entregue Missão IV do Vale Gris: Inteligência sobre Sátiros
    .turnin 81773 >>Entregue Missão do Vale Gris VI: Inteligência sobre Arvorosos
    .turnin 81774 >>Entregue Missão VII do Vale Gris: Recuperar o Dreamengine
    .turnin 81775 >>Entregue Missão VIII do Vale Gris: Recuperar a Profecia Azshariana
    .turnin 81776 >>Entregue Missão IX do Vale Gris: Recuperar Ovo de Dragão Tocado pelo Sonho
    .turnin 81783 >>Entregue Missão XVI do Vale Gris: Resgatar Alíssian Clamaventos
    .turnin 81784 >>Entregue Missão XVII do Vale Gris: Resgatar Doran Ramonírico
    .turnin 81785 >>Entregue Missão XVIII do Vale Gris: Resgatar Maseara Lunautumna
    .turnin 81768 >>Entregue Missão I do Vale Gris: Derrotar Sátiros
    .turnin 81769 >>Entregue Missão II do Vale Gris: Derrotar Arvorosos
    .turnin 81770 >>Entregue Missão III do Vale Gris: Derrotar Draconianos
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Hannalah|r
    .turnin -81780 >>Entregue Missão XIII do Vale Gris: Derrotar Larsera
    .turnin -81781 >>Entregue Missão XIV do Vale Gris: Derrotar Zalius
    .turnin -81782 >>Entregue Missão XV do Vale Gris: Retalhador 9000
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Você superou o nível de todas as zonas de incursão e não poderá mais aceitar nenhuma das missões regulares em nenhuma delas|r
    >>Se você está procurando ganhar reputação com o|r |cRXP_FRIENDLY_Emerald Wardens|r, há missões infinitamente repetíveis em Feralas onde você pode entregar 10 de qualquer um destes: |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] ou |T134312:0|t[|cRXP_LOOT_Moondragon Escamoso|r]
    >>Estas missões não dão XP ou ouro e recompensam 100 de reputação por entrega. Compre quantos dos materiais mais eficientes da Casa de Leilões você precisar e vá para Feralas para entregá-los
    .xp <53,1
step
    #optional
    +Você completou este loop da Incursão do Pesadelo. As missões ficarão disponíveis novamente após o reset diário. |cRXP_WARN_Selecione um guia diferente na lista para continuar|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group Missões Diárias da Incursão Pesadelo
#name (50-53) Incursão de Pesadelo das Terras Agrestes


step
    #ah
    >>Compre 10 |T134207:0|t[|cRXP_LOOT_Star Lotus|r], 10 |T134964:0|t[|cRXP_LOOT_Starshells|r] e 10 |T237436:0|t[|cRXP_LOOT_Starsilver Ore|r] da casa de leilões antes de seguir para as Terras Agrestes
    >>|cRXP_WARN_Pule este passo se você não está perto de uma casa de leilões ou os preços não parecem valer a pena. Estas três missões dão uma quantidade combinada de 38.250xp e 300 de reputação|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >>Vá para as Terras Agrestes
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >>Vá para a ponte que leva a Seradane
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Quartermaster Alandra|r
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
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Niilista|r] |cRXP_WARN_para treinar|r |T132886:0|t[Área de Caos] << Priest
    .train 429308 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Armadura Derretida|r] |cRXP_WARN_para treinar|r |T132221:0|t[Armadura Derretida] << Mage
    .train 431747 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Suplício|r] |cRXP_WARN_para treinar|r |T136228:0|t[Agonia Instável] << Warlock
    .train 416066 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Queimadura|r] |cRXP_WARN_para treinar|r |T135822:0|t[QUEIME] << Shaman
    .train 432297 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Vivacidade|r] |cRXP_WARN_para treinar|r |T236269:0|t[Ir ao Ponto] << Rogue
    .train 431611 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonação|r] |cRXP_WARN_para treinar|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Derramamento de Sangue|r] |cRXP_WARN_para treinar|r |T304501:0|t[Escorno] << Druid
    .train 429261 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo|r] |cRXP_WARN_para treinar|r |T236262:0|t[Martelo da Ira Aprimorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #optional
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >>Aceite Missão X das Terras Agrestes: Estrela Lotus
    .accept 81834 >>Aceite Missão XI das Terras Agrestes: Starsilver Ore
    .accept 81835 >>Aceite Missão XII das Terras Agrestes: Starshells
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >>Aceite Missão X das Terras Agrestes: Estrela Lotus
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >>Aceite Missão XI das Terras Agrestes: Starsilver Ore
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >>Aceite Missão XII das Terras Agrestes: Starshells
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >>Entregue Missão X das Terras Agrestes: Estrela Lotus
    .turnin -81834 >>Entregue Missão XI das Terras Agrestes: Starsilver Ore
    .turnin -81835 >>Entregue Missão XII das Terras Agrestes: Starshells
    .target Field Captain Korlian
step
    >>Cruze a ponte e |Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >>Aceite Enfrente as Incursões Pesadelares
    .accept 81786 >>Aceite Missão I das Terras Agrestes: Derrotar Luniscantes
    .accept 81787 >>Aceite Missão II das Terras Agrestes: Derrotar Tartarugas Gigantes
    .accept 81788 >>Aceite Missão III das Terras Agrestes: Derrotar Draconianos
    .accept 81789 >>Aceite Missão IV das Terras Agrestes: inteligência draconiana
    .accept 81817 >>Aceite Missão V das Terras Agrestes: inteligência quelônia
    .accept 81820 >>Aceite Missão VI das Terras Agrestes: inteligência luniscante
    .accept 81826 >>Aceite Missão VII das Terras Agrestes: recuperar ovo de dragão tocado pelas estrelas
    .accept 81830 >>Aceite Missão VIII das Terras Agrestes: recuperar relíquia elunar
    .accept 81832 >>Aceite Missão IX das Terras Agrestes: obter pérola onírica
    .accept 81850 >>Aceite Missão XVI das Terras Agrestes: resgatar Elianar Sorvessombra
    .accept 81851 >>Aceite Missão XVII das Terras Agrestes: resgatar Serlina Luminastra
    .accept 81852 >>Aceite Terras Agrestes Missão XVII: Resgate [[Veanna Cloudsleeper] <[Druid of the Claw]>] <[Druid of the Claw]>
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão de Campo Korlian|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .accept 81837 >>Aceite Missão XIII das Terras Agrestes: derrotar Flórius
    .accept 81838 >>Aceite Missão XIV das Terras Agrestes: derrotar Ruiniscante
    .accept 81839 >>Aceite Missão XV das Terras Agrestes: derrotar Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Quartermaster Alandra|r
    .vendor >>|cRXP_BUY_Compre até 5|r |T236885:0|t[Elevado de Cura Potions] |cRXP_BUY_dela se você quiser.|r |cRXP_WARN_Estas podem ser usadas apenas nas zonas de incursão|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Clique no portal ao lado do doador de missões|r para ser transportado para Sonho Esmeralda
step
    .goto 1425/0,-3788.100,468.800,20 >>Vá para Skulk Pedra. |cRXP_WARN_Evite correr para dentro dos |cRXP_ENEMY_Wisps Instáveis|r ou eles explodirão causando aproximadamente 700 de dano a você|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>Abate |cRXP_ENEMY_Caído Luniscante|r dentro de Skulk Pedra
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>Entre na caverna e limpe a rampa à direita. Saque o baú lá para obter |T133247:0|t[|cRXP_PICK_Elunar Relíquia|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1
    .maxlevel 53
step
    .solo
    >>Vá para a grande sala na base da caverna, fale com o |cRXP_FRIENDLY_Dreamwarden Valori|r para receber seu |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    >>|cRXP_WARN_Ele está furtivo bem ao lado do|r |cRXP_ENEMY_Ruiniscante|r |cRXP_WARN_chefe. Tente obter rapidamente a inteligência e fuja, não lute com o chefe|r
    >>|cRXP_WARN_Você provavelmente morrerá fazendo esta missão devido aos|r |cRXP_ENEMY_Ruiniscantes|r |cRXP_WARN_dano alto, mas a volta é muito curta|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>Vá para a grande sala na base da caverna, fale com o |cRXP_FRIENDLY_Dreamwarden Valori|r para receber seu |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    >>|cRXP_WARN_Ele está invisível bem ao lado do|r Ruiniscante|cRXP_ENEMY_ |rchefe.|cRXP_WARN_
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>Abate o |cRXP_ENEMY_Ruiniscante|r chefe na sala grande no fundo da caverna.
    >>|cRXP_WARN_Tenha cuidado pois ele lança|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_e|r |T136006:0|t[Ira] |cRXP_WARN_causando dano alto e tem um AdE|r |T136183:0|t[Medo]
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >>Fale com |cRXP_FRIENDLY_[[Elianar Shadowdrinker] <[Druid of the Claw]>] <[Druid of the Claw]>|r deitado no chão. Ele deveria começar a te seguir
    >>|cRXP_WARN_Você pode falar com ele através da parte traseira da cerca de madeira sem ter que entrar|r
    >>|cRXP_WARN_Se ele não estiver lá, isso significa que alguém está a escoltando, pule este passo se você não conseguir encontrá-lo|r
    .target Elianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>Abate os |cRXP_ENEMY_Ira Whelps|r e os |cRXP_ENEMY_Wyrmkin Starhunters|r nas ruínas
    >>|cRXP_WARN_Tenha cuidado pois os|r |cRXP_ENEMY_Wyrmkin Starhunters|r |cRXP_WARN_são élite e lançam|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_que causa mais de 500 de dano. Pule esta missão se você não conseguir solá-los|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Tenha cuidado, se você morrer todos os NPCs de escolta que o seguem retornarão para onde você os apanhou e você terá que encontrá-los novamente|r
    >>|cRXP_WARN_O NPC de escolta também deixará de te seguir 15 minutos depois que você o pegar, então tente ser rápido!|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>Fale com o |cRXP_FRIENDLY_Dreamwarden Laninar|r furtivo na localização marcada para receber o |T134939:0|t[|cRXP_LOOT_Relatório de Inteligência|r]
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>Saque o |T236997:0|t[|cRXP_PICK_Estrela-Touched Dragonegg|r] de dentro da tenda
    >>|cRXP_WARN_Tente contornar a borda externa das paredes para evitar atrair os Draconídeos de elite da área. Você pode saquear o ovo pela parte de trás da tenda sem precisar lutar contra nenhum elite|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>Abate |cRXP_ENEMY_Florius|r o dragão verde voando acima das ruínas
    >>|cRXP_WARN_Tenha cuidado pois ele tem um acervo de vida massivo, é imune a magias da natureza, tem|r|T132338:0|t[Cutilada]|cRXP_WARN_,|r |T134307:0|t[Revés com a Cauda] |cRXP_WARN_e|r |T135745:0|t[Invocações] |cRXP_WARN_um|r |cRXP_ENEMY_Draco|r |cRXP_WARN_adicional que lança uma respiração frontal que causa dano enorme|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >>Dirija-se para oeste nas montanhas até sua tela começar a brilhar em verde. Você será teletransportado mais perto da localização inicial
    >>|cRXP_WARN_Não se preocupe, todos os NPCs de escolta o seguirão eventualmente|r
    .maxlevel 53
step
    #sticky
    #label Turtles
    .goto The Hinterlands,62.9,41.0,0
    .goto The Hinterlands,62.9,45.0,0
    .goto The Hinterlands,67.1,41.5,0
    .goto The Hinterlands,66.0,47.5,0
    .goto The Hinterlands,71.5,45.3,0
    .goto The Hinterlands,69.8,51.2,0
    .goto The Hinterlands,65.1,39.1,0
    .goto The Hinterlands,58.6,36.0,0
    >>Abate |cRXP_ENEMY_Dreamwater Vicejaws|r enquanto completa os outros objetivos
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>Suba para o topo da colina. Fale com |cRXP_FRIENDLY_[[Veanna Cloudsleeper] <[Druid of the Claw]>] <[Druid of the Claw]>|r deitada no chão. Ela deveria começar a te seguir
    >>|cRXP_WARN_Se ela não estiver lá, isso significa que outra pessoa está escoltando-a, pule este passo se você não conseguir encontrá-la|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >>Entre no pequeno forte de madeira. Fale com |cRXP_FRIENDLY_[[Serlina Starbright] <[Druid of the Claw]>] <[Druid of the Claw]>|r deitada no chão. Ela deve começar a acompanhá-o.
    >>|cRXP_WARN_Se ela não estiver lá, isso significa que outra pessoa está escoltando-a, pule este passo se você não conseguir encontrá-la|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>Entre nas ruínas de Shaol'watha e pegue o |T237371:0|t[|cRXP_PICK_Dreampearl|r]. |cRXP_WARN_Tenha cuidado para não agredir o chefe|r |cRXP_ENEMY_Ghamoo-Raja|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>Abate |cRXP_ENEMY_Ghamoo-Raja|r
    >>|cRXP_WARN_Tenha cuidado pois ela lança|r |T136231:0|t[Perfurar Armadura] |cRXP_WARN_e |r|T132270:0|t[Mastigada Tripla] |cRXP_WARN_um ataque que atingirá você 3 vezes em rápida sucessão.|r |T132270:0|t[Mastigada Tripla] |cRXP_WARN_pode atingir você de longe também|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>Fale com |cRXP_FRIENDLY_Dreamwarden Sanathel|r furtivo no local marcado para receber o |T134939:0|t[|cRXP_LOOT_Intelligence Report|r]
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >>Vá para o leste até sua tela começar a brilhar em verde. Você será teleportado mais perto do local de início.
    >>|cRXP_WARN_Não se preocupe, todos os NPCs de escolta o seguirão eventualmente|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>Certifique-se de que você recebeu o crédito por todas as missões de escolta. Todas deveriam ser concluídas quando você chegar ao grande portal de sonho
    >>|cRXP_WARN_Se algum dos três NPCs não estiver mais seguindo você, volte e fale com eles novamente|r
    >>|cRXP_WARN_Passo para trás e para frente do ponto marcado pela seta (fundo da rampa do portal) um par de vezes. Isto fará os NPCs cruzarem o limite e dar-lhe o crédito|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >>Volte através do portal para a versão do mundo real de Terras Agrestes
    .maxlevel 53
step
    >>Fale com o |cRXP_FRIENDLY_Field Captain Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >>Entregue Enfrente as Incursões Pesadelares
    .turnin 81786 >>Missão I das Terras Agrestes: Derrotar Luniscantes
    .turnin 81787 >>Missão II das Terras Agrestes: Derrotar Tartarugas Gigantes
    .turnin 81788 >>Missão III das Terras Agrestes: Derrotar Draconianos
    .turnin 81789 >>Entregue Missão IV das Terras Agrestes: Inteligência Draconiana
    .turnin 81817 >>Entregue Missão V das Terras Agrestes: Inteligência Quelônia
    .turnin 81820 >>Entregue Missão VI das Terras Agrestes: Inteligência Luniscante
    .turnin 81826 >>Entregue Missão VII das Terras Agrestes: Recuperar Ovo de Arrastarão Tocado pelas Estrelas
    .turnin 81830 >>Entregue Missão VIII das Terras Agrestes: Recuperar Relíquia Elunar
    .turnin 81832 >>Entregue Missão IX das Terras Agrestes: Obter Pérola Onírica
    .turnin 81850 >>Entregue Missão XVI das Terras Agrestes: Resgatar Elianar Sorvessombra
    .turnin 81851 >>Entregue Missão XVII das Terras Agrestes: Resgatar Serlina Luminastra
    .turnin 81852 >>Entregue Missão XVII das Terras Agrestes: Resgatar [Veanna Cloudsleeper] <[Druid of the Claw]>
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão de Campo Korlian|r
    .turnin -81837 >>Missão XIII das Terras Agrestes: Derrotar Flórius
    .turnin -81838 >>Missão XIV das Terras Agrestes: Derrotar Ruiniscante
    .turnin -81839 >>Missão XV das Terras Agrestes: Derrotar Ghamoo-Raja
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_Você superou o nível de todas as zonas de incursão e não poderá mais aceitar nenhuma das missões regulares em nenhuma delas|r
    >>Se você está procurando ganhar reputação com o|r |cRXP_FRIENDLY_Emerald Wardens|r, há missões infinitamente repetíveis em Feralas onde você pode entregar 10 de qualquer um destes: |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] ou |T134312:0|t[|cRXP_LOOT_Moondragon Escamoso|r]
    >>Estas missões não dão XP ou ouro e recompensam 100 de reputação por entrega. Compre quantos dos materiais mais eficientes da Casa de Leilões você precisar e vá para Feralas para entregá-los
    .xp <53,1
step
    #optional
    +Você completou este loop da Incursão do Pesadelo. As missões ficarão disponíveis novamente após o reset diário. |cRXP_WARN_Selecione um guia diferente na lista para continuar|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group Missões Diárias da Incursão Pesadelo
#name (50-53) Feralas Incursão do Pesadelo

step
    #ah
    >>Compre 10 |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] e |T134312:0|t[|cRXP_LOOT_Moondragon Escamoso|r] na casa de leilões antes de ir para Terras Agrestes
    >>|cRXP_WARN_Pule este passo se você não está perto de uma casa de leilões ou os preços não parecem valer a pena. Estas três missões dão uma quantidade combinada de 38.250xp e 300 de reputação|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >>Vá para a área do portal Pesadelo Esmeralda no noroeste de Feralas
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Intendente Valdane|r
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .target Quartermaster Valdane
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_Use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Niilista|r] |cRXP_WARN_para treinar|r |T132886:0|t[Área de Caos] << Priest
    .train 429308 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Armadura Derretida|r] |cRXP_WARN_para treinar|r |T132221:0|t[Armadura Derretida] << Mage
    .train 431747 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Suplício|r] |cRXP_WARN_para treinar|r |T136228:0|t[Agonia Instável] << Warlock
    .train 416066 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Queimadura|r] |cRXP_WARN_para treinar|r |T135822:0|t[QUEIME] << Shaman
    .train 432297 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Vivacidade|r] |cRXP_WARN_para treinar|r |T236269:0|t[Ir ao Ponto] << Rogue
    .train 431611 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonação|r] |cRXP_WARN_para treinar|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Derramamento de Sangue|r] |cRXP_WARN_para treinar|r |T304501:0|t[Escorno] << Druid
    .train 429261 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo|r] |cRXP_WARN_para treinar|r |T236262:0|t[Martelo da Ira Aprimorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .accept 81865 >>Aceite Missão X de Feralas: Moonroot
    .accept 81866 >>Aceite Missão XI de Feralas: Pedra-da-Lua Maior
    .accept 81867 >>Aceite Missão XII de Feralas: Escamas de Dragão Lunar Maiores
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .accept 81865 >>Aceite Missão X de Feralas: Moonroot
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .accept 81866 >>Aceite Missão XI de Feralas: Pedra-da-Lua Maior
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .accept 81867 >>Aceite Missão XII de Feralas: Escamas de Dragão Lunar Maiores
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .turnin -81865 >>Entregue Missão X de Feralas: Moonroot
    .turnin -81866 >>Entregue Missão XI de Feralas: Pedra-da-Lua Maior
    .turnin -81867 >>Entregue Missão XII de Feralas: Escamas de Dragão Lunar Maiores
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .accept 81855 >>Aceite Missão I de Feralas: Derrotar Filhos de Cenarius
    .accept 81856 >>Aceite Missão II de Feralas: Derrotar Harpias
    .accept 81857 >>Aceite Missão III de Feralas: Derrotar Draconianos
    .accept 81858 >>Aceite Missão IV de Feralas: Inteligência Draconiana
    .accept 81859 >>Aceite Missão V de Feralas: Inteligência Cenariana
    .accept 81860 >>Aceite Missão VI de Feralas: Inteligência Harpíaca
    .accept 81861 >>Aceite Missão VII de Feralas: Obter o Ovo de Arrastarão do Brilho da Lua
    .accept 81863 >>Aceite Missão VIII de Feralas: Obter as Anotações do Guardião
    .accept 81864 >>Aceite Missão IX de Feralas: Obter Escrito das Harpias
    .accept 81872 >>Aceite Missão XVI de Feralas: Resgatar Mellias Zelaterra
    .accept 81873 >>Aceite Missão XVII de Feralas: Resgatar Nerene Cantarroio
    .accept 81874 >>Aceite Missão de Feralas XVIII: Resgatar Jamniss Curárvore
    .accept 82068 >>Aceite Enfrente as Incursões Pesadelares
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .accept 81868 >>Aceite Missão XIII de Feralas: Derrotar Tirânikos
    .accept 81870 >>Aceite Missão de Feralas XIV: Derrote Alondrius <Guardião do Pesadelo> <Guardião do Pesadelo>
    .accept 81871 >>Aceite Missão XV de Feralas: Derrotar Slirena <Rainha das Harpias> <Rainha das Harpias>
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Entre no |cRXP_PICK_Portal Esmeralda Onírico|r
    >>|cRXP_WARN_Corra direto passando pelos |cRXP_ENEMY_Satyr's|r, |cRXP_ENEMY_Felhounds|r e |cRXP_ENEMY_Imps|r. Eles vão resetar agressão ao entrar no portal|r
    .aura 444762
    .maxlevel 53
step
    #season 2
    #completewith DreamWardenGorlas
    >>Mate os |cRXP_ENEMY_Filhotes Enfurecidos|r e os |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Cuidado.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_são élite. Eles podem ser difíceis de derrotar sozinho|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>Fale com |cRXP_FRIENDLY_Mellias Zelaterra <Druida da Garra>|r. Ela deve começar a segui-lo.
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Tenha cuidado, se você morrer todos os NPCs de escolta que o seguem retornarão para onde você os apanhou e você terá que encontrá-los novamente|r
    >>|cRXP_WARN_O NPC de escolta também deixará de te seguir 15 minutos depois que você o pegar, então tente ser rápido!|r
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.71,17.17
    >>Pegue um |cRXP_LOOT_Moonglow Arrastarão Ovo|r no chão
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>Abate o dragão-chefe |cRXP_ENEMY_Tirânikos|r
    >>|cRXP_WARN_Tenha cuidado pois ele tem um acervo de vida massivo, é imune a magias da natureza, tem|r|T132338:0|t[Cutilada]|cRXP_WARN_,|r |T134307:0|t[Revés com a Cauda] |cRXP_WARN_e|r |T135745:0|t[Invocações] |cRXP_WARN_um|r |cRXP_ENEMY_Draco|r |cRXP_WARN_adicional que lança uma respiração frontal que causa dano enorme|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Onírico Sheldryn|r
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_Cuidado com|r |cRXP_WARN_Alondrius <Guardião do Pesadelo>|r|cRXP_WARN_, um chefe élite que patrulha a estrada. Tente evitá-lo|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_Procure|r |cRXP_WARN_Alondrius <Guardião do Pesadelo>|r|cRXP_WARN_, um chefe élite que patrulha a estrada. Abata-o|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Onírico Gorlas|r
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>Mate os |cRXP_ENEMY_Lost Daughters|r e os |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>Saque o |cRXP_LOOT_Notas do Guardião Louco|r no chão
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>Fale com a |cRXP_FRIENDLY_Nerene Cantarroio <Druidesa da Garra>|r. Ela deve começar a segui-lo.
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>Vá para as Ruínas de Ravenwind
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    >>Mate os |cRXP_ENEMY_Dreamspring Roguefeathers|r e os |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    .goto Feralas,38.94,13.13
    >>Saque o |cRXP_LOOT_Escrito da Harpia|r no chão
    >>|cRXP_WARN_Isto é saqueado instantaneamente.|r |cRXP_ENEMY_Slirena <Rainha das Harpias>|r |cRXP_WARN_pode atacá-lo, prepare um caminho de fuga|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>Abate a chefa Harpia |cRXP_ENEMY_Slirena <Rainha das Harpias>|r
    >>|cRXP_WARN_Cuidado quando ela lança|r |T136015:0|t[Cadeia de Raios], |T136018:0|t[Ventos Envolventes] |cRXP_WARN_um ciclone de 10 segundos, e|r |T132104:0|t[Chuva ácida] |cRXP_WARN_um círculo que causa dano se você não sair dele|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Guardiã Onírica Anadelle|r
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>Fale com a |cRXP_FRIENDLY_Jamniss Curárvore <Druidesa da Garra>|r. Ela deve começar a segui-lo.
    .target Jamniss Treemender
    .isOnQuest 81874
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,42.11,9.07,0
    .goto Feralas,38.98,16.20,0
    .goto Feralas,42.11,9.07,60,0
    .goto Feralas,42.19,11.58,60,0
    .goto Feralas,41.02,13.08,60,0
    .goto Feralas,40.19,15.21,60,0
    .goto Feralas,38.98,16.20,60,0
    .goto Feralas,38.31,15.77,60,0
    .goto Feralas,37.95,14.21,60,0
    .goto Feralas,39.42,13.77,60,0
    .goto Feralas,39.58,10.69,60,0
    >>Mate os |cRXP_ENEMY_Dreamspring Roguefeathers|r e os |cRXP_ENEMY_Dreamspring Stormcallers|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,46.44,15.89,0
    .goto Feralas,45.36,22.36,0
    .goto Feralas,44.45,12.29,50,0
    .goto Feralas,46.44,15.89,50,0
    .goto Feralas,46.35,18.82,50,0
    .goto Feralas,45.36,22.36,50,0
    .goto Feralas,45.55,19.10,50,0
    >>Mate os |cRXP_ENEMY_Lost Daughters|r e os |cRXP_ENEMY_Vengeful Sons|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,49.81,15.80,0
    .goto Feralas,53.85,12.74,0
    .goto Feralas,49.81,15.80,50,0
    .goto Feralas,50.68,17.37,50,0
    .goto Feralas,51.62,19.54,50,0
    .goto Feralas,52.76,16.27,50,0
    .goto Feralas,53.68,15.81,50,0
    .goto Feralas,53.85,12.74,50,0
    .goto Feralas,54.32,10.44,50,0
    >>Mate os |cRXP_ENEMY_Filhotes Enfurecidos|r e os |cRXP_ENEMY_Wyrmkin Berserkers|r
    >>|cRXP_WARN_Cuidado.|r |cRXP_ENEMY_Wyrmkin Berserkers|r |cRXP_WARN_são élite. Eles podem ser difíceis de derrotar sozinho|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,51.00,11.69
    >>Vá para o |cRXP_PICK_Portal de Esmeralda Onírico|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r ou |cRXP_FRIENDLY_Jamniss|r não estão mais te seguindo, volte e fale com eles novamente|r
    >>|cRXP_WARN_Passo para trás e para frente do ponto marcado pela seta (fundo da rampa do portal) um par de vezes. Isto fará os NPCs cruzarem o limite e dar-lhe o crédito|r
    .complete 81872,1 --Rescue Mellias Earthtender: 1/1
    .goto Feralas,49.64,15.44,0
    .target +Mellias Earthtender
    .complete 81873,1 --Rescue Nerene Brooksinger: 1/1
    .goto Feralas,45.81,16.47,0
    .target +Nerene Brooksinger
    .complete 81874,1 --Rescue Jamniss Treemender: 1/1
    .goto Feralas,40.58,8.09,0
    .target
    .target +Jamniss Treemender
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Saia do |cRXP_PICK_Portal do Sonho Esmeralda|r
    .aura -444762
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    .turnin 81855 >>Entregue Missão I de Feralas: Derrotar Filhos de Cenarius
    .turnin 81856 >>Entregue Missão II de Feralas: Derrotar Harpias
    .turnin 81857 >>Entregue Missão III de Feralas: Derrotar Draconianos
    .turnin 81858 >>Entregue Missão IV de Feralas: Inteligência Draconiana
    .turnin 81859 >>Entregue Missão V de Feralas: Inteligência Cenariana
    .turnin 81860 >>Entregue Missão VI de Feralas: Inteligência Harpíaca
    .turnin 81861 >>Entregue Missão VII de Feralas: Obter o Ovo de Arrastarão do Brilho da Lua
    .turnin 81863 >>Entregue Missão VIII de Feralas: Obter as Anotações do Guardião
    .turnin 81864 >>Entregue Missão IX de Feralas: Obter Escrito das Harpias
    .turnin 81872 >>Entregue Missão XVI de Feralas: Resgatar Mellias Zelaterra
    .turnin 81873 >>Entregue Missão XVII de Feralas: Resgatar Nerene Cantarroio
    .turnin 81874 >>Entregue Missão XVIII de Feralas: Resgatar Jamniss Curárvore
    .turnin 82068 >>Entregue Enfrente as Incursões Pesadelares
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Avançada Arunnel|r
    >>|cRXP_WARN_Se você está em um grupo, considere aceitar também as missões de morte de élites. Os chefes que você precisará matar para essas missões têm quantidades massivas de saúde e podem ser desafiadores dependendo do seu grupo|r
    .turnin -81868 >>Missão XIII de Feralas: Derrote Tirânikos
    .turnin -81870 >>Missão XIV de Feralas: Derrote Alondrius <Guardião do Pesadelo>
    .turnin -81871 >>Missão XV de Feralas: Derrote Slirena <Rainha das Harpias>
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Você superou o nível de todas as zonas de incursão e não poderá mais aceitar nenhuma das missões regulares em nenhuma delas|r
    >>Se você está procurando ganhar reputação com o|r |cRXP_FRIENDLY_Emerald Wardens|r, há missões infinitamente repetíveis em Feralas onde você pode entregar 10 de qualquer um destes: |T134186:0|t[|cRXP_LOOT_Moonroot|r], |T133594:0|t[|cRXP_LOOT_Greater Moonstones|r] ou |T134312:0|t[|cRXP_LOOT_Moondragon Escamoso|r]
    >>Estas missões não dão XP ou ouro e recompensam 100 de reputação por entrega. Compre quantos dos materiais mais eficientes da Casa de Leilões você precisar e vá para Feralas para entregá-los
    .xp <53,1
step
    #optional
    +Você completou este loop da Incursão do Pesadelo. As missões ficarão disponíveis novamente após o reset diário. |cRXP_WARN_Selecione um guia diferente na lista para continuar|r
]])
