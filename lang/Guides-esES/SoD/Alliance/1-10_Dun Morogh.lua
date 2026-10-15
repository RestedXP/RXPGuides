if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 1-7 Valle de Crestanevada
#next 6-11 Dun Morogh SoD
#displayname 1-7 Valle de Crestanevada
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
    .target Sten Stoutarm
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    .goto Dun Morogh,29.47,72.06
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >> |cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >> |cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] al vendedor|r << Priest
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] y |T132540:0|t[Botas] |cRXP_WARN_(no se pueden grabar en ellos)|r |cRXP_BUY_y cómprale el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Martirio|r] y el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] |r << Paladin
    >> |cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] a este vendedor|r << Warrior
    >> |cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra el |T133733:0|t[|cRXP_FRIENDLY_Grimorio de Armadura vil|r] a este vendedor|r << Warlock
    >> |cRXP_BUY_Vende la chatarra y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r]|r << Rogue
    >> |cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Llama viva|r] a este vendedor|r << Mage
    >> |cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] y |T132540:0|t[Botas] |cRXP_WARN_(no se puede grabar en ellas)|r |cRXP_BUY_y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] y el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Corazón del león|r] a este vendedor|r << Hunter
    >> |cRXP_BUY_Vende la basura y compra todas las siguientes runas:|r << Warlock
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
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    #sticky
    #optional
    #label Libram << Paladin
    .equip 18 >> Equipa el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] que puedes usar después de 30 segundos para aprender |T135891:0|t[Golpe de cruzado] << Paladin
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 228797 << Warlock --Grimoire of Fel Armor
    .train 402852 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] para aprender |T237570:0|t[Homúnculos] << Priest
    .train 407798 >> Usa el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Martirio|r] para aprender |T135961:0|t[Sello de martirio], |cRXP_WARN_úsalo como tu sello principal|r << Paladin
    .train 425447 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] << Warrior
    .train 401768 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Llama viva|r] << Mage
    .train 410111 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] << Hunter
    .train 409580 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Corazón del león|r] para aprender |T132185:0|t[Corazón del león] << Hunter
    .train 403619 >> Usa el |T133733:0|t[|cRXP_FRIENDLY_Grimorio de Armadura vil|r] para aprender |T136156:0|t[Armadura vil] << Warlock
    .engrave 7 >> Graba |T236174:0|t[Disparo mortal] en tus pantalones << Hunter
    .engrave 7 >> Graba |T135820:0|t[Llama viva] en tus pantalones << Mage
    .engrave 7 >> Graba |T237570:0|t[Homúnculos] en tus pantalones << Priest
    .engrave 7 >> Graba |T236317:0|t[Asalto frenético] en tus pantalones << Warrior
    >>|cRXP_WARN_CONSEJO:|r Puedes atraer a múltiples |cRXP_ENEMY_Lobos|r con |T135812:0|t[Bola de Fuego] y luego matarlos con AoE usando |T135820:0|t[Llama viva] << Mage
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Usa el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] para aprender |T135891:0|t[Golpe de cruzado]
step << Hunter
    #optional
    #sticky
    .aura 409583 >> Recuerda activar tu |T132185:0|t[Corazón del león]
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Asegúrate de activar tu|r |T136156:0|t[Armadura vil]
step << Paladin
    #optional
    #completewith next
    .aura 407798 >> Recuerda usar |T135961:0|t[Sello de martirio] como tu sello
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
    >>Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
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
    .xp 2 >> Mata enemigos hasta subir al nivel 2
    .mob Ragged Young Wolf
step << Warrior/Mage/Warlock/Hunter
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >>|cRXP_BUY_Vende la basura y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] << Warrior
    .vendor >>|cRXP_BUY_Vende la basura y compra todas las runas clave de Daño en Área (AoE)|r << Mage
    .vendor >>|cRXP_BUY_Vende la basura y compra todas las siguientes runas:|r << Hunter/Warlock
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
    >> Lanza de hielo solo es útil para poder entregar una misión después << Mage
    >>|cRXP_WARN_Obtendrás el resto de tus runas más tarde|r
    .target Rune Broker
    .skipgossip
step << Warrior/Mage/Hunter
    .train 403470 >> Usa la |T134419:0|t[Runa de Ataque de la victoria|cRXP_FRIENDLY_] para aprender |T132342:0|t[Ataque de la victoria]|r, la grabarás pronto` << Warrior
    .train 415936 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Bomba viva|r] para aprender |T236220:0|t[Bomba viva] << Mage
    .train 401759 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] para aprender |T236207:0|t[Incendio] << Mage
    .train 440858 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Orbe congelado|r] para aprender |T135851:0|t[Orbe congelado] << Mage
    .train 401760 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Lanza de hielo|r] para aprender |T135844:0|t[Lanza de hielo] << Mage
    .train 410121 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de la quimera|r] para aprender |T236176:0|t[Disparo de quimera] << Hunter
    .train 410122 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo solitario|r] para aprender |T132266:0|t[Lobo solitario] << Hunter
    .train 416086 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Combate cuerpo a cuerpo|r] para aprender |T132394:0|t[Especialista cuerpo a cuerpo] << Hunter
    .train 440563 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para aprender |T132171:0|t[Doble tenebroso] << Hunter
    .train 415423 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Aspecto de la víbora para aprender |T132160:0|t[Aspecto de la víbora]|r] << Hunter
    .train 416009 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] para aprender |T136150:0|t[Tácticas demoníacas] << Warlock
    .train 425476 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del pacto|r] para aprender |T237562:0|t[Pacto demoníaco] << Warlock
    .train 416015 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incineración|r] para aprender |T135789:0|t[Incinerar] << Warlock
    .train 403919 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] para aprender |T236298:0|t[Poseer] << Warlock
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres para después|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Warrior !Rogue
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura << Hunter
    >>|cRXP_BUY_Compra 600|r |T132384:0|t[Perdigones ligeros] |cRXP_BUY_a este vendedor|r << Hunter
    .vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    >>|cRXP_WARN_Asegúrate de equipar los guantes que obtengas de esta misión para que puedas grabar una runa en ellos|r
    .turnin 179 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3106 >> Acepta la misión Runa simple << Dwarf Warrior
    .accept 3107 >> Acepta la misión Runa consagrada << Dwarf Paladin
    .accept 3108 >> Acepta la misión Runa con grabados << Dwarf Hunter
    .accept 3109 >> Acepta la misión Runa codificada << Dwarf Rogue
    .accept 3110 >> Acepta la misión Runa sacralizada << Dwarf Priest
    .accept 3112 >> Acepta la misión Memorándum simple << Gnome Warrior
    .accept 3113 >> Acepta la misión Memorándum encriptado << Gnome Rogue
    .accept 3114 >> Acepta la misión Memorándum glífico << Gnome Mage
    .accept 3115 >> Acepta la misión Memorándum corrupto << Gnome Warlock
    .target Sten Stoutarm
step << Priest/Paladin/Rogue
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >>|cRXP_BUY_Compra todas las siguientes runas:|r
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
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Priest/Paladin/Rogue
    .train 400101 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las sombras|r] para aprender |T132303:0|t[Paso de las Sombras] << Rogue
    .train 432301 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r] para aprender |T236285:0|t[Ventaja injusta] << Rogue
    .train 400105 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] para entrenar |T132323:0|t[Golpesombra] << Rogue
    .train 424984 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] para aprender |T132375:0|t[Sablazo] << Rogue
    .train 415922 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Espadachín|r] para aprender |T134538:0|t[Trabuco] << Rogue
    .train 431663 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] para aprender |T136181:0|t[Púa mental] << Priest
    .train 425216 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] para aprender |T237514:0|t[Plaga del Vacío] << Priest
    .train 402862 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] para aprender |T237545:0|t[Penitencia] << Priest
    .train 402849 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] para aprender |T136149:0|t[Palabra de las Sombras: muerte] << Priest
    .train 410014 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tormenta divina|r] para aprender |T236250:0|t[Tormenta divina] << Paladin
    .train 410008 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Vengador|r] para aprender |T135874:0|t[Escudo de vengador] << Paladin
    .train 410013 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo del honrado|r] para aprender |T236253:0|t[Martillo del honrado] << Paladin
    .train 440788 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Escudo de rectitud|r] para aprender |T236265:0|t[Escudo de rectitud] << Paladin
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
    .engrave 15 >> Mantente atento a cualquier capa que caiga. Una vez que tengas una, graba el |T135851:0|t[Orbe congelado] en ella
    >>|cRXP_WARN_Este hechizo está extremadamente roto|r
step << Mage/Hunter/Priest
    .equip 10 >> Equipa los |T132939:0|t[Guantes de cuidador de lobos] << Hunter
    .equip 10 >> Equipa los |T132940:0|t[Guantes de cuidador de conejos] << Mage
    .use 6171 << Hunter --Wolf Handler Gloves
    .use 719 << Mage --Rabbit Handler Gloves
    .engrave 10 >> Graba |T236176:0|t[Disparo de quimera] en tus guantes << Hunter
    .engrave 7 >> Graba |T135820:0|t[Llama viva] en tus pantalones << Mage
    .engrave 10 >> Graba |T236220:0|t[Bomba viva] en tus guantes << Mage
    .engrave 5 >> Graba |T236207:0|t[Incendio] en tu pecho << Mage
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
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Mantente atento a cualquier|r Pechera/Cinturón/Capa|cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 5 >> Graba la |T132266:0|t[Lobo solitario] en tu |T132724:0|t[Pechera]
    .engrave 6 >> Graba |T132394:0|t[Especialista cuerpo a cuerpo] en tu |T132513:0|t[Cinturón]
    .engrave 15 >> Graba |T132171:0|t[Doble tenebroso] en tu |T133771:0|t[Capa]
step << Paladin
    #completewith next
    +Mata más |cRXP_ENEMY_Lobos|r o |cRXP_ENEMY_Troggs|r hasta que acumules 88 cobres en chatarra para vender. |cRXP_WARN_Lo necesitarás para comprar armas pronto|r
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
    .goto 1426,28.642,68.375,12 >> Entra en Yunquemar << Rogue/Warlock/Paladin
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar << !Rogue !Warlock !Paladin
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    .turnin 3107 >> Entrega la misión Runa consagrada << Dwarf
    .accept 77657 >> Acepta la misión Reliquias de la Luz << Dwarf
    .turnin 77657 >> Entrega la misión Reliquias de la Luz << Dwarf
    .target Bromos Grummner
step << Paladin
    .goto Dun Morogh,28.79,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grundel Harkin|r
    >>|cRXP_WARN_Subir de nivel con escudo y arma de una mano al principio es mucho más rápido debido al poder de las runas de escudo|r
    >> |cRXP_BUY_Vende la chatarra al vendedor y compra el|r |T134955:0|t[Escudo pequeño]
    .collect 17184,1 --Small Shield (1)
    .target Grundel Harkin
step << Paladin
    .goto Dun Morogh,28.66,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rybrad Riberahiel|r
    >>|cRXP_WARN_Subir de nivel con escudo y arma de una mano al principio es mucho más rápido debido al poder de las runas de escudo|r
    >> |cRXP_BUY_Vende la chatarra al vendedor y compra el|r |T133485:0|t[Garrote]
    .collect 2130,1 --Club (1)
    .target Rybrad Coldbank
step << Paladin
    #sticky
    >>|cRXP_WARN_Mantente atento a cualquier|r |T132624:0|t[Pechera]|cRXP_WARN_,|r |T132602:0|t[Brazales] |cRXP_WARN_o|r |T133762:0|t[Capa] |cRXP_WARN_que puedas equipar|r
    .engrave 5 >> Graba |T236250:0|t[Tormenta divina] en tu pechera
    .engrave 9 >> Graba |T236253:0|t[Martillo del honrado] en tus brazales
    .engrave 15 >> Graba |T236265:0|t[Escudo de rectitud] en tu capa
step << Paladin
    #optional
    #completewith next
    .equip 16,2130 >> Equipa el |T133485:0|t[Garrote]
    .equip 17,17184 >> Equipa el |T134955:0|t[Escudo pequeño]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    >>|cRXP_WARN_No necesitas aprender hechizos aún, no vale la pena usarlos en lugar de las runas|r
    .accept 1599 >> Acepta la misión Novato
    .turnin 3115 >> Entrega la misión Memorándum corrupto << Gnome
    .accept 77666 >> Acepta la misión Poder robado << Gnome
    .turnin 77666 >> Entrega la misión Poder robado << Gnome
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r en el interior
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .accept 77655 >> Acepta la misión La runa perdida << Dwarf
    .turnin 77655 >> Entrega la misión La runa perdida << Dwarf
    .accept 77656 >> Acepta la misión La runa perdida << Gnome
    .turnin 77656 >> Entrega la misión La runa perdida << Gnome
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r dentro
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .accept 77658 >> Acepta la misión Robo por triplicado << Dwarf
    .turn in 77658 >> Entrega la misión Robo por triplicado << Dwarf
    .accept 77659 >> Acepta la misión Robo por triplicado << Gnome
    .turnin 77659 >> Entrega la misión Robo por triplicado << Gnome
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Solm Hargrin
step << Priest/Rogue
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    >>Si no tienes suficiente dinero para ambos objetos |cRXP_WARN_(60 cobres)|r, mata más |cRXP_ENEMY_Lobos|r << Priest
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>Vende la chatarra al vendedor y compra el |T132495:0|t[Cinturón de paño fino] y |T132543:0|t[Zapatos de paño fino], los necesitarás para grabar runas en ellos pronto << Priest
    >>Vende la chatarra al vendedor y compra el |T132495:0|t[Cinturón de paño fino] y |T132602:0|t[Brazales de paño fino], los necesitarás para grabar runas en ellos pronto << Rogue
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 << Priest --Thin Cloth Shoes (1)
    .collect 3600,1 << Rogue --Thin Cloth Bracers (1)
    .target Durnan Furcutter
step << Rogue
    .equip 6 >> Equipa el |T132495:0|t[Cinturón de paño fino]
    .equip 9 >> Equipa los |T132602:0|t[Brazales de paño fino]
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado]
    .engrave 6 >> Graba |T132303:0|t[Paso de las Sombras] en tu cinturón
    .engrave 9 >> Graba |T236285:0|t[Ventaja injusta] en tus brazales
    .engrave 10 >> Graba |T132375:0|t[Sablazo] en tus guantes
    .use 3599 --Thin Cloth Belt
    .use 3600 --Thin Cloth Bracers
    .use 2125 --Cracked Leather Gloves
step << Rogue
    #optional
    #sticky
    .engrave 15 >> Estate atento a cualquier capa que caiga. Una vez que obtengas una, graba |T134538:0|t[Trabuco] en ella
    >>|cRXP_WARN_Esta es una facultad con gran daño en área (cleave)|r
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r dentro
    >>|cRXP_WARN_Aprende|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_ya que lo necesitarás para una misión de clase pronto|r << Dwarf
    .turnin 3110 >> Entrega la misión Runa sacralizada << Dwarf
    .accept 77661 >> Acepta la misión Meditaciones sobre la Luz << Dwarf
    .turnin 77661 >> Entrega la misión Meditaciones sobre la Luz << Dwarf
    .target Branstock Khalder
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Poseer] << Warlock
    .train 403919,3 << Warlock
step << Priest/Paladin
    .engrave 6 >> Graba |T136181:0|t[Púa mental] en tu cinturón << Priest
    .engrave 8 >> Graba |T237514:0|t[Plaga del Vacío] en tus botas << Priest
    .engrave 10 >> Graba |T136149:0|t[Palabra de las Sombras: muerte] en tus guantes << Priest
    .engrave 7 >> Graba |T135874:0|t[Escudo de vengador] en tus pantalones << Paladin
    .engrave 10 >> Graba |T135891:0|t[Golpe de cruzado] en tus guantes << Paladin
step << Warlock
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>|cRXP_BUY_Vende la chatarra y compra los|r |T132602:0|t[Brazales de paño fino] |cRXP_BUY_y|r |T132543:0|t[Zapatos de paño fino]|cRXP_BUY_, los necesitarás para grabar una runa pronto|r << Warlock
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .collect 2117,1 << Warlock --Thin Cloth Shoes (1)
    .target Durnan Furcutter
step << Warrior/Warlock
    .equip 10 >> Equipa los |T132938:0|t[Guantes de anillas deslustradas] << Warrior
    .engrave 10 >> Graba |T132342:0|t[Ataque de la victoria] en tus guantes << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Equipa los |T132602:0|t[Brazales de paño fino] << Warlock
    .equip 10 >> Equipa los |T132543:0|t[Zapatos de paño fino] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .use 2117 << Warlock --Thin Cloth Shoes
    .engrave 5 >> Graba |T136150:0|t[Tácticas demoníacas] en tu pechera << Warlock
    .engrave 7 >> Graba |T237562:0|t[Pacto demoníaco] en tus pantalones << Warlock
    .engrave 9 >> Graba |T135789:0|t[Incinerar] en tus brazales << Warlock
    .engrave 8 >> Graba |T236302:0|t[Llama de las Sombras] en tus botas << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
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
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
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
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
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
    .xp 3+1130 >> Mata enemigos hasta alcanzar 1130+/1400xp
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
    .xp 3+995 >> Mata enemigos hasta alcanzar 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 182 >> Acepta la misión La cueva de los trols
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
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
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> Entra en la cueva de trols
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
    >>Mata |cRXP_ENEMY_Novicios Peloescarcha|r dentro de la cueva de trols. Despójalos para obtener sus |cRXP_LOOT_Talismanes de plumas|r
    >>|cRXP_WARN_Estás a contrarreloj. NO te vayas AFK ni te desconectes|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Hunter/Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_Asegúrate de tener al menos una moneda de plata tras vender. Lo necesitarás para aprender|r |T132204:0|t[Picadura de serpiente] << Hunter
    .hs >> Usa tu Piedra de hogar para ir a Yunquemar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    #label EnterAnvilmar
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Tienes 5 minutos para volver a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,20 >> Entra en Yunquemar
step << Hunter
    #optional
    #completewith HTraining
    #requires EnterAnvilmar
    .goto Dun Morogh,28.77,66.37,0
    .vendor >>|cRXP_BUY_Considera comprar las piezas de equipo que te falten a |cRXP_FRIENDLY_Durnan Cortapieles|r dentro de Yunquemar para grabar |T134419:0|t|cRXP_WARN_[Runas]|r en ellas|r
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r en el interior
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 2
    #label HTraining
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entrega la misión Runa con grabados << Dwarf
    .accept 77660 >> Acepta la misión Un paseo por las cuevas << Dwarf
    .turnin 77660 >> Entrega la misión Un paseo por las cuevas << Dwarf
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    >>|cRXP_WARN_Si no has encontrado ninguna|r |T132624:0|t[Pechera]|cRXP_WARN_ o|r |T132602:0|t[Brazales] |cRXP_WARN_todavía, cómpralos al vendedor dentro de Yunquemar en lugar de gastar dinero en aprender hechizos. Las Runas son más fuertes que los hechizos que puedes comprar|r
    .trainer >> Aprende tus hechizos de clase
    .target Bromos Grummner
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .turnin 1599 >> Entrega la misión Novato
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
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
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
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
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_Tienes 5 minutos para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r y regresar a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    >>|cRXP_WARN_Si fallas la misión, no te preocupes, porque puedes obtenerla de nuevo más tarde|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Entra en la Cueva Peloescarcha
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Viaja hacia |cRXP_ENEMY_Grik'nir el Frío|r en el interior
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mata a |cRXP_ENEMY_Grik'nir el Frío|r dentro. Despójalo para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r
    >>|cRXP_WARN_Intenta asegurarte de que tendrás 2 platas después de vender. La necesitarás para aprender hechizos pronto|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Sal de la Cueva Peloescarcha
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    >>|cRXP_WARN_Si fallaste la misión, omite este paso|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandona la misión Entrega una infusión de albaza hirviendo. La volverás a aceptar de nuevo
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132952:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132952:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Golpesombra]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r y |cRXP_FRIENDLY_Grelin Barbablanca|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .accept 77667 >> Acepta la misión Investigación sobre hechizos << Gnome
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Marryk Nurribit
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .trainer >>Aprende tus hechizos de clase
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    >>Si tienes 2 platas, aprende |T132155:0|t[Desgarrar] también
    .train 100,1 << Warrior --Charge
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .accept 77667 >> Acepta la misión Investigación sobre hechizos << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Entrega la misión La runa perdida << Dwarf
    .turnin 77656 >> Entrega la misión La runa perdida << Gnome
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << Mage
    #completewith next
    .hs >> Usa tu Piedra de hogar
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Entrega la misión Reliquias de la Luz
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Entrega la misión Un paseo por las cuevas
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Abandona la misión Reliquias de la Luz ya que ya tienes un par de |T132938:0|t[Guantes] equipados << Paladin
    .abandon 77660 >> Abandona la misión Un paseo por las cuevas ya que ya tienes un par de |T132952:0|t[Guantes] equipados << Hunter
step
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    .target Rune Broker
    .skipgossip
step
    #label Observations
    >>Habla con el |cRXP_FRIENDLY_Montaraz Thalos|r y |cRXP_FRIENDLY_Manit Piñomuelle|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
    .accept 420 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acepta la misión Suministros para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Atraviesa el Desfiladero de Crestanevada
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh SoD
#displayname 7-12 Dun Morogh
#next 12-13 Dun Morogh SoD
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r mientras te diriges a Kharanos. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que obtienes para la misión Los suministros del reactor a vapor y luego para subir de nivel tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_más adelante|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .accept 287 >> Acepta la misión Poblado Peloescarcha--2.5x xp, should be lvl7 here
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Gimrizz Shadowcog
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160,1 >> Entrega la misión Suministros para Tannok << Warrior/Rogue
    .turnin 2160,2 >> Entrega la misión Suministros para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Elimina el |T135426:0|t[Cuchillo arrojadizo pequeño] de tus bolsas, ya que ya no los necesitas
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .train 921 >> Asegúrate de aprender |T133644:0|t|cRXP_PICK_Robar|r, lo necesitarás para una runa más tarde
    .target Hogral Bakkan
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .accept 5625 >> Acepta la misión Las prendas de la Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lanza |T135929:0|t[Sanación inferior] (Rango 2) y luego |T135987:0|t[Palabra de poder: entereza] a |cRXP_FRIENDLY_Montaraz Dolf|r fuera
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .turnin 5625 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> |cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como te puedas permitir|r << Mage
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tabernero Belm|r
    >>Cómprale una |T132800:0|t[|cRXP_LOOT_Malta rapsódica|r]
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tognus Fuegosílex|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Sube al tejado de la Posada de Kharanos, luego salta sobre el enorme barril. Sigue la flecha|r
    >>Abre el |cRXP_PICK_Arcón oxidado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .accept 313 >> Acepta la misión El Cubil Pardo
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Mata |cRXP_ENEMY_Jabalíes|r. Despójalos para obtener |T134026:0|t[Carne de cerdo de Dun Morogh]
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
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
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
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como puedas permitirte|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    .vendor 6328 >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
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
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    >>|cRXP_WARN_Debes tener 2 "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /pray junto a un Altar de Luz en la Catedral de Ventormenta, en Loch Modan o en la Sala Mística en Forjaz|r
    >>|cRXP_WARN_El "buff" |T136057:0|t|cRXP_PICK_Meditaciones sobre Elune|r tiene que venir de otro jugador sacerdote, usando el gesto /pray (rezar) sobre ti mientras estés arrodillado con /kneel; si ves a otro sacerdote con otro "buff" de meditación, pídeselo|r
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
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r
    .train 401768 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a este vendedor|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >> Mata enemigos hasta subir al nivel 6
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .train 1130 >> Aprende |T132212:0|t[Marca del cazador]
    >>|cRXP_WARN_Si no tienes suficiente dinero, mata criaturas alrededor de Kharanos. Necesitarás este hechizo para una runa más adelante|r
    .target Grif Wildheart

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Viaja a El Cubil Pardo
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
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Viaja hacia |cRXP_FRIENDLY_Hegnar Estruendo|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    >>|cRXP_BUY_Compra un|r |T135611:0|t[Trabuco ornamentado]|cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .target Hegnar Rumbleshot
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>Intenta terminar de despojar |T133972:0|t[|cRXP_LOOT_Costillas de jabalí del risco|r] de los jabalíes fuera de la cueva. |cRXP_WARN_Omite este paso si no hay ninguno allí|r
    >>|cRXP_WARN_Asegúrate de haber despojado una |T134026:0|t[Carne de cerdo de Dun Morogh]. |cRXP_WARN_La necesitarás para obtener una runa ahora|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usa |T134026:0|t[Carne de cerdo de Dun Morogh] cerca del cadáver dentro de la cueva para invocar a |cRXP_ENEMY_Jorul|r
    >>Mata a |cRXP_ENEMY_Jorul|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Viaja a Las Birras
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
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
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    >>|cRXP_WARN_Debes tener el "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
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
    >>|T133644:0|t[Roba] a los |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T134269:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Sube corriendo por el lateral de la entrada de la cueva. Salta abajo hacia el Poblado Peloescarcha
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
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r dentro de la cueva
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
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Trols Peloescarcha|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Cae hacia la pequeña sala sin salida de la cueva|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >> Muere y resucita en Kharanos
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
    .target Senir Whitebeard
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .accept 6064 >>Acepta la misión Domesticar la bestia << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob Large Crag Boar
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .accept 6084 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob Snow Leopard
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .accept 6085 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob Ice Claw Bear
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .accept 6086 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .accept 2218 >> Acepta la misión El camino hacia la salvación
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Mata enemigos hasta tener 10 platas 30 cobres en objetos para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaja a Forjaz
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r o |cRXP_FRIENDLY_Buliwyf Petramano|r
    .trainer >> Si estás en un grupo o tienes a alguien que te ayude a matar |cRXP_ENEMY_Vagash|r ahora, aprende Mazas de 2 manos de |cRXP_FRIENDLY_Buliwyf Petramano|r, si no aprende Armas arrojadizas de |cRXP_FRIENDLY_Bixi Tambaleapié|r. Si no estás seguro de cuál aprender, solo aprende Armas arrojadizas
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
