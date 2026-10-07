if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Impacto Derretido - 8 (Mulgore)
#title Impacto Derretido
#next Açoite de Lava - Feitiço - 10 (Mulgore)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 8 para adquirir|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_em Mulgore sozinho|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 3 para equipar o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    >>|cRXP_WARN_Você precisa subir de nível mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Impacto Derretido]
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 8 para adquirir|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_em Mulgore sozinho|r
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Abate |cRXP_ENEMY_Bael'dun Diggers|r e |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para o |cRXP_LOOT_Artifact Storage Chave|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Lançamento à distância: Curam a si mesmos ou um inimigo próximo abaixo de 50% dos pontos de vida por cerca de 75 pontos de vida)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>Abra o |cRXP_PICK_Artifact Storage|r baú. Saque-o para o |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >>Viaje para os Sertões
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Impacto Derretido]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Impacto Derretido - 10 (Durotar)
#title Impacto Derretido
#next Caminho Telúrico - 12 (As Savanas)


    --Rune of Molten Blast
step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 10 para adquirir|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_pois é o requisito de nível do treinamento|r |T135813:0|t[Choque Flamejante]
    >>|cRXP_WARN_Você precisa subir de nível mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Impacto Derretido]
    >>|cRXP_WARN_Alternativamente, você pode obter|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_em Mulgore no nível 3+|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >>Vá para Durotar
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>Viajar em direção a |cRXP_FRIENDLY_Swart|r dentro
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>Viajar em direção ao |cRXP_ENEMY_Makrura Congelado|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Procure por outros Xamãs, Feiticeiros, ou Magos perto do |cRXP_ENEMY_Makrura Congelado|r ou no Bate-papo Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Lance|r |T135813:0|t[Choque Flamejante] |cRXP_WARN_no |cRXP_ENEMY_Makrura Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Makrura Congelado|r. Saque-o para o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    >>|cRXP_WARN_Alternativamente, você pode obter|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_em Mulgore solo|r
    >>|cRXP_WARN_NOTA:|r |T135813:0|t[Arma de Labaredas] |cRXP_WARN_não aplica nenhum|r |T135805:0|t[Aplicando Calor] acúmulos|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Procure por outros Xamãs, Feiticeiros, ou Magos perto do |cRXP_ENEMY_Makrura Congelado|r ou no Bate-papo Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Lance|r |T135813:0|t[Choque Flamejante] |cRXP_WARN_no |cRXP_ENEMY_Makrura Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Makrura Congelado|r. Saque-o para o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    >>|cRXP_WARN_Alternativamente, você pode obter|r |T133816:0|t[Gravar Luvas - Impacto Derretido] |cRXP_WARN_em Mulgore solo|r
    >>|cRXP_WARN_NOTA:|r |T135813:0|t[Arma de Labaredas] |cRXP_WARN_e|r |T135824:0|t[Totem de Novane de Fogo] |cRXP_WARN_não aplicam nenhum|r |T135805:0|t[Aplicando Calor] acúmulos|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>Viaje para os Sertões
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano com|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para obter|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Impacto Derretido]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Açoite de Lava - Feitiço - 10 (Mulgore)
#title Açoite de Lava - Feitiço
#next Conselho dos Ancestrais - 10 (Mulgore)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 10 para adquirir|r |T133816:0|t[Gravar Luvas - Açoite de Lava - Feitiço] |cRXP_WARN_e|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_em Mulgore apenas|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 4, pois é o requisito de nível para iniciar a linha de missões|r
    >>|cRXP_WARN_Você precisa evoluir mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Açoite de Lava - Feitiço] |cRXP_WARN_e|r |T132147:0|t[Empunhar Duas Armas]
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 10 para adquirir|r |T133816:0|t[Gravar Luvas - Açoite de Lava - Feitiço] |cRXP_WARN_e|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_em Mulgore apenas|r
    >>|cRXP_WARN_Você precisa evoluir mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Açoite de Lava - Feitiço] |cRXP_WARN_e|r |T132147:0|t[Empunhar Duas Armas]
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >>Vá para Penhasco do Trovão
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .accept 76156 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Entre na Mina Empreendimentos S.A.
    >>|cRXP_WARN_NOTA: o|r |T132288:0|t[Venture Co Disfarce] |cRXP_WARN_NÃO funciona|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abra |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do lado de fora, do outro lado. Saqueie-os para obter |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>Saia da Mina Venture Co. do outro lado
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>Viaje para os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Se você não tem|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais]|cRXP_WARN_, agora é um bom momento para fazê-lo|r
    >>|cRXP_WARN_Se você não quer conseguir esta Runa, pule este passo|r
    >>|cRXP_WARN_Junte-se a um grupo com outro Xamã, Sacerdote ou Druida ao lado de |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Xamã, Sacerdote ou Druida no Bate-papo Geral (Digite /1 no bate-papo)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito de Aventureiro|r aparecerá e morrerá após completar o ritual. Saqueie-o para o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >>Vá para Penhasco do Trovão
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76156 >>Entregue À Espreita com a Mãe Terra
    .accept 76160 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>Pegue o elevador norte para descer a Mulgore
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Pegue |cRXP_LOOT_Windfury Cones|r no chão
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>Usar o |T133748:0|t[Almofariz e Pilão] para criar |T133213:0|t[Pine Salve]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76160 >>Entregue À Espreita com a Mãe Terra
    .accept 76240 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T133894:0|t[Raw Peixinho Brilhante] |cRXP_BUY_na Casa de Leilões|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Vá para |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kah Corre com a Névoa|r
    .train 7734 >>Treine |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    >>|cRXP_BUY_Compre uma|r |T132932:0|t[Vara de Pescar] |cRXP_BUY_e|r |T134335:0|t[MIçanga Brilhosa] |cRXP_BUY_dela|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equipe o|r |T132932:0|t[Vara de Pescar]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Prenda o|r |T134335:0|t[MIçanga Brilhosa] |cRXP_WARN_ao seu|r |T132932:0|t[Vara de Pescar]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesque na lagoa até obter um |T133894:0|t[|cRXP_LOOT_Raw Peixinho Brilhante|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>Usar o |T132147:0|t[Conjunto de Faca] para criar |T134007:0|t[Pedaços de Peixe]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76240 >>Entregue À Espreita com a Mãe Terra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Escudo de Água - 20 (Savanas)
#title Escudo de Água
#next Lobo Fantasma Maior - 25 (Cordilheira das Torres de Pedra)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 20 para adquirir|r |T133816:0|t[Gravar Luvas - Escudo de Água] |cRXP_WARN_pois é o requisito de nível para treinar|r |T135849:0|t[Choque Gélido]
    >>|cRXP_WARN_Você precisa subir de nível mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Escudo de Água]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Vá para |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro Wabang|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Kolkar Booty Chave] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Isso economizará alguns minutos depois|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Vá para |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Kolkar Booty Chave] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Isso economizará alguns minutos depois|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Mate os |cRXP_ENEMY_Kolkar Wranglers|r e os |cRXP_ENEMY_Kolkar Stormers|r. Saque-os para um |T134237:0|t[Kolkar Booty Chave]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>Abra o |cRXP_PICK_Kolkars' Booty|r no chão. Saque-a para obter o |T135832:0|t|cRXP_LOOT_[Ícone Tempestuoso]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_Equipe o|r |T135832:0|t|cRXP_LOOT_Ícone Tempestuoso|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano usando um feitiço de Natureza (|r|T136026:0|t[Choque Terreno]|cRXP_WARN_), um feitiço Gélido (|r|T135849:0|t[Choque Gélido]|cRXP_WARN_), e um feitiço de Fogo (|r|T135813:0|t[Choque Flamejante]|cRXP_WARN_) neles pelo menos uma vez. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano usando um feitiço de Natureza (|r|T136026:0|t[Choque Terreno]|cRXP_WARN_), um feitiço Gélido (|r|T135849:0|t[Choque Gélido]|cRXP_WARN_), e um feitiço de Fogo (|r|T135813:0|t[Choque Flamejante]|cRXP_WARN_) neles pelo menos uma vez. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T135832:0|t|cRXP_LOOT_[Ícone Tempestuoso]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Escudo de Água]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Escudo de Água - 25 (Floresta de Pinhaprata)
#title Escudo de Água
#next Lobo Fantasma Maior - 25 (Cordilheira das Torres de Pedra)

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 20 para adquirir|r |T133816:0|t[Gravar Luvas - Escudo de Água] |cRXP_WARN_pois é o requisito de nível para treinar|r |T135849:0|t[Choque Gélido]
    >>|cRXP_WARN_Você precisa subir de nível mais antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Escudo de Água]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Vá para |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Vá para |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8050 >>Treine |T135813:0|t[Choque Flamejante]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 8056 >>Aprenda |T135849:0|t[Choque Gélido]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>Entre na Mina do Elem Profundo
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>Viaje para |cRXP_ENEMY_Severo, o Pálido|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>Abate |cRXP_ENEMY_Severo, o Pálido|r dentro. Saque-o para obter o |T135832:0|t|cRXP_LOOT_Ícone Tempestuoso|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_Equipe o|r |T135832:0|t|cRXP_LOOT_Ícone Tempestuoso|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_Abate inimigos tendo causado dano usando um feitiço de Natureza (|r|T136026:0|t[Choque Terreno]|cRXP_WARN_), um feitiço Gélido (|r|T135849:0|t[Choque Gélido]|cRXP_WARN_), e um feitiço de Fogo (|r|T135813:0|t[Choque Flamejante]|cRXP_WARN_) neles pelo menos uma vez. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T135832:0|t|cRXP_LOOT_[Ícone Tempestuoso]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Escudo de Água]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_Se você não tiver|r |T133816:0|t[Gravar Luvas - Estouro de Lava - Feitiço] |cRXP_WARN_ainda, vale a pena fazer agora. Se você não quiser, pule este passo|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Mate os |cRXP_ENEMY_Mudsnout Shamans|r. Saque-os para o |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >>|cRXP_WARN_Equipe o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >>Viaje para Orgrimmar
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>Entre em Cavernas Ígneas na Fenda da Sombra
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Fique junto ao lado direito da parede. Depois de descer a rampa (logo após o 5º inimigo), caminhe para o poço de lava raso à sua direita|r
    >>|cRXP_WARN_Dano recebido de|r |T135805:0|t[Lava - Feitiço - Feitiço] |cRXP_WARN_é reduzido para 91 enquanto o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r |cRXP_WARN_está equipado|r
    .aura 408828 >>Pegue dano de|cRXP_WARN_ |T135805:0|t[Lava - Feitiço - Feitiço]|cRXP_WARN_ 5 vezes|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Mover para fora de|r |T135805:0|t[Lava - Feitiço - Feitiço]
    .cast 402265 >>|cRXP_WARN_Use o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Estouro de Lava - Feitiço]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Estouro de lava - 25 (Contraforte de Eira dos Montes)
#title Estouro de Lava - Feitiço
#next Escudo da Terra - 25 (Azeroth)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 25 para adquirir|r |T133816:0|t[Gravar Luvas - Estouro de Lava - Feitiço] |cRXP_WARN_apenas em Hillsbrad|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Mate os |cRXP_ENEMY_Mudsnout Shamans|r. Saque-os para o |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >>|cRXP_WARN_Equipe o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >>Viaje para Orgrimmar
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>Entre em Cavernas Ígneas na Fenda da Sombra
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Fique junto ao lado direito da parede. Depois de descer a rampa (logo após o 5º inimigo), caminhe para o poço de lava raso à sua direita|r
    >>|cRXP_WARN_Dano recebido de|r |T135805:0|t[Lava - Feitiço - Feitiço] |cRXP_WARN_é reduzido para 91 enquanto o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r |cRXP_WARN_está equipado|r
    .aura 408828 >>Pegue dano de|cRXP_WARN_ |T135805:0|t[Lava - Feitiço - Feitiço]|cRXP_WARN_ 5 vezes|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Mover para fora de|r |T135805:0|t[Lava - Feitiço - Feitiço]
    .cast 402265 >>|cRXP_WARN_Use o|r |T134920:0|t|cRXP_LOOT_[Ícone Jakárico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Estouro de Lava - Feitiço]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Sobrecarga - 3 (Durotar)
#title Sobrecarga
#next Proficiência em Escudo - 6 (Durotar)

    --Rune of Overload
step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 3 para adquirir|r |T133815:0|t[Gravar Peitoral - Sobrecarga] |cRXP_WARN_pois é o requisito de nível para equipar o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Sobrecarga]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >>Vá para Durotar
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .accept 77587 >>Aceite Ícones de Poder << Troll Shaman
    .accept 77585 >>Aceite Ícones de Poder << Orc Shaman
    .target Shikrik
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Abate os |cRXP_ENEMY_Escorpídeos Operários|r. Saque-os para obter o |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_Deixe os |cRXP_ENEMY_Escorpídeos Operários|r lançarem|r |T136016:0|t[Veneno Fraco] |cRXP_WARN_sobre você, depois leve dano dele 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Sobrecarga]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 77587 >>Entregue Ícones de Poder << Troll Shaman
    .turnin 77585 >>Entregue Ícones de Poder << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Sobrecarga - 3 (Mulgore)
#title Sobrecarga
#next Proficiência em Escudo - 6 (Mulgore)


    --Rune of Overload
step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 3 para adquirir|r |T133815:0|t[Gravar Peitoral - Sobrecarga] |cRXP_WARN_pois é o requisito de nível para equipar o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Sobrecarga]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >>Vá para Mulgore
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Aceite Ícones de Poder
    .target Meela Dawnstrider
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>Abate os |cRXP_ENEMY_Costagulhas Xamãs|r. Saque-os para obter o |T134918:0|t[|cRXP_FRIENDLY_Ícone Diádico|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_Deixe os |cRXP_ENEMY_Costagulhas Xamãs|r lançarem|r |T136048:0|t[Raio] |cRXP_WARN_sobre você e leve dano dele 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Sobrecarga]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Entregue Ícones de Poder
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Proficiência em Escudo - 6 (Durotar)
#title Proficiência em Escudo
#next Impacto Derretido - 10 (Durotar)

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo] |cRXP_WARN_apenas em Durotar|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 3, pois é o requisito de nível para equipar o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo] |cRXP_WARN_apenas em Durotar|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >>Vá para Durotar
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>Clique no Totem |cRXP_PICK_Galvanic Ícone|r. Pegue o |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    >>|cRXP_WARN_O |cRXP_PICK_Galvanic Ícone|r tem pelo menos 15 pontos de aparição, com pelo menos 2 ativos de cada vez. Ele desaparece <2 minutos após ser saqueado|r
    >>|cRXP_WARN_Ele produz um|r |T136051:0|t[Escudo de Raios] |cRXP_WARN_som a cada 5 minutos se você estiver dentro de 1000 metros, e mostra um Golpe com Raio em sua localização se você estiver dentro de 300 metros e voltado para ele|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>Viaje para os Sertões
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Proficiência em Escudo - 6 (Mulgore)
#title Proficiência em Escudo
#next Impacto Derretido - 8 (Mulgore)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_Você deve ter no mínimo nível 6 para adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo] |cRXP_WARN_apenas em Mulgore|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 3, pois é o requisito de nível para equipar o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Você deve ter no mínimo nível 6 para adquirir|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo] |cRXP_WARN_apenas em Mulgore|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >>Vá para Mulgore
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>Clique no Totem |cRXP_PICK_Galvanic Ícone|r. Pegue o |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    >>|cRXP_WARN_O |cRXP_PICK_Galvanic Ícone|r tem pelo menos 15 pontos de aparição, com pelo menos 2 ativos de cada vez. Ele desaparece <2 minutos após ser saqueado|r
    >>|cRXP_WARN_Ele produz um|r |T136051:0|t[Escudo de Raios] |cRXP_WARN_som a cada 5 minutos se você estiver dentro de 1000 metros, e mostra um Golpe com Raio em sua localização se você estiver dentro de 300 metros e voltado para ele|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >>Viaje para os Sertões
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos até a saúde baixa, depois lance|r |T136048:0|t[Raio] |cRXP_WARN_neles para matá-los. Faça isto 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Galvânico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Proficiência em Escudo]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Conselho dos Ancestrais - 6 (Durotar)
#title Conselho dos Ancestrais
#next Impacto Derretido - 10 (Durotar)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais] |cRXP_WARN_em Durotar com outro jogador|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 3, pois é o requisito de nível para usar|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais] |cRXP_WARN_em Durotar com outro jogador|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >>Vá para Durotar
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>Viaje para os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_Junte-se a um grupo com outro Xamã, Sacerdote ou Druida ao lado de |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Xamã, Sacerdote ou Druida no Bate-papo Geral (Digite /1 no bate-papo)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito de Aventureiro|r aparecerá e morrerá após completar o ritual. Saqueie-o para o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Conselho dos Ancestrais - 10 (Mulgore)
#title Conselho dos Ancestrais
#next Caminho Telúrico - 12 (As Savanas)


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 10 para adquirir|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais] |cRXP_WARN_em Mulgore com outro jogador|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 3, pois é o requisito de nível para usar|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 10 para adquirir|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais] |cRXP_WARN_em Mulgore com outro jogador|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >>Vá para Mulgore
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Entre na Mina Empreendimentos S.A.
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>Saia da Mina Venture Co. do outro lado
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>Viaje para os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Junte-se a um grupo com outro Xamã, Sacerdote ou Druida ao lado de |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Xamã, Sacerdote ou Druida no Bate-papo Geral (Digite /1 no bate-papo)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito de Aventureiro|r aparecerá e morrerá após completar o ritual. Saqueie-o para o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T237571:0|t|cRXP_LOOT_[Eco dos Antepassados]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Conselho dos Ancestrais]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Caminho Telúrico - 12 (As Savanas)
#title Caminho Telúrico
#next Escudo de Água - 20 (Savanas)



step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 12 para adquirir|r |T134596:0|t[Gravar Calça - Caminho Telúrico] |cRXP_WARN_pois é o requisito de nível para treinar|r |T136075:0|t[Expurgar]
    >>|cRXP_WARN_Você precisa ganhar mais níveis antes de tentar adquirir|r |T134596:0|t[Gravar Calça - Caminho Telúrico]
    >>|cRXP_WARN_Alternativamente, você pode obter|r |T134596:0|t[Gravar Calça - Caminho Telúrico] |cRXP_WARN_em Floresta de Pinhaprata no nível 1+|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Vá para |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 370 >>Aprenda |T136075:0|t[Expurgar]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>Vá para |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Siln|r
    .train 370 >>Aprenda |T136075:0|t[Expurgar]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Use |T136075:0|t[Expurgar] na |cRXP_ENEMY_Miragem do Deserto|r para matá-la. Saqueie-a para obter |T134419:0|t[|cRXP_LOOT_Runa Terrana|r]
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa Terrana]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Caminho Telúrico]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Caminho Telúrico - 14 (Floresta de Pinhaprata)
#title Caminho Telúrico
#next Escudo de Água - 25 (Floresta de Pinhaprata)

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 14 para adquirir|r |T134596:0|t[Gravar Calça - Caminho Telúrico] |cRXP_WARN_em Floresta de Pinhaprata sozinho|r
    >>|cRXP_WARN_Você precisa ganhar mais níveis antes de tentar adquirir|r |T134596:0|t[Gravar Calça - Caminho Telúrico]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>Viaje para a Floresta de Pinhaprata
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>Abate |cRXP_ENEMY_Rot Esconder-se Mystics|r. Saqueie-os para o |T136008:0|t|cRXP_LOOT_[Totem de Podridão]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >>|cRXP_WARN_Use o|r |T136008:0|t|cRXP_LOOT_[Totem de Podridão]|r |cRXP_WARN_para invocar o |cRXP_ENEMY_Decayed Elemental|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >>|cRXP_WARN_Use o|r |T136008:0|t|cRXP_LOOT_[Totem de Podridão]|r |cRXP_WARN_para invocar o |cRXP_ENEMY_Decayed Elemental|r
    >>|cRXP_WARN_Tenha cuidado pois lança|r |T135848:0|t[Novane Congelante] |cRXP_WARN_(À Distância Instantâneo: Causa cerca de 50 de dano e imobiliza por 8 segundos) e é nível 15|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>Abate o |cRXP_ENEMY_Decayed Elemental|r. Saqueie-o para o |T134419:0|t|cRXP_LOOT_[Runa Terrana]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa Terrana]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Caminho Telúrico]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Lobo Fantasma Maior - 25 (Cordilheira das Torres de Pedra)
#title Lobo Fantasma Maior
#next Especialização em Duas Armas - 25 (Ratchet)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 25 para adquirir|r |T134596:0|t[Gravar Calça - Lobo Fantasma Maior] |cRXP_WARN_em Cordilheira das Torres de Pedra sozinho|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>Mate a |cRXP_ENEMY_Anomalia Primordial|r. Saqueie-a pela |T134419:0|t|cRXP_LOOT_[Runa da Fúria Primordial]|r
    >>|cRXP_WARN_Certifique-se de verificar sua forma (debuffs). Se estiver em|r |T136074:0|t[Forma Natural]|cRXP_WARN_, cause|r |T135824:0|t[Fogo Dano]|cRXP_WARN_. Se estiver em|r |T135819:0|t[Forma Ígnea]|cRXP_WARN_, cause|r |T135865:0|t[Gélido Dano]|cRXP_WARN_. Se estiver em|r |T135861:0|t[Forma Aquática]|cRXP_WARN_, cause|r |T136085:0|t[Nature Dano]
    >>Cuidado enquanto ele lança|cRXP_WARN_ |T132939:0|t[Repelir] |cRXP_WARN_(Corpo a Corpo Instantâneo: Arremessa o alvo para o ar e causa 80 de dano)|r
    >>|cRXP_WARN_Tem um tempo de ressurgimento de 5-8 minutos e solta um item verde BoE aleatório cada vez|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Fúria Primordial]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Lobo Fantasma Maior]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Escudo da Terra - 25 (Azeroth)
#title Escudo da Terra
#next Sobrecarga - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Sobrecarga - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 25 para adquirir|r |T134596:0|t[Gravar Calça - Escudo da Terra] |cRXP_WARN_pois é o requisito de nível para entrar em Profundezas Negras|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>Vá para Orgrimmar ou Penhasco do Trovão
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro Wabang|r
    >>|cRXP_BUY_Compre um|r |T134797:0|t[Elixir de Respiração Aquática] |cRXP_BUY_e|r |T134717:0|t[Elixir de Sabedoria] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Alternativamente, compre os materiais para fabricá-los você mesmo: 2|r |T132799:0|t[Óleo de Bocanera] |cRXP_WARN_(ou 4|r |T134302:0|t[Oleoso Blackmouth] |cRXP_WARN_para fabricar o óleo), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_, e 2|r |T134412:0|t[Cravespinho]
    >>|cRXP_WARN_Você precisará disso para uma missão depois. NÃO use-os antes disso|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro Wabang|r
    >>|cRXP_BUY_Compre um|r |T134797:0|t[Elixir de Respiração Aquática] |cRXP_BUY_e|r |T134717:0|t[Elixir de Sabedoria] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Você precisará disso para uma missão depois. NÃO use-os antes disso|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T134797:0|t[Elixir de Respiração Aquática] |cRXP_BUY_e|r |T134717:0|t[Elixir de Sabedoria] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Alternativamente, compre os materiais para fabricá-los você mesmo: 2|r |T132799:0|t[Óleo de Bocanera] |cRXP_WARN_(ou 4|r |T134302:0|t[Oleoso Blackmouth] |cRXP_WARN_para fabricar o óleo), 1|r |T134191:0|t[Stranglekelp]|cRXP_WARN_, 1|r |T133436:0|t[Mageroyal]|cRXP_WARN_, e 2|r |T134412:0|t[Cravespinho]
    >>|cRXP_WARN_Você precisará disso para uma missão depois. NÃO use-os antes disso|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T134797:0|t[Elixir de Respiração Aquática] |cRXP_BUY_e|r |T134717:0|t[Elixir de Sabedoria] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Você precisará disso para uma missão depois. NÃO use-os antes disso|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_Ingresse ou crie um novo grupo de incursão (0/7) (10 pessoas) para Profundezas Negras|r
    .subzone 2797,2 >>Vá até o Portal da instância de Profundezas Negras. Entre na instância
    .train 410101,1
    .xp <25,1
step
    >>Abate |cRXP_ENEMY_O Barão Aquanis|r em Profundezas Negras. Saqueie-o para o |T136222:0|t|cRXP_LOOT_[Strange Globo de Água]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>Usar o |T136222:0|t|cRXP_LOOT_[Strange Globo de Água]|r para iniciar a missão
    .accept 78920 >>Aceitar O Barão Aquanis
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_Conclua a incursão se quiser, depois saia de Profundezas Negras|r
    .zone Ashenvale >>Viaje para Vale Gris
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78920 >>Entregue O Barão Aquanis
    .accept 78506 >>Aceite Elemental Affliction
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>Abate os |cRXP_ENEMY_Conspurcado Elementais da água|r. Saqueie o |T132844:0|t|cRXP_LOOT_[Mote of Torrential Raiva]|r.
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Abate os |cRXP_ENEMY_Ladino Fire Espíritos|r, os |cRXP_ENEMY_Em chamas Destroyers|r e os |cRXP_ENEMY_Em chamas Ravagers|r. Saqueie o |T132839:0|t|cRXP_LOOT_[Mote of Raiva Infernal]|r.
    >>|cRXP_ENEMY_Ladino Fire Espíritos|r |cRXP_WARN_compartilham reaparecimento com|r |cRXP_ENEMY_Enegrecido Basilisks|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>Abate os |cRXP_ENEMY_Enraivecido Pedra Espíritos|r e os |cRXP_ENEMY_Furioso Pedra Espíritos|r. Saqueie o |T132838:0|t|cRXP_LOOT_[Mote of Seismic Raiva]|r |cRXP_WARN_Cuidado com inimigos perigosos na área.|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Abate os |cRXP_ENEMY_Ladino Fire Espíritos|r, os |cRXP_ENEMY_Em chamas Destroyers|r e os |cRXP_ENEMY_Em chamas Ravagers|r. Saqueie o |T132839:0|t|cRXP_LOOT_[Mote of Raiva Infernal]|r.
    >>|cRXP_ENEMY_Ladino Fire Espíritos|r |cRXP_WARN_compartilham reaparecimento com|r |cRXP_ENEMY_Enegrecido Basilisks|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Entregue Elemental Affliction
    .accept 78537 >>Aceite Elixir of Perception
    .accept 78537 >>Entregue Elixir of Perception
    .accept 78561 >>Aceite Elixir of Perception
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>Usar o |T134791:0|t[Elixir of Perception] perto dos Cata Objects
    >>|cRXP_WARN_Você NÃO precisa esperar o RP|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Entregue Elixir of Perception
    .accept 78575 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>Abate |cRXP_ENEMY_Hirzek|r. Saqueie o |T135146:0|t|cRXP_LOOT_[NO TRANSLATION FOUND TO THIS ELEMENT's Cajado]|r
    >>|cRXP_WARN_Cuidado, pois |cRXP_ENEMY_Hirzek|r lança|r |T135805:0|t[Raio] |cRXP_WARN_(Conjuração a Distância: Causa cerca de 110 danos de Natureza) e é um inimigo élite nível 25. Pode ser derrotado sozinho, mas você pode querer encontrar alguém para ajudá-lo|r
    >>|cRXP_WARN_Cuidado, pois o |cRXP_ENEMY_Escravizar Elemental|r tem alcance infinito se você matar |cRXP_ENEMY_Hirzek|r e deixar o |cRXP_ENEMY_Escravizar Elemental|r vivo (vai te seguir até você matá-lo ou desaparecer da tela)|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa de Escudo da Terra]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Escudo da Terra]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +Parabéns! Você adquiriu todas as |T134419:0|t|cRXP_LOOT_[Runas]|r atualmente disponíveis.
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Novane de Fogo - 35 (Azeroth)
#title Novane de Fogo

-- Fire Nova

step
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
step
    .goto Desolace,56.6,21.8
    >>Mate |cRXP_ENEMY_Videchamas Dubelen|r. Saque o |T136008:0|t|cRXP_LOOT_Corrompido Totem do Fogo|r
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>Clique no |cRXP_PICK_Cristal Azul|r entre os cristais laranjas para coletar |T134088:0|t[Lágrima de Theradras]
    >>|cRXP_WARN_Tenha cuidado pois inimigos nesta área são élite e podem atordoar.|r |cFFFF0000Você provavelmente vai morrer várias vezes|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>Clique no |cRXP_PICK_Cristal Azul|r entre os cristais roxos para coletar |T134088:0|t[Lágrima de Theradras]
    >>|cRXP_WARN_Tenha cuidado pois inimigos nesta área são élite e podem atordoar.|r |cFFFF0000Você provavelmente vai morrer várias vezes|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor Solárbol|r e selecione a opção de diálogo
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>Voe para |cFFfa9602Thunder Blefe|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r e selecione a opção de diálogo
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r e selecione a opção de diálogo para voar para Moonglade
    .target Tal
step
    #completewith next
    .zone Moonglade >>Vá para |cFFfa9602Moonglade|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Remulos|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Arma da Voragem - 40 (Azeroth)
#title Arma da Voragem

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >>Entre Urzal dos Tuscos
step
    .train 410100,1
    >>Abate |cRXP_ENEMY_Charlga Talhaflanco|r. Saque-o pela |T134944:0|t|cRXP_LOOT_Nota Esfarrapada|r. Usar-a para aceitar a missão
    >>|cRXP_WARN_é altamente recomendado formar um grupo de 5 jogadores para isto|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>Aceite Nota Esfarrapada
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rau Corta Montes|r
    .turnin 79358 >>Entregue Nota Esfarrapada
    .accept 79360 >>Aceite Auxílio Elemental
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Compre um|r |T132793:0|t[Cristal Vial] |cRXP_BUY_dela|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bath'rah, o Vigia dos Ventos|r
    .turnin 79360 >>Entregue Auxílio Elemental
    .accept 79361 >>Aceite Poder do Vento
    .accept 79362 >>Aceite Poder da Terra
    .accept 79363 >>Aceite Poder da Água
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>Abate os |cRXP_ENEMY_Whirlwind Elementals|r por toda Desolação. Saque-os pela sua |T132845:0|t|cRXP_LOOT_Whirling Essência|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>Abate os |cRXP_ENEMY_Withervine Elementals|r por toda Pântano Vadeoso. Saque-os pela sua |T132846:0|t|cRXP_LOOT_Rushing Essência|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>Voe para |cFFfa9602Ermos|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>Abate o |cRXP_ENEMY_Lesser Elemental da Rocha|r e os |cRXP_ENEMY_Rock Elementals|r. Saque-os pelas suas |T132846:0|t|cRXP_LOOT_Rumbling Essences|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bath'rah, o Vigia dos Ventos|r
    .turnin 79361 >>Entregue Poder do Vento
    .turnin 79362 >>Entregue Poder da Terra
    .turnin 79363 >>Entregue Poder da Água
    .accept 79364 >>Aceite Um Recipiente Simples
    .turnin 79364 >>Entregue Um Recipiente Simples
    .accept 79365 >>Aceite Ventos Sob as Asas
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rau Corta Montes|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyse|r e selecione a 2ª opção de diálogo
    .target Nyse
step
    .train 410100,1
    >>Abate o |cRXP_ENEMY_Tempesto Devastador|r. Saque-o pelo seu |cRXP_LOOT_Olho do Tempesto|r
    >>|cRXP_WARN_Se você morrer no processo, fale com o|r |cRXP_FRIENDLY_Spirit Curador|r |cRXP_WARN_para teleportá-lo até seu cadáver|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >>Interaja com a |cRXP_FRIENDLY_Freewind Post Mantícora|r
    .timer 9,Voo RP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rau Corta Montes|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bath'rah, o Vigia dos Ventos|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Tempestade|r] para aprender |T136032:0|t[Arma da Voragem]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Surto de Poder - 30 (Planalto Arathi)
#title Surto de Poder

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>Voe para |cFFfa9602Planalto Arathi|r |cRXP_WARN_É altamente recomendado formar um grupo de pelo menos 3 jogadores.|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>Abate os |cRXP_ENEMY_Boulderfist Ogres|r e os |cRXP_ENEMY_Boulderfist Brutes|r. Saque-os por um |T134921:0|t|cRXP_LOOT_[Ogro Para-raios]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>Clique no |cRXP_PICK_Solo Macio|r para inserir o |T134921:0|t|cRXP_LOOT_[Para-raios]|r na terra.
step
    .train 416054,1
    >>Use o |T136048:0|t[Raio] 10 vezes no |cRXP_ENEMY_Raio Para-raios|r
    >>Mate |cRXP_ENEMY_Tamkar|r ou o derrote enquanto ele aparece. Saqueie o |T134419:0|t[Runa de Poder]
    >>|cRXP_WARN_Ele morrerá automaticamente após 30 segundos, então você pode derrotá-lo em vez de matá-lo|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa de Poder] |cRXP_WARN_para aprender|r |T134337:0|t[Surto de Poder]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#title Totem Chamariz
#name Totem Chamariz - 27 (Mil Agulhas)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Compre um|r |T132906:0|t[Fio de Seda] |cRXP_BUY_dela|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>Mate os |cRXP_ENEMY_Cloud Serpents|r. Saqueie-os para obter suas |cRXP_LOOT_Cloud Serpent Presas|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob Cloud Serpent
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>Mate os cRXP_ENEMY_Screeching Harpies|r. Saqueie-os para obter suas |cRXP_LOOT_Strong Harpia Peninha|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_Use suas|r |T133723:0|t[Serpente das Nuvens Presas] |cRXP_WARN_para criar|r |T133291:0|t[Oferenda ao Espírito do Vento]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >>Vá para Darkcloud Pinnacle
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >>Suba no Darkcloud Pinnacle
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_Usar o|r |T133291:0|t[Oferenda ao Espírito do Vento] |cRXP_WARN_perto do|r |cRXP_PICK_Altar do Espírito do Vento|r
    >>|cRXP_WARN_O Altar está localizado atrás da cabana no pico mais oriental|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>Salte para baixo para mostrar sua fé ao Espírito do Vento para receber o |T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r
    >>|cRXP_WARN_Certifique-se de que seu|r |T133291:0|t[Oferenda ao Espírito do Vento] |cRXP_WARN_não desapareça. Dura 30 segundos|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_Usar o|r |T134419:0|t|cRXP_FRIENDLY_Runa de Decoys|r |cRXP_WARN_para aprender|r |T134508:0|t[Totem Chamariz]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#title Espírito do Alfa
#name Espírito do Alfa - 27 (Mil Agulhas)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>Vá para o início da ponte inferior logo ao sul de Freewind Post
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_Usar|r |T136095:0|t[Lobo Fantasma] |cRXP_WARN_para pular para baixo cuidadosamente em direção ao|r |cRXP_PICK_Weathered Cache|r
    >>Clique em |cRXP_PICK_Weathered Cache|r para obter |T136095:0|t|cRXP_FRIENDLY_Eco do Alfa|r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_Usar o|r |T136095:0|t|cRXP_FRIENDLY_Eco do Alfa|r |cRXP_WARN_para aprender|r |T408696:0|t[Espírito do Alfa]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Eco ribombante
#name Eco ribombante - 41 (Tanaris)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_Clique no|r |cRXP_PICK_Odd Totem|r. Isto o transformará em um Lobo Fantasma |cRXP_WARN_e aumenta o dano que você recebe em 50%|r
step
    .train 432236,1
    >>|cRXP_WARN_Corra para o outro totem enquanto evita inimigos.|r Saque o baú que aparece para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Eco Ribombante|r]
    *|cRXP_WARN_Você está recebendo 50% de dano adicional. Tenha cuidado!|r Você também pode limpar os inimigos no caminho para o outro totem antecipadamente
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Eco Ribombante|r] |cRXP_WARN_para aprender|r |T136111:0|t[Eco Ribombante]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Choque Estático
#name Choque Estático - 44 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_Você tem que estar em um grupo com outro jogador que possa ajudá-lo para obter esta runa|r
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>Clique em |cRXP_PICK_Totem Carregado|r para obter o buff |T136075:0|t[Ar Carregado]
step
    #label ChargedAir
    .train 432238,1
    >>|cRXP_WARN_Fique perto do totem e mate os |cRXP_ENEMY_Gordunni Ogres|r com dano de raio (p.ex. Escudo de Raios) até que |cRXP_ENEMY_Tempestade Espiralante|r apareça.
    >>Abate a |cRXP_ENEMY_Tempestade Espiralante|r. Saque-a pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Choque Estático|r]
    *|cRXP_WARN_Todos os jogadores do grupo devem permanecer no alcance do totem|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Choque Estático|r] |cRXP_WARN_para aprender|r |T237587:0|t[Choque Estático]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Mar Revolto
#name Mar Revolto - 42 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 432234,1
step
    .train 432234,1
    >>Clique no |cRXP_PICK_Caixote Antigo|r atrás da barraca para pegar a |T134239:0|t[Chave Antiga]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>Clique no |cRXP_PICK_Baú Antigo|r no fundo do mar para pegar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Mar Revolto|r]
    *|cRXP_WARN_Tenha cuidado! Isso vai invocar QUATRO |cRXP_ENEMY_Simmering Elementals|r (nível 42, imune ao Gélido)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mar Revolto|r] |cRXP_WARN_para aprender|r |T237590:0|t[Mar Revolto]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Mar Revolto
#name Mar Revolto - 45 (Azeroth)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>Mate os |cRXP_ENEMY_Hiena Patapústula|r, os |cRXP_ENEMY_Pousar Atroa-terra|r e os |cRXP_ENEMY_Observador Silicouro|r. Saqueie-os para obter |cRXP_LOOT_|T134327:0|tNotas Manchadas do Xamã|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>Clique na |cRXP_PICK_|T134327:0|tNotas Manchadas do Xamã|r para iniciar a missão
    .accept 82072,1 >>Aceite Terra Expurgante
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>Usar |T134743:0|t[Murquinho Sapta da Terra] perto do Totem da Terra Corrompida
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Mate |cRXP_ENEMY_Corrompido|r. Depois >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 82072 >>Entregue Terra Expurgante
    .accept 82075 >>Aceite Resposta ao Chamado da Terra
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>Voe para Azshara
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>Mate os |cRXP_ENEMY_Sátiro Haldarr|r, os |cRXP_ENEMY_Trapaceiro Haldarr|r e os |cRXP_ENEMY_Devoto Vil Haldarr|r. Saqueie-os para obter |cRXP_LOOT_|T134331:0|tNotas Encharcadas do Xamã|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>Clique na |cRXP_PICK_|T134331:0|tNotas Encharcadas do Xamã|r para iniciar a missão
    .accept 82073,1 >>Aceite Água Purificante
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>Usar |T134743:0|t[Murquinho Sapta da Terra] perto do Totem das Águas Corrompidas
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Mate |cRXP_ENEMY_Corrompido|r. Depois >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Água|r
    .turnin 82073 >>Entregue Água Purificante
    .accept 82076 >>Aceite Resposta ao Chamado da Água
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>Vá para Terras Agrestes
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>Mate os |cRXP_ENEMY_Lodo Verde|r e os |cRXP_ENEMY_Gosma Jade|r. Saqueie-os para obter |cRXP_LOOT_|T134332:0|tNotas Rasgadas do Xamã|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>Clique na |cRXP_PICK_|T134332:0|tNotas Rasgadas do Xamã|r para iniciar a missão
    .accept 81960,1 >>Aceite Ar Purificante
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>Usar |T134743:0|t[Murquinho Sapta da Terra] perto do Totem do Ar Corrompido
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Mate |cRXP_ENEMY_Corrompido|r. Depois >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 81960 >>Entregue Ar Purificante
    .accept 81968 >>Aceite Resposta ao Chamado do Ar
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>Vá para Garganta Abrasadora
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>Mate os |cRXP_ENEMY_Elementais de Magmático|r e os |cRXP_ENEMY_Elementais do Inferno|r. Saqueie-os para obter |cRXP_LOOT_|T134327:0|tNotas Calcinadas do Xamã|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>Clique na |cRXP_PICK_|T134329:0|tNotas Calcinadas do Xamã|r para iniciar a missão
    .accept 82071,1 >>Aceite Fogo Purificador
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>Usar |T134743:0|t[Murquinho Sapta da Terra] perto do Totem do Fogo Corrompido
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Mate |cRXP_ENEMY_Corrompido|r. Depois >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada do Fogo|r
    .turnin 82071 >>Entregue Fogo Purificador
    .accept 82074 >>Aceite Resposta ao Chamado do Fogo
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Mate os |cRXP_ENEMY_Borrifadores do Mar|r e os |cRXP_ENEMY_Elementais do Mar|r. Saqueie-os para obter |cRXP_LOOT_|T132849:0|tEssência Elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>Usar |T134118:0|t[Fragmento da Terra]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 82075 >>Resposta ao Chamado da Terra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Mate os |cRXP_ENEMY_Borrifadores do Mar|r e os |cRXP_ENEMY_Elementais do Mar|r. Saqueie-os para obter |cRXP_LOOT_|T132849:0|tEssência Elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>Usar |T134130:0|t[Fragmento do Fogo]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 82075 >>Resposta ao Chamado da Terra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Mate os |cRXP_ENEMY_Borrifadores do Mar|r e os |cRXP_ENEMY_Elementais do Mar|r. Saqueie-os para obter |cRXP_LOOT_|T132849:0|tEssência Elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>Usar |T134133:0|t[Fragmento do Ar]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 82075 >>Resposta ao Chamado da Terra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Mate os |cRXP_ENEMY_Borrifadores do Mar|r e os |cRXP_ENEMY_Elementais do Mar|r. Saqueie-os para obter |cRXP_LOOT_|T132849:0|tEssência Elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>Usar |T134089:0|t[Fragmento da Água]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação Moderada da Terra|r
    .turnin 82075 >>Resposta ao Chamado da Terra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>Abate |cRXP_ENEMY_Twilight Escuridão Xamã.|r Saqueie-o para |cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|tRune of Sobrecarga|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrecarga|r] |cRXP_WARN_para treinar|r |T132213:0|t[Sobrecarga]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Tempestade, Terra e Fogo
#name Tempestade, Terra e Fogo - 52 (Selva Maleva)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>Mate os |cRXP_ENEMY_Deadwood Shamans|r, os |cRXP_ENEMY_Deadwood Avengers|r e os |cRXP_ENEMY_Deadwood Den Watchers|r. Saque-os pelo |T134918:0|t[|cRXP_LOOT_Ícone Voltaico|r]
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >>|cRXP_WARN_Equipe o|r |T134918:0|t[|cRXP_LOOT_Ícone Voltaico|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_Você deve matar 3 inimigos agora com um único lançamento de|r |T136015:0|t[Cadeia de Raios]
    >>|cRXP_WARN_Puxe 3 inimigos e reduza a vida deles para cerca de 5% cada, então lance|r |T136015:0|t[Cadeia de Raios]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_Use o|r |T134918:0|t[|cRXP_LOOT_Ícone Voltaico|r] |cRXP_WARN_para aprender|r |T237588:0|t[Tempestade, Terra e Fogo]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Coerência
#name Coerência - 55 (Estepes Ardentes)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    .train 416062,1
    #loop
    .goto Burning Steppes,62.4,9.0,60,0
    .goto Burning Steppes,69.4,31.8,60,0
    .goto Burning Steppes,61.4,31.8,60,0
    .goto Burning Steppes,51.2,35.6,60,0
    .goto Burning Steppes,55.6,49.2,60,0
    .goto Burning Steppes,54.8,62.2,60,0
    .goto Burning Steppes,35.6,61.6,60,0
    .goto Burning Steppes,41.6,43.6,60,0
    >>Mate os |cRXP_ENEMY_Greater Obsidian Elementals|r. Saqueie deles o |cRXP_LOOT_Núcleo Obsidiano Derretido|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_Você agora tem 10 minutos para pular na água em qualquer lugar do mundo|r
    >>|cRXP_WARN_Viaje para Montanhas Cristarrubra e pule no lago|r
    >>|cRXP_WARN_Se sua Pedra de Regresso está perto da água, você pode fazer isso também|r
    >>|cRXP_WARN_Pular na água transformará o |cRXP_LOOT_Núcleo Obsidiano Derretido|r em um|r |T237477:0|t[|cRXP_LOOT_Núcleo Obsidiano Fuliginoso|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >>|cRXP_WARN_Abra o|r |T237477:0|t[|cRXP_LOOT_Núcleo Obsidiano Fuliginoso|r] |cRXP_WARN_para receber a|r |T134419:0|t[|cRXP_LOOT_Runa da Compostura|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_LOOT_Runa da Compostura|r] |cRXP_WARN_para aprender|r |T237586:0|t[Coerência]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Espírito Feral
#name Espírito Feral - 60 (Hibérnia)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
    >>|cRXP_WARN_Nota: você deve matar um élite nível 60. Considere trazer um amigo|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >>Entre na Caverna Yeti
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_Vá para o fundo da caverna do Yeti e fale com o elemental acorrentado|r |cRXP_FRIENDLY_Frijidar|r
    >>|cRXP_WARN_Ele ficará hostil após alguns segundos|r
    >>Mate |cRXP_ENEMY_Frijidar|r. Saqueie-o pela |T134419:0|t[|cRXP_LOOT_Runa do Espírito Aprisionado|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_LOOT_Runa do Espírito Aprisionado|r] |cRXP_WARN_para aprender|r |T237577:0|t[Espírito Feral]
]])
