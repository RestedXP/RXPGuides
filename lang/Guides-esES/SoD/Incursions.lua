if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Diarias de Incursiones Pesadilla
#name (25-32) Bosque del Ocaso Incursión de Pesadilla

step
    #optional
    #completewith travel
    +|cRXP_WARN_Has superado el nivel de esta zona de incursión y recibirás recompensas de experiencia reducidas por hacer misiones aquí. Selecciona de la lista una incursión diferente que sea más adecuada para tu nivel.|r
    >>|cRXP_WARN_Las ganancias de reputación son las mismas independientemente de tu nivel; sin embargo, una vez que alcances el nivel 53 puedes hacer una misión repetible infinita de entrega de materiales de profesión para conseguir reputación extremadamente rápido|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>Compra 10 |T133852:0|t[|cRXP_LOOT_Musgo de pesadilla|r], 10 |T134314:0|t[|cRXP_LOOT_Dragontina de toque onírico|r] y 10 |T134575:0|t[|cRXP_LOOT_Mena de hierro fría|r] en la casa de subastas antes de dirigirte a Bosque del Ocaso
    >>|cRXP_WARN_Omite este paso si no estás cerca de una casa de subastas o si los precios no valen la pena. Estas tres misiones otorgan una cantidad combinada de 16.000xp y 225 de reputación|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >> |cRXP_WARN_Viaja a Bosque del Ocaso. Asegúrate de tener suficiente espacio en tu Registro de misiones. Necesitarás tener de 12 a 15 misiones de la incursión en tu registro a la vez|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >> Dirígete al camino que lleva a la Arboleda del Crepúsculo
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >> Sube por el camino
    .maxlevel 53
step
    >>Busca un Intendente de los |cRXP_FRIENDLY_Celadores Esmeralda|r en el lugar marcado y cómprales tu runa
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
    .train 431705 >>|cRXP_WARN_Usa la runa|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] |cRXP_WARN_para aprender|r |T132886:0|t[Zona de vacío] << Priest
    .train 429308 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Hechizo: Armadura de arrabio|r] |cRXP_WARN_para aprender|r |T132221:0|t[Armadura de arrabio] << Mage
    .train 431747 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción|r] |cRXP_WARN_para aprender|r |T136228:0|t[Aflicción inestable] << Warlock
    .train 416066 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Quemar|r] |cRXP_WARN_para aprender|r |T135822:0|t[Quemar] << Shaman
    .train 432297 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Prontitud|r] |cRXP_WARN_para aprender|r |T236269:0|t[Acortar] << Rogue
    .train 431611 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonación|r] |cRXP_WARN_para aprender|r |T133713:0|t[TNT] << Hunter
    .train 431447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T304501:0|t[Cornada] << Druid
    .train 429261 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo|r] |cRXP_WARN_para aprender|r |T236262:0|t[Martillo de cólera mejorado] << Paladin
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Falinar|r
    .vendor >> |cRXP_BUY_Cómprale hasta 5|r |T134718:0|t[Pociones de sanación superior] |cRXP_BUY_si quieres.|r |cRXP_WARN_Estas solo pueden usarse dentro de las zonas de incursión.|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Falinar|r
    .vendor >> |cRXP_BUY_Cómprale hasta 5|r |T236885:0|t[Pociones de sanación sublime] |cRXP_BUY_si quieres.|r |cRXP_WARN_Estas solo pueden usarse dentro de las zonas de incursión.|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Acepta la misión "Misión X de Bosque del Ocaso: Musgo de pesadilla"
    .accept 81740 >> Acepta la misión "Misión XI de Bosque del Ocaso: Mena de hierro fría"
    .accept 81741 >> Acepta la misión "Misión XII de Bosque del Ocaso: Dragontina de toque onírico"
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81739 >> Acepta la misión "Misión X de Bosque del Ocaso: Musgo de pesadilla"
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81740 >> Acepta la misión "Misión XI de Bosque del Ocaso: Mena de hierro fría"
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .accept 81741 >> Acepta la misión "Misión XII de Bosque del Ocaso: Dragontina de toque onírico"
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .turnin -81739 >> Entrega la misión "Misión X de Bosque del Ocaso: Musgo de pesadilla"
    .turnin -81740 >> Entrega la misión "Misión XI de Bosque del Ocaso: Mena de hierro fría"
    .turnin -81741 >> Entrega la misión "Misión XII de Bosque del Ocaso: Dragontina de toque onírico"
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    >>|cRXP_WARN_Ahora harás una ruta de misiones de incursión. Todas estas misiones se pueden completar en grupo, lo que las hace aún más eficientes. Si ves a algún jugador cerca del PNJ que da la misión, intenta formar un grupo. Si encuentras un par de jugadores, también puedes hacer las misiones de jefes que de otro modo no se podrían hacer en solitario|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >> Acepta la misión "Misión I del Bosque del Ocaso: Derrota a los huargen"
    .accept 81731 >> Acepta la misión "Misión II del Bosque del Ocaso: Derrota a los ogros"
    .accept 81732 >> Acepta la misión "Misión III de Bosque del Ocaso: Derrota a los dragonantes"
    .accept 81733 >> Acepta la misión "Misión IV de Bosque del Ocaso: Inteligencia ogra"
    .accept 81734 >> Acepta la misión "Misión V de Bosque del Ocaso: Inteligencia huargen"
    .accept 81735 >> Acepta la misión "Misión VI de Bosque del Ocaso: Inteligencia dracónica"
    .accept 81736 >> Acepta la misión "Misión VII de Bosque del Ocaso: Recupera la umbriguadaña"
    .accept 81737 >> Acepta la misión "Misión VIII de Bosque del Ocaso: Recupera el texto de ogro mago"
    .accept 81738 >> Acepta la misión "Misión IX de Bosque del Ocaso: Recupera el huevo de dragón"
    .accept 81745 >> Acepta la misión "Misión XVI de Bosque del Ocaso: Rescata a Kroll Sombra de Montaña"
    .accept 81746 >> Acepta la misión "Misión XVII de Bosque del Ocaso: Rescata a Alara Curarboledas"
    .accept 81747 >> Acepta la misión "Misión XVIII de Bosque del Ocaso: Rescata a Elenora Caminamarismas"
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .accept 81742 >> Acepta la misión "Misión XIII de Bosque del Ocaso: Derrota a Ylanthrius"
    .accept 81743 >> Acepta la misión "Misión XIV de Bosque del Ocaso: Derrota a Vvarc'zul"
    .accept 81744 >> Acepta la misión "Misión XV de Bosque del Ocaso: Derrota a Amokarok"
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Haz clic en el portal junto a quien da las misiones|r para entrar en la fase del Sueño Esmeralda
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >> Sal de la Arboleda del Crepúsculo |cRXP_WARN_una vez dentro del Sueño Esmeralda|r
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>Mata |cRXP_ENEMY_Ogros desquiciados|r y |cRXP_ENEMY_Tejefuegos dementes|r mientras completas otros objetivos
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >> Habla con |cRXP_FRIENDLY_Elenora Caminamarismas|r tendida en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Si no está allí, significa que alguien más la está escoltando, omite este paso si no puedes encontrarla|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Ten cuidado, si mueres todos los PNJs de escolta que te están siguiendo volverán a donde los recogiste y tendrás que encontrarlos de nuevo|r
    >>|cRXP_WARN_El PNJ de escolta también dejará de seguirte 15 minutos después de recogerlo, ¡así que intenta darte prisa!|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>Entra en la cueva y despoja el [|cRXP_LOOT_Texto de ogro mago|r] que está en la plataforma en el centro de esta
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>Adéntrate más en la cueva y habla con el |cRXP_FRIENDLY_Celador de sueños Thalinar|r para recibir el |T134939:0|t[|cRXP_LOOT_Informe de inteligencia|r]
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_Mata a|r |cRXP_ENEMY_Vvarc'Zul|r|cRXP_WARN_. Ten cuidado, ya que tiene una enorme cantidad de salud, lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_e invoca esbirros|r |T135819:0|t[Elemental de fuego] |cRXP_WARN_|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>Mata |cRXP_ENEMY_Crías de nocterror|r y |cRXP_ENEMY_Caminahorrores vermintes|r mientras completas otros objetivos
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>Despoja el [|cRXP_LOOT_Huevo de dragón verde sin eclosionar|r] que está en el suelo junto al tocón de árbol
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >> Habla con |cRXP_FRIENDLY_Alara Curarboledas|r tendida en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Si no está allí, significa que alguien más la está escoltando, omite este paso si no puedes encontrarla|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>Dirígete al interior de la granja y habla con la |cRXP_FRIENDLY_Celadora de sueños Amalia|r para recibir el |T134939:0|t[|cRXP_LOOT_Informe de inteligencia|r]
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_Mata a|r |cRXP_ENEMY_Ylanthrius|r. |cRXP_WARN_Un dragón verde que vuela sobre la granja|r|cRXP_WARN_. Tiene una enorme cantidad de salud, es inmune a los hechizos de naturaleza, tiene|r|T132338:0|t[Rajar]|cRXP_WARN_,|r |T134307:0|t[Barrido de cola] |cRXP_WARN_e|r |T135745:0|t[Invoca] |cRXP_WARN_a un|r |cRXP_ENEMY_Draco|r |cRXP_WARN_esbirro que lanza un aliento frontal que causa un daño enorme|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>Mata |cRXP_ENEMY_Corredores de pesadillas|r y |cRXP_ENEMY_Tejedores de pesadillas|r mientras completas otros objetivos
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>Dirígete al interior del granero y habla con el |cRXP_FRIENDLY_Celador de sueños Dorilar|r para recibir |T134939:0|t[|cRXP_LOOT_Informe de inteligencia|r]
    >>|cRXP_WARN_NO ENTRES HASTA EL FONDO DEL GRANERO. Puedes hablar con el PNJ a través de la pared interior seleccionándolo como objetivo y usando la tecla de interacción|r
    >>|cRXP_WARN_Ten cuidado, ya que el jefe|r |cRXP_ENEMY_Amokarok|r |cRXP_WARN_está justo al lado del PNJ|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_Mata a|r Amokarok|cRXP_ENEMY_ dentro del granero. Ten cuidado, ya que tiene una enorme cantidad de salud y lanza un|r |T136183:0|t[Miedo] |cRXP_WARN_en área|r
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >> Habla con |cRXP_FRIENDLY_Kroll Sombra de Montaña|r tendido en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Si no está ahí, eso significa que alguien más lo está escoltando, omite este paso si no puedes encontrarlo|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>Ve al segundo piso de la casa más grande y despoja la caja para obtener la |T135138:0|t[|cRXP_LOOT_Umbriguadaña|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >> Dirígete al oeste hasta que alcances una zona fuera de los límites de la pesadilla. Tu pantalla comenzará a brillar de verde y serás teletransportado de vuelta cerca de la entrada. |cRXP_WARN_No te preocupes, los PNJs que estás escoltando te seguirán de vuelta|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >> Regresa al portal de la pesadilla. |cRXP_WARN_¡No mueras en el camino o las misiones de escolta fracasarán! Si llegas sano y salvo al portal, las tres misiones deberían completarse|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>Asegúrate de haber recibido el crédito por todas las misiones de escolta. Todas deberían completarse para cuando llegues al portal. |cRXP_WARN_Intenta moverte un poco hacia adelante y hacia atrás si no recibes el crédito|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >> Regresa al portal que usaste para entrar en la fase del Sueño Esmeralda y |cRXP_WARN_haz clic en él para volver a la fase del mundo normal|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >> Entrega la misión "Misión I del Bosque del Ocaso: Derrota a los huargen"
    .turnin 81731 >> Entrega la misión "Misión II del Bosque del Ocaso: Derrota a los ogros"
    .turnin 81732 >> Entrega la misión "Misión III de Bosque del Ocaso: Derrota a los dragonantes"
    .turnin 81733 >> Entrega la misión "Misión IV de Bosque del Ocaso: Inteligencia ogra"
    .turnin 81734 >> Entrega la misión "Misión V de Bosque del Ocaso: Inteligencia huargen"
    .turnin 81735 >> Entrega la misión "Misión VI de Bosque del Ocaso: Inteligencia dracónica"
    .turnin 81736 >> Entrega la misión "Misión VII de Bosque del Ocaso: Recupera la umbriguadaña"
    .turnin 81737 >> Entrega la misión "Misión VIII de Bosque del Ocaso: Recupera el texto de ogro mago"
    .turnin 81738 >> Entrega la misión "Misión IX de Bosque del Ocaso: Recupera el huevo de dragón"
    .turnin 81745 >> Entrega la misión "Misión XVI de Bosque del Ocaso: Rescata a Kroll Sombra de Montaña"
    .turnin 81746 >> Entrega la misión "Misión XVII de Bosque del Ocaso: Rescata a Alara Curarboledas"
    .turnin 81747 >> Entrega la misión "Misión XVIII de Bosque del Ocaso: Rescata a Elenora Caminamarismas"
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Palandar|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .turnin -81742 >> Entrega la misión "Misión XIII de Bosque del Ocaso: Derrota a Ylanthrius"
    .turnin -81743 >> Entrega la misión "Misión XIV de Bosque del Ocaso: Derrota a Vvarc'zul"
    .turnin -81744 >> Entrega la misión "Misión XV de Bosque del Ocaso: Derrota a Amokarok"
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_Has superado el nivel de todas las zonas de incursión y ya no podrás aceptar ninguna de las misiones habituales en ninguna de ellas|r
    >>Si buscas ganar reputación con los|r |cRXP_FRIENDLY_Celadores Esmeralda|r hay misiones infinitamente repetibles en Feralas donde puedes entregar 10 de cualquiera de estos: |T134186:0|t[|cRXP_LOOT_Lunarraíz|r], |T133594:0|t[|cRXP_LOOT_Piedras lunares grandes|r] o |T134312:0|t[|cRXP_LOOT_Escamas de dragón lunar|r]
    >>Estas misiones no otorgan experiencia ni oro y recompensan con 100 de reputación por entrega. Compra en la Casa de Subastas todos los materiales con mejor relación coste-beneficio que necesites y dirígete a Feralas para entregarlos
    .xp <53,1
step
    #optional
    +Has completado esta ruta de misiones de la Incursión de Pesadilla. Las misiones volverán a estar disponibles tras el reinicio diario. |cRXP_WARN_Selecciona una guía diferente de la lista para continuar|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Diarias de Incursiones Pesadilla
#name (40-49) Vallefresno Incursión de Pesadilla

step
    #optional
    #completewith next
    +|cRXP_WARN_Has superado el nivel de esta zona de incursión y recibirás recompensas de experiencia reducidas por hacer misiones aquí. Selecciona de la lista una incursión diferente que sea más adecuada para tu nivel.|r
    >>|cRXP_WARN_Las ganancias de reputación son las mismas independientemente de tu nivel; sin embargo, una vez que alcances el nivel 53 puedes hacer una misión repetible infinita de entrega de materiales de profesión para conseguir reputación extremadamente rápido|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>Compra 10 |T132106:0|t[|cRXP_LOOT_Raíz onírica|r], 10 |T134306:0|t[|cRXP_LOOT_Dragontina de infusión onírica|r] y 10 |T133848:0|t[|cRXP_LOOT_Polvo de oro de tontos|r] en la Casa de Subastas antes de ir a Vallefresno
    >>|cRXP_WARN_Omite este paso si no estás cerca de una casa de subastas o si los precios no valen la pena. Estas tres misiones otorgan una cantidad combinada de 25.875xp y 225 de reputación|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >> Viaja a Vallefresno. |cRXP_WARN_Asegúrate de tener suficiente espacio en tu Registro de misiones. Necesitarás tener de 12 a 15 misiones de la incursión en tu registro a la vez|r
    >>Si tienes la ruta de vuelo de Azshara, es más rápido volar allí y luego correr a Vallefresno que volar a Astranaar << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>Viaja a la zona del portal de la Pesadilla Esmeralda en el noreste de Vallefresno
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Kyleen|r
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
    .train 431705 >>|cRXP_WARN_Usa la runa|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] |cRXP_WARN_para aprender|r |T132886:0|t[Zona de vacío] << Priest
    .train 429308 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Hechizo: Armadura de arrabio|r] |cRXP_WARN_para aprender|r |T132221:0|t[Armadura de arrabio] << Mage
    .train 431747 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción|r] |cRXP_WARN_para aprender|r |T136228:0|t[Aflicción inestable] << Warlock
    .train 416066 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Quemar|r] |cRXP_WARN_para aprender|r |T135822:0|t[Quemar] << Shaman
    .train 432297 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Prontitud|r] |cRXP_WARN_para aprender|r |T236269:0|t[Acortar] << Rogue
    .train 431611 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonación|r] |cRXP_WARN_para aprender|r |T133713:0|t[TNT] << Hunter
    .train 431447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T304501:0|t[Cornada] << Druid
    .train 429261 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo|r] |cRXP_WARN_para aprender|r |T236262:0|t[Martillo de cólera mejorado] << Paladin
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .accept 81777 >> Acepta la misión "Misión X de Vallefresno: Raíz onírica"
    .accept 81778 >> Acepta la misión "Misión XI de Vallefresno: Polvo de oro de tontos"
    .accept 81779 >> Acepta la misión "Misión XII de Vallefresno: dragontina de infusión onírica"
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .accept 81777 >> Acepta la misión "Misión X de Vallefresno: Raíz onírica"
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .accept 81778 >> Acepta la misión "Misión XI de Vallefresno: Polvo de oro de tontos"
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .accept 81779 >> Acepta la misión "Misión XII de Vallefresno: dragontina de infusión onírica"
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .turnin -81777 >> Entrega la misión "Misión X de Vallefresno: Raíz onírica"
    .turnin -81778 >> Entrega la misión "Misión XI de Vallefresno: Polvo de oro de tontos"
    .turnin -81779 >> Entrega la misión "Misión XII de Vallefresno: dragontina de infusión onírica"
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .accept 81772 >>Acepta la misión "Misión V de Vallefresno: Inteligencia sátira"
    .accept 81785 >>Acepta la misión "Misión XVIII de Vallefresno: Rescata a Maseara Lunaotoño"
    .accept 81784 >>Acepta la misión "Misión XVII de Vallefresno: Rescata a Doran Onirirrama"
    .accept 81783 >>Acepta la misión "Misión XVI de Vallefresno: Rescata a Alyssian Clamavientos"
    .accept 81776 >>Acepta la misión "Misión IX de Vallefresno: Recupera un huevo de toque onírico"
    .accept 81775 >>Acepta la misión "Misión VIII de Vallefresno: Recupera la profecía de Azshara"
    .accept 81774 >>Acepta la misión "Misión VII de Vallefresno: Recupera la máquina de los sueños"
    .accept 81773 >>Acepta la misión "Misión VI de Vallefresno: Inteligencia antárbol"
    .accept 81771 >>Acepta la misión "Misión IV de Vallefresno: Inteligencia dracónica"
    .accept 81768 >>Acepta la misión "Misión I de Vallefresno: Derrota sátiros"
    .accept 81769 >>Acepta la misión "Misión II de Vallefresno: Derrota antárboles"
    .accept 81770 >>Acepta la misión "Misión III de Vallefresno: Derrota a los dragonantes"
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .accept 81780 >> Acepta la misión "Misión XIII de Vallefresno: Derrota a Larsera"
    .accept 81781 >> Acepta la misión "Misión XIV de Vallefresno: Derrota a Zalius"
    .accept 81782 >> Acepta la misión "Misión XV de Vallefresno: Derrota a la trituradora 9000"
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Kyleen|r
    .vendor >>|cRXP_BUY_Cómprale hasta 5|r |T236885:0|t[Pociones de sanación sublime] |cRXP_BUY_si quieres|r
    >>|cRXP_WARN_Estas solo pueden usarse dentro de las zonas de incursión|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>Entra al |cRXP_PICK_Portal del Sueño Esmeralda|r
    >>|cRXP_WARN_Corre recto pasando a los |cRXP_ENEMY_Sátiros|r, |cRXP_ENEMY_Canes manáfago|r y |cRXP_ENEMY_Diablillos|r. Se reiniciarán cuando entres por el portal|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>Mata |cRXP_ENEMY_Acechadoras nocturnas vermintes|r y |cRXP_ENEMY_Crías de terror|r
    >>|cRXP_WARN_Ten cuidado.|r Las |cRXP_ENEMY_Acechadoras nocturnas vermintes|r |cRXP_WARN_son élites de nivel 41|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>Habla con |cRXP_FRIENDLY_Doran Onirirrama|r. Debería empezar a seguirte.
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Ten cuidado, si mueres todos los PNJs de escolta que te están siguiendo volverán a donde los recogiste y tendrás que encontrarlos de nuevo|r
    >>|cRXP_WARN_El PNJ de escolta también dejará de seguirte 15 minutos después de recogerlo, ¡así que intenta darte prisa!|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>Despoja un |cRXP_LOOT_Huevo de dragón de toque onírico|r del suelo
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_Mata a|r |cRXP_ENEMY_Larsera|r|cRXP_WARN_. Tiene una enorme cantidad de salud, es inmune a los hechizos de naturaleza, tiene un|r|T132338:0|t[Rajar]|cRXP_WARN_,|r |T134307:0|t[Barrido de cola] |cRXP_WARN_e|r |T135745:0|t[Invoca] |cRXP_WARN_a un|r |cRXP_ENEMY_Draco|r |cRXP_WARN_esbirro que lanza un aliento frontal que inflige un daño enorme|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Celador de sueños Ellodar|r
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Celador de sueños Mandoran|r
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
    >>Mata |cRXP_ENEMY_Traidores onirillama|r y |cRXP_ENEMY_Clamainfernos onirillama|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>Despoja la |cRXP_LOOT_Profecía de Azshara|r del suelo
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>Habla con |cRXP_FRIENDLY_Maseara Lunaotoño|r. Debería empezar a seguirte
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
    >>Mata |cRXP_ENEMY_Traidores onirillama|r y |cRXP_ENEMY_Clamainfernos onirillama|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>Abre el |cRXP_PICK_Cajón vibrante|r. Despójalo para obtener la |cRXP_LOOT_Máquina de los sueños|r
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>Entra en el Fuerte de Kargathia
    >>|cRXP_WARN_La entrada está bloqueada por un|r |cRXP_ENEMY_Cosechasueños|r|cRXP_WARN_ (élite nivel 41). Usa control de masas (CC) o mátalo mientras entras|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Celadora de sueños Lanaria|r
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>|cRXP_WARN_Mata a la|r |cRXP_ENEMY_Trituradora 9000|r. Ten cuidado, ya que tiene una enorme cantidad de salud, un |T132338:0|t[Rajar] y un |T132338:0|t[Repele en Área]
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>Mata a los |cRXP_ENEMY_Ancianos Vengativos|r de la zona
    >>|cRXP_WARN_Ten cuidado, ya que son élites; omite este paso si no eres lo suficientemente fuerte para derrotarlos en solitario|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>Habla con |cRXP_FRIENDLY_Alyssian Clamavientos|r. Debería empezar a seguirte
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>Mata a |cRXP_ENEMY_Zalius|r |cRXP_WARN_.Ten cuidado, ya que tiene una enorme cantidad de salud|r
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
    >>Termina de matar a las |cRXP_ENEMY_Acechadoras nocturnas vermintes|r y a las |cRXP_ENEMY_Crías de terror|r
    >>|cRXP_WARN_Ten cuidado.|r Las |cRXP_ENEMY_Acechadoras nocturnas vermintes|r |cRXP_WARN_son élites de nivel 41|r
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
    >>Viaja hacia el |cRXP_PICK_Portal del Sueño Esmeralda|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Maseara|r, |cRXP_FRIENDLY_Alyssian|r o |cRXP_FRIENDLY_Doran|r ya no te siguen, vuelve y habla con ellos de nuevo|r
    >>|cRXP_WARN_Camina un par de veces de un lado a otro del punto marcado por tu flecha (en la base de la rampa del portal) . Esto hará que los PNJs crucen el umbral y te den el crédito|r
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
    .goto Ashenvale,94.27,35.13,20 >>Sal del |cRXP_PICK_Portal del Sueño Esmeralda|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .turnin 81771 >>Entrega la misión "Misión IV de Vallefresno: Inteligencia dracónica"
    .turnin 81772 >>Entrega la misión "Misión V de Vallefresno: Inteligencia sátira"
    .turnin 81773 >>Entrega la misión "Misión VI de Vallefresno: Inteligencia antárbol"
    .turnin 81774 >>Entrega la misión "Misión VII de Vallefresno: Recupera la máquina de los sueños"
    .turnin 81775 >>Entrega la misión "Misión VIII de Vallefresno: Recupera la profecía de Azshara"
    .turnin 81776 >>Entrega la misión "Misión IX de Vallefresno: Recupera un huevo de toque onírico"
    .turnin 81783 >>Entrega la misión "Misión XVI de Vallefresno: Rescata a Alyssian Clamavientos"
    .turnin 81784 >>Entrega la misión "Misión XVII de Vallefresno: Rescata a Doran Onirirrama"
    .turnin 81785 >>Entrega la misión "Misión XVIII de Vallefresno: Rescata a Maseara Lunaotoño"
    .turnin 81768 >>Entrega la misión "Misión I de Vallefresno: Derrota sátiros"
    .turnin 81769 >>Entrega la misión "Misión II de Vallefresno: Derrota antárboles"
    .turnin 81770 >>Entrega la misión "Misión III de Vallefresno: Derrota a los dragonantes"
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Hannalah|r
    .turnin -81780 >> Entrega la misión "Misión XIII de Vallefresno: Derrota a Larsera"
    .turnin -81781 >> Entrega la misión "Misión XIV de Vallefresno: Derrota a Zalius"
    .turnin -81782 >> Entrega la misión "Misión XV de Vallefresno: Derrota a la trituradora 9000"
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Has superado el nivel de todas las zonas de incursión y ya no podrás aceptar ninguna de las misiones habituales en ninguna de ellas|r
    >>Si buscas ganar reputación con los|r |cRXP_FRIENDLY_Celadores Esmeralda|r hay misiones infinitamente repetibles en Feralas donde puedes entregar 10 de cualquiera de estos: |T134186:0|t[|cRXP_LOOT_Lunarraíz|r], |T133594:0|t[|cRXP_LOOT_Piedras lunares grandes|r] o |T134312:0|t[|cRXP_LOOT_Escamas de dragón lunar|r]
    >>Estas misiones no otorgan experiencia ni oro y recompensan con 100 de reputación por entrega. Compra en la Casa de Subastas todos los materiales con mejor relación coste-beneficio que necesites y dirígete a Feralas para entregarlos
    .xp <53,1
step
    #optional
    +Has completado esta ruta de misiones de la Incursión de Pesadilla. Las misiones volverán a estar disponibles tras el reinicio diario. |cRXP_WARN_Selecciona una guía diferente de la lista para continuar|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Diarias de Incursiones Pesadilla
#name (50-53) Tierras del Interior Incursión de Pesadilla


step
    #ah
    >>Compra 10 |T134207:0|t[|cRXP_LOOT_Loto estelar|r], 10 |T134964:0|t[|cRXP_LOOT_Astrocaparazones|r] y 10 |T237436:0|t[|cRXP_LOOT_Menas de platastral|r] en la casa de subastas antes de dirigirte a Tierras del Interior
    >>|cRXP_WARN_Omite este paso si no estás cerca de una casa de subastas o si los precios no valen la pena. Estas tres misiones otorgan una cantidad combinada de 38.250xp y 300 de reputación|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >> Viaja a Tierras del Interior
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >> Dirígete al puente que lleva a Seradane
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Intendente Alandra|r
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
    .train 431705 >>|cRXP_WARN_Usa la runa|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] |cRXP_WARN_para aprender|r |T132886:0|t[Zona de vacío] << Priest
    .train 429308 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Hechizo: Armadura de arrabio|r] |cRXP_WARN_para aprender|r |T132221:0|t[Armadura de arrabio] << Mage
    .train 431747 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción|r] |cRXP_WARN_para aprender|r |T136228:0|t[Aflicción inestable] << Warlock
    .train 416066 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Quemar|r] |cRXP_WARN_para aprender|r |T135822:0|t[Quemar] << Shaman
    .train 432297 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Prontitud|r] |cRXP_WARN_para aprender|r |T236269:0|t[Acortar] << Rogue
    .train 431611 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonación|r] |cRXP_WARN_para aprender|r |T133713:0|t[TNT] << Hunter
    .train 431447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T304501:0|t[Cornada] << Druid
    .train 429261 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo|r] |cRXP_WARN_para aprender|r |T236262:0|t[Martillo de cólera mejorado] << Paladin
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
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Acepta la misión "Misión X de Tierras del Interior: Lotos estelares"
    .accept 81834 >> Acepta la misión "Misión XI de Tierras del Interior: Menas de platastral"
    .accept 81835 >> Acepta la misión "Misión XII de Tierras del Interior: Astrocaparazones"
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >> Acepta la misión "Misión X de Tierras del Interior: Lotos estelares"
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >> Acepta la misión "Misión XI de Tierras del Interior: Menas de platastral"
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >> Acepta la misión "Misión XII de Tierras del Interior: Astrocaparazones"
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >> Entrega la misión "Misión X de Tierras del Interior: Lotos estelares"
    .turnin -81834 >> Entrega la misión "Misión XI de Tierras del Interior: Menas de platastral"
    .turnin -81835 >> Entrega la misión "Misión XII de Tierras del Interior: Astrocaparazones"
    .target Field Captain Korlian
step
    >>Cruza el puente y |Tinterface/worldmap/chatbubble_64grey.blp:20|thabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >> Acepta la misión Lucha contra las incursiones de pesadilla
    .accept 81786 >> Acepta la misión "Misión I de Tierras del Interior: Derrota lechúcicos lunares"
    .accept 81787 >> Acepta la misión "Misión II de Tierras del Interior: Derrota tortugas gigantes"
    .accept 81788 >> Acepta la misión "Misión III de Tierras del Interior: Derrota a los dragonantes"
    .accept 81789 >> Acepta la misión "Misión IV de Tierras del Interior: Inteligencia dracónica"
    .accept 81817 >> Acepta la misión "Misión V de Tierras del Interior: Inteligencia de tortugas"
    .accept 81820 >> Acepta la misión "Misión VI de Tierras del Interior: Inteligencia de lechúcicos lunares"
    .accept 81826 >> Acepta la misión "Misión VII de Tierras del Interior: Recupera un huevo de dragón astroungido"
    .accept 81830 >> Acepta la misión "Misión VIII de Tierras del Interior: Recupera una reliquia elunar"
    .accept 81832 >> Acepta la misión "Misión IX de Tierras del Interior: Recupera una perla onírica"
    .accept 81850 >> Acepta la misión "Misión XVI de Tierras del Interior: Rescata a Elianar Bebesombras"
    .accept 81851 >> Acepta la misión "Misión XVII de Tierras del Interior: Rescata a Serlina Lumistela"
    .accept 81852 >> Acepta la misión "Misión XVIII de Tierras del Interior: Rescata a Veanna Nimbonírico"
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .accept 81837 >> Acepta la misión "Misión XIII de Tierras del Interior: Derrota a Florius"
    .accept 81838 >> Acepta la misión "Misión XIV de Tierras del Interior: Derrota a Fatídico"
    .accept 81839 >> Acepta la misión "Misión XV de Tierras del Interior: Derrota a Ghamoo-Raja"
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Intendente Alandra|r
    .vendor >> |cRXP_BUY_Cómprale hasta 5|r |T236885:0|t[Pociones de sanación sublime] |cRXP_BUY_si quieres.|r |cRXP_WARN_Estas solo pueden usarse dentro de las zonas de incursión.|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Haz clic en el portal junto a quien da las misiones|r para entrar en la fase del Sueño Esmeralda
step
    .goto 1425/0,-3788.100,468.800,20 >> Dirígete hacia Roca Oculta. |cRXP_WARN_Evita correr hacia los |cRXP_ENEMY_Fuegos fatuos inestables|r o explotarán causando alrededor de 700 de daño|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>Mata al |cRXP_ENEMY_Lechúcico lunar caído|r dentro de Roca Oculta
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>Entra en la cueva y despeja el camino subiendo por la rampa hacia la derecha. Despoja el cofre de allí para obtener la |T133247:0|t[|cRXP_PICK_Reliquia elunar|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1
    .maxlevel 53
step
    .solo
    >>Limpia hasta la sala grande en el fondo de la cueva y habla con la |cRXP_FRIENDLY_Celadora de sueños Valori|r para recibir su |T134939:0|t[|cRXP_LOOT_Informe de Inteligencia|r]
    >>|cRXP_WARN_Está en sigilo justo al lado del jefe|r |cRXP_ENEMY_Fatídico|r |cRXP_WARN_. Trata de obtener rápidamente la inteligencia y corre, no luches contra el jefe|r
    >>|cRXP_WARN_Es probable que mueras haciendo esta misión debido al alto daño de|r |cRXP_ENEMY_Fatídico|r |cRXP_WARN_pero el camino de vuelta es muy corto|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>Limpia hasta la sala grande en el fondo de la cueva y habla con la |cRXP_FRIENDLY_Celadora de sueños Valori|r para recibir su |T134939:0|t[|cRXP_LOOT_Informe de Inteligencia|r]
    >>|cRXP_WARN_Está en sigilo justo al lado del jefe|r |cRXP_ENEMY_Fatídico|r |cRXP_WARN_.
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>Mata al jefe |cRXP_ENEMY_Fatídico|r en la sala grande al fondo de la cueva.
    >>Ten cuidado, ya que lanza |T136096:0|t[Fuego lunar] |cRXP_WARN_y|r |T136006:0|t[Cólera] |cRXP_WARN_infligiendo mucho daño, y tiene un|r |T136183:0|t[Miedo]|cRXP_WARN_ en área|r
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >> Habla con |cRXP_FRIENDLY_Elianar Bebesombras|r tendido en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Puedes hablar con él por detrás de la valla de madera sin tener que entrar|r
    >>|cRXP_WARN_Si no está ahí, eso significa que alguien más lo está escoltando, omite este paso si no puedes encontrarlo|r
    .target Elianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>Mata |cRXP_ENEMY_Crías de cólera|r y |cRXP_ENEMY_Cazaestrellas vermintes|r en las ruinas
    >>|cRXP_WARN_Ten cuidado ya que los|r |cRXP_ENEMY_Cazaestrellas vermintes|r |cRXP_WARN_son élites y lanzan|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_que inflige más de 500 de daño. Omite esta misión si no puedes derrotarlos en solitario|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Ten cuidado, si mueres todos los PNJs de escolta que te están siguiendo volverán a donde los recogiste y tendrás que encontrarlos de nuevo|r
    >>|cRXP_WARN_El PNJ de escolta también dejará de seguirte 15 minutos después de recogerlo, ¡así que intenta darte prisa!|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>Habla con el |cRXP_FRIENDLY_Celador de sueños Laninar|r, que está en sigilo en la ubicación marcada, para recibir el |T134939:0|t[|cRXP_LOOT_Informe de inteligencia|r]
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>Despoja el |T236997:0|t[|cRXP_PICK_Huevo de dragón astroungido|r] de dentro de la tienda
    >>|cRXP_WARN_Intenta rodear el borde exterior de los muros para evitar atraer a los dragonantes élite de la zona. Puedes despojar el huevo por detrás de la tienda sin tener que enfrentarte a ningún élite|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>Mata a |cRXP_ENEMY_Florius|r, el dragón verde que vuela sobre las ruinas
    >>|cRXP_WARN_Cuidado, tiene un grupo de vida masivo, es inmune a los hechizos de naturaleza, tiene un|r|T132338:0|t[Rajar]|cRXP_WARN_,|r |T134307:0|t[Flagelo de cola] |cRXP_WARN_y|r |T135745:0|t[Summons] |cRXP_WARN_un|r |cRXP_ENEMY_Draco|r |cRXP_WARN_agregado que lanza un aliento frontal que causa un daño enorme|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >> Dirígete al oeste hacia las montañas hasta que tu pantalla empiece a brillar de verde. Serás teletransportado más cerca de la ubicación inicial
    >>|cRXP_WARN_No te preocupes, todos los PNJs de escolta terminarán siguiéndote|r
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
    >>Mata |cRXP_ENEMY_Malafauces oniriaguas|r mientras completas los otros objetivos
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>Sube a la cima de la Colina. Habla con |cRXP_FRIENDLY_Veanna Nimbonírico|r que está acostada en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Si no está allí, significa que alguien más la está escoltando, omite este paso si no puedes encontrarla|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >> Entra en el pequeño fuerte de madera. Habla con |cRXP_FRIENDLY_Serlina Lumistela|r que está tumbada en el suelo. Debería empezar a seguirte
    >>|cRXP_WARN_Si no está allí, significa que alguien más la está escoltando, omite este paso si no puedes encontrarla|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>Entra en las ruinas de Shaol'watha y despoja la |T237371:0|t[|cRXP_PICK_Perla onírica|r]. |cRXP_WARN_Ten cuidado de no llamar la atención del jefe|r |cRXP_ENEMY_Ghamoo-Raja|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>Mata a |cRXP_ENEMY_Ghamoo-Raja|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T136231:0|t[Perforar armadura] |cRXP_WARN_y |r|T132270:0|t[Dentellada triple] |cRXP_WARN_un ataque que te golpeará 3 veces seguidas.|r |T132270:0|t[Dentellada triple] |cRXP_WARN_también puede golpearte a distancia|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>Habla con la |cRXP_FRIENDLY_Celadora de sueños Sanathel|r, que está en sigilo en la ubicación marcada, para recibir el |T134939:0|t[|cRXP_LOOT_Informe de inteligencia|r]
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >> Dirígete al este hasta que tu pantalla empiece a brillar de verde. Serás teletransportado más cerca de la ubicación inicial
    >>|cRXP_WARN_No te preocupes, todos los PNJs de escolta terminarán siguiéndote|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>Asegúrate de haber recibido el crédito de todas las misiones de escolta. Todas deberían completarse para cuando llegues al gran portal onírico
    >>|cRXP_WARN_Si alguno de los tres PNJs ya no te sigue, vuelve y habla con ellos de nuevo|r
    >>|cRXP_WARN_Camina un par de veces de un lado a otro del punto marcado por tu flecha (en la base de la rampa del portal) . Esto hará que los PNJs crucen el umbral y te den el crédito|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >> Cruza de nuevo el portal para volver a la versión del mundo real de Tierras del Interior
    .maxlevel 53
step
    >>Habla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >> Entrega la misión Lucha contra las incursiones de pesadilla
    .turnin 81786 >> Entrega la misión "Misión I de Tierras del Interior: Derrota lechúcicos lunares"
    .turnin 81787 >> Entrega la misión "Misión II de Tierras del Interior: Derrota tortugas gigantes"
    .turnin 81788 >> Entrega la misión "Misión III de Tierras del Interior: Derrota a los dragonantes"
    .turnin 81789 >> Entrega la misión "Misión IV de Tierras del Interior: Inteligencia dracónica"
    .turnin 81817 >> Entrega la misión "Misión V de Tierras del Interior: Inteligencia de tortugas"
    .turnin 81820 >> Entrega la misión "Misión VI de Tierras del Interior: Inteligencia de lechúcicos lunares"
    .turnin 81826 >> Entrega la misión "Misión VII de Tierras del Interior: Recupera un huevo de dragón astroungido"
    .turnin 81830 >> Entrega la misión "Misión VIII de Tierras del Interior: Recupera una reliquia elunar"
    .turnin 81832 >> Entrega la misión "Misión IX de Tierras del Interior: Recupera una perla onírica"
    .turnin 81850 >> Entrega la misión "Misión XVI de Tierras del Interior: Rescata a Elianar Bebesombras"
    .turnin 81851 >> Entrega la misión "Misión XVII de Tierras del Interior: Rescata a Serlina Lumistela"
    .turnin 81852 >> Entrega la misión "Misión XVIII de Tierras del Interior: Rescata a Veanna Nimbonírico"
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán de campo Korlian|r
    .turnin -81837 >> Entrega la misión "Misión XIII de Tierras del Interior: Derrota a Florius"
    .turnin -81838 >> Entrega la misión "Misión XIV de Tierras del Interior: Derrota a Fatídico"
    .turnin -81839 >> Entrega la misión "Misión XV de Tierras del Interior: Derrota a Ghamoo-Raja"
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_Has superado el nivel de todas las zonas de incursión y ya no podrás aceptar ninguna de las misiones habituales en ninguna de ellas|r
    >>Si buscas ganar reputación con los|r |cRXP_FRIENDLY_Celadores Esmeralda|r hay misiones infinitamente repetibles en Feralas donde puedes entregar 10 de cualquiera de estos: |T134186:0|t[|cRXP_LOOT_Lunarraíz|r], |T133594:0|t[|cRXP_LOOT_Piedras lunares grandes|r] o |T134312:0|t[|cRXP_LOOT_Escamas de dragón lunar|r]
    >>Estas misiones no otorgan experiencia ni oro y recompensan con 100 de reputación por entrega. Compra en la Casa de Subastas todos los materiales con mejor relación coste-beneficio que necesites y dirígete a Feralas para entregarlos
    .xp <53,1
step
    #optional
    +Has completado esta ruta de misiones de la Incursión de Pesadilla. Las misiones volverán a estar disponibles tras el reinicio diario. |cRXP_WARN_Selecciona una guía diferente de la lista para continuar|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP Diarias de Incursiones Pesadilla
#name (50-53) Feralas Incursión de Pesadilla

step
    #ah
    >>Compra 10 |T134186:0|t[|cRXP_LOOT_Lunarraíz|r], |T133594:0|t[|cRXP_LOOT_Piedras lunares grandes|r] y |T134312:0|t[|cRXP_LOOT_Escamas de dragón lunar|r] en la casa de subastas antes de dirigirte a Tierras del Interior
    >>|cRXP_WARN_Omite este paso si no estás cerca de una casa de subastas o si los precios no valen la pena. Estas tres misiones otorgan una cantidad combinada de 38.250xp y 300 de reputación|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >> Viaja a Feralas
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >> Viaja a la zona del portal de la Pesadilla Esmeralda en el noroeste de Feralas
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Valdane|r
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
    .train 431705 >>|cRXP_WARN_Usa la runa|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] |cRXP_WARN_para aprender|r |T132886:0|t[Zona de vacío] << Priest
    .train 429308 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Hechizo: Armadura de arrabio|r] |cRXP_WARN_para aprender|r |T132221:0|t[Armadura de arrabio] << Mage
    .train 431747 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción|r] |cRXP_WARN_para aprender|r |T136228:0|t[Aflicción inestable] << Warlock
    .train 416066 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Quemar|r] |cRXP_WARN_para aprender|r |T135822:0|t[Quemar] << Shaman
    .train 432297 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Prontitud|r] |cRXP_WARN_para aprender|r |T236269:0|t[Acortar] << Rogue
    .train 431611 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonación|r] |cRXP_WARN_para aprender|r |T133713:0|t[TNT] << Hunter
    .train 431447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T304501:0|t[Cornada] << Druid
    .train 429261 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo|r] |cRXP_WARN_para aprender|r |T236262:0|t[Martillo de cólera mejorado] << Paladin
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .accept 81865 >> Acepta la misión "Misión X de Feralas: Lunarraíz"
    .accept 81866 >> Acepta la misión "Misión XI de Feralas: Piedra lunar grande"
    .accept 81867 >> Acepta la misión "Misión XII de Feralas: Escamas de dragón lunar superiores"
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .accept 81865 >> Acepta la misión "Misión X de Feralas: Lunarraíz"
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .accept 81866 >> Acepta la misión "Misión XI de Feralas: Piedra lunar grande"
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .accept 81867 >> Acepta la misión "Misión XII de Feralas: Escamas de dragón lunar superiores"
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .turnin -81865 >> Entrega la misión "Misión X de Feralas: Lunarraíz"
    .turnin -81866 >> Entrega la misión "Misión XI de Feralas: Piedra lunar grande"
    .turnin -81867 >> Entrega la misión "Misión XII de Feralas: Escamas de dragón lunar superiores"
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .accept 81855 >>Acepta la misión "Misión I de Feralas: Derrota a los hijos de Cenarius"
    .accept 81856 >>Acepta la misión "Misión II de Feralas: Derrota a las arpías"
    .accept 81857 >>Acepta la misión "Misión III de Feralas: Derrota a los dragonantes"
    .accept 81858 >>Acepta la misión "Misión IV de Feralas: Inteligencia dracónica"
    .accept 81859 >>Acepta la misión "Misión V de Feralas: Inteligencia Cenarion"
    .accept 81860 >>Acepta la misión "Misión VI de Feralas: Inteligencia de las arpías"
    .accept 81861 >>Acepta la misión "Misión VII de Feralas: Recupera un huevo de dragón de resplandor lunar"
    .accept 81863 >>Acepta la misión "Misión VIII de Feralas: Recupera las notas del Guardián"
    .accept 81864 >>Acepta la misión "Misión IX de Feralas: Consigue una diatriba de arpía"
    .accept 81872 >>Acepta la misión "Misión XVI de Feralas: Rescata a Mellias Cuidatierras"
    .accept 81873 >>Acepta la misión "Misión XVII de Feralas: Rescata a Nerene Cantarroyo"
    .accept 81874 >>Acepta la misión "Misión XVIII de Feralas: rescata a Jamnice Curárboles"
    .accept 82068 >>Acepta la misión Lucha contra las incursiones de pesadilla
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .accept 81868 >> Acepta la misión "Misión XIII de Feralas: Derrota a Tyrannikus"
    .accept 81870 >> Acepta la misión "Misión XIV de Feralas: Derrota a Alondrius"
    .accept 81871 >> Acepta la misión "Misión XV de Feralas: Derrota a Slirena"
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>Entra al |cRXP_PICK_Portal del Sueño Esmeralda|r
    >>|cRXP_WARN_Corre recto pasando a los |cRXP_ENEMY_Sátiros|r, |cRXP_ENEMY_Canes manáfago|r y |cRXP_ENEMY_Diablillos|r. Se reiniciarán cuando entres por el portal|r
    .aura 444762
    .maxlevel 53
step
    #season 2
    #completewith DreamWardenGorlas
    >>Mata |cRXP_ENEMY_Crías frenéticas|r y |cRXP_ENEMY_Rabiosos verminte|r
    >>|cRXP_WARN_Ten cuidado.|r Los |cRXP_ENEMY_Rabiosos verminte|r |cRXP_WARN_son élite. Pueden ser difíciles de matar en solitario|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>Habla con |cRXP_FRIENDLY_Mellias Cuidatierra|r. Debería empezar a seguirte
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_Ten cuidado, si mueres todos los PNJs de escolta que te están siguiendo volverán a donde los recogiste y tendrás que encontrarlos de nuevo|r
    >>|cRXP_WARN_El PNJ de escolta también dejará de seguirte 15 minutos después de recogerlo, ¡así que intenta darte prisa!|r
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.71,17.17
    >>Despoja un |cRXP_LOOT_Huevo de dragón de resplandor lunar|r del suelo
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>Mata al dragón jefe |cRXP_ENEMY_Tyrannikus|r
    >>|cRXP_WARN_Cuidado, tiene un grupo de vida masivo, es inmune a los hechizos de naturaleza, tiene un|r|T132338:0|t[Rajar]|cRXP_WARN_,|r |T134307:0|t[Flagelo de cola] |cRXP_WARN_y|r |T135745:0|t[Summons] |cRXP_WARN_un|r |cRXP_ENEMY_Draco|r |cRXP_WARN_agregado que lanza un aliento frontal que causa un daño enorme|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Celador de sueños Sheldryn|r
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_Ten cuidado con|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, un jefe élite que patrulla el camino. Intenta evitarlo|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_Busca a|r |cRXP_WARN_Alondrius|r|cRXP_WARN_, un jefe élite que patrulla el camino. Mátalo|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Celador de sueños Gorlas|r
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>Mata |cRXP_ENEMY_Hijas perdidas|r e |cRXP_ENEMY_Hijos vengativos|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>Despoja las |cRXP_LOOT_Notas del protector demente|r del suelo
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>Habla con |cRXP_FRIENDLY_Nerene Cantarroyo|r. Debería empezar a seguirte
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>Viaja a las Ruinas de Viento Azabache
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    >>Mata |cRXP_ENEMY_Malaplumas arroyonírico|r y |cRXP_ENEMY_Clamatormentas arroyonírico|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    .goto Feralas,38.94,13.13
    >>Despoja la |cRXP_LOOT_Diatriba de arpía|r del suelo
    >>|cRXP_WARN_Esto se despoja al instante.|r |cRXP_ENEMY_Slirena|r |cRXP_WARN_puede atacarte, ten una ruta de huida despejada|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>Mata a la jefa Arpía |cRXP_ENEMY_Slirena|r
    >>|cRXP_WARN_Ten cuidado, ya que lanza|r |T136015:0|t[Cadena de relámpagos], |T136018:0|t[Vientos envolventes] |cRXP_WARN_un ciclón de 10 segundos, y|r |T132104:0|t[Lluvia ácida] |cRXP_WARN_un círculo que inflige daño si no sales de él|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Celadora de sueños Anadelle|r
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>Habla con |cRXP_FRIENDLY_Jamnice Curárboles|r. Debería empezar a seguirte
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
    >>Mata |cRXP_ENEMY_Malaplumas arroyonírico|r y |cRXP_ENEMY_Clamatormentas arroyonírico|r
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
    >>Mata |cRXP_ENEMY_Hijas perdidas|r e |cRXP_ENEMY_Hijos vengativos|r
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
    >>Mata |cRXP_ENEMY_Crías frenéticas|r y |cRXP_ENEMY_Rabiosos verminte|r
    >>|cRXP_WARN_Ten cuidado.|r Los |cRXP_ENEMY_Rabiosos verminte|r |cRXP_WARN_son élite. Pueden ser difíciles de matar en solitario|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,51.00,11.69
    >>Viaja hacia el |cRXP_PICK_Portal del Sueño Esmeralda|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Mellias|r, |cRXP_FRIENDLY_Nerene|r o |cRXP_FRIENDLY_Jamnice|r ya no te siguen, regresa y habla con ellas de nuevo|r
    >>|cRXP_WARN_Camina un par de veces de un lado a otro del punto marcado por tu flecha (en la base de la rampa del portal) . Esto hará que los PNJs crucen el umbral y te den el crédito|r
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
    .goto Feralas,51.28,10.64,20 >>Sal del |cRXP_PICK_Portal del Sueño Esmeralda|r
    .aura -444762
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    .turnin 81855 >>Entrega la misión "Misión I de Feralas: Derrota a los hijos de Cenarius"
    .turnin 81856 >>Entrega la misión "Misión II de Feralas: Derrota a las arpías"
    .turnin 81857 >>Entrega la misión "Misión III de Feralas: Derrota a los dragonantes"
    .turnin 81858 >>Entrega la misión "Misión IV de Feralas: Inteligencia dracónica"
    .turnin 81859 >>Entrega la misión "Misión V de Feralas: Inteligencia Cenarion"
    .turnin 81860 >>Entrega la misión "Misión VI de Feralas: Inteligencia de las arpías"
    .turnin 81861 >>Entrega la misión "Misión VII de Feralas: Recupera un huevo de dragón de resplandor lunar"
    .turnin 81863 >>Entrega la misión "Misión VIII de Feralas: Recupera las notas del Guardián"
    .turnin 81864 >>Entrega la misión "Misión IX de Feralas: Consigue una diatriba de arpía"
    .turnin 81872 >>Entrega la misión "Misión XVI de Feralas: Rescata a Mellias Cuidatierras"
    .turnin 81873 >>Entrega la misión "Misión XVII de Feralas: Rescata a Nerene Cantarroyo"
    .turnin 81874 >>Entrega la misión "Misión XVIII de Feralas: rescata a Jamnice Curárboles"
    .turnin 82068 >>Entrega la misión Lucha contra las incursiones de pesadilla
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana de campo Arunnel|r
    >>|cRXP_WARN_Si estás en grupo, considera aceptar también las misiones de matar élites. Los jefes que necesitarás derrotar para estas misiones tienen enormes cantidades de salud y podrían suponer un desafío dependiendo de tu grupo|r
    .turnin -81868 >> Entrega la misión "Misión XIII de Feralas: Derrota a Tyrannikus"
    .turnin -81870 >> Entrega la misión "Misión XIV de Feralas: Derrota a Alondrius"
    .turnin -81871 >> Entrega la misión "Misión XV de Feralas: Derrota a Slirena"
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_Has superado el nivel de todas las zonas de incursión y ya no podrás aceptar ninguna de las misiones habituales en ninguna de ellas|r
    >>Si buscas ganar reputación con los|r |cRXP_FRIENDLY_Celadores Esmeralda|r hay misiones infinitamente repetibles en Feralas donde puedes entregar 10 de cualquiera de estos: |T134186:0|t[|cRXP_LOOT_Lunarraíz|r], |T133594:0|t[|cRXP_LOOT_Piedras lunares grandes|r] o |T134312:0|t[|cRXP_LOOT_Escamas de dragón lunar|r]
    >>Estas misiones no otorgan experiencia ni oro y recompensan con 100 de reputación por entrega. Compra en la Casa de Subastas todos los materiales con mejor relación coste-beneficio que necesites y dirígete a Feralas para entregarlos
    .xp <53,1
step
    #optional
    +Has completado esta ruta de misiones de la Incursión de Pesadilla. Las misiones volverán a estar disponibles tras el reinicio diario. |cRXP_WARN_Selecciona una guía diferente de la lista para continuar|r
]])
