if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Villanorte SoD
#displayname 1-6 Villanorte
#version 1
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-12 Bosque de Elwynn SoD
#season 2


step << !Human
    #completewith next
    +Has seleccionado una guía destinada a Humanos. Deberías elegir la misma zona inicial en la que comienzas
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
    .target Deputy Willem
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>Mata |cRXP_ENEMY_Lobos jóvenes|r hasta alcanzar el nivel 2 (4 enemigos)
    >>Asegúrate de despojarlos, necesitarás 15 cobre para runas y entrenamiento de habilidades << Rogue/Warrior
    >>Asegúrate de despojarlos, necesitarás 30 cobres para guantes y runas << Mage
    >>Asegúrate de despojarlos, necesitarás 40 cobres para brazaletes, entrenamiento de habilidades y runas << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_Si no tienes 30 cobres en basura vendible, mata más lobos|r << Mage
    >>|cRXP_WARN_Si no tienes 40 cobres en basura vendible, mata más lobos|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dermot Johns|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>Vende la basura y compra los |T132952:0|t[Guantes de paño fino], los necesitarás para grabar una runa pronto << Mage
    >>Vende la chatarra y compra los |T132602:0|t[Brazales de paño fino], los necesitarás para grabar una runa pronto << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >>|cRXP_BUY_Vende la basura y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] << Warrior
    .vendor >>|cRXP_BUY_Vende la chatarra y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r]|r << Rogue
    .vendor >>|cRXP_BUY_Compra todas las runas AoE clave|r << Mage
    .vendor >>|cRXP_BUY_Compra todas las siguientes runas:|r << Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] para aprender |T132323:0|t[Golpesombra], la grabarás pronto << Rogue
    .train 403470 >> Usa la |T134419:0|t[Runa de Ataque de la victoria|cRXP_FRIENDLY_] para aprender |T132342:0|t[Ataque de la victoria]|r, la grabarás pronto` << Warrior
    .train 401768 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Llama viva|r] para aprender |T135820:0|t[Llama viva] << Mage
    .train 415936 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Bomba viva|r] para aprender |T236220:0|t[Bomba viva] << Mage
    .train 401759 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] para aprender |T236207:0|t[Incendio] << Mage
    .train 440858 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Orbe congelado|r] para aprender |T135851:0|t[Orbe congelado] << Mage
    .train 416009 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] para aprender |T136150:0|t[Tácticas demoníacas] << Warlock
    .train 425476 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del pacto|r] para aprender |T237562:0|t[Pacto demoníaco] << Warlock
    .train 211477 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incineración|r] para aprender |T135789:0|t[Incinerar] << Warlock
    .train 403919 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] para aprender |T236298:0|t[Poseer] << Warlock
    .train 403619 >> Usa el |T133733:0|t[Grimorio de Armadura vil] para aprender |T136156:0|t[Armadura vil] |cRXP_WARN_úsalo como tu hechizo de armadura principal|r << Warlock
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
step << Warlock
    #optional
    #sticky
    .aura 403619 >> |cRXP_WARN_Asegúrate de activar tu|r |T136156:0|t[Armadura vil]
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .accept 77616 >> Acepta la misión La runa perdida
    .turnin 77616 >> Entrega la misión La runa perdida
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Llane Beshere
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >> Equipa los |T132952:0|t[Guantes de paño fino] << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >> Graba |T135820:0|t[Llama viva] en tus pantalones << Mage
    .engrave 10 >> Graba |T236220:0|t[Bomba viva] en tus guantes << Mage
    .engrave 5 >> Graba |T236207:0|t[Incendio] en tu pecho << Mage
    .equip 10 >> Equipa los |T132938:0|t[Guantes de anillas deslustradas] << Warrior
    .engrave 10 >> Graba |T132342:0|t[Ataque de la victoria] en tus guantes << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado] << Rogue
    .engrave 10 >> Graba |T132323:0|t[Golpesombra] en tus guantes << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >> Equipa los |T132602:0|t[Brazales de paño fino] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >> Graba |T136150:0|t[Tácticas demoníacas] en tu pechera << Warlock
    .engrave 7 >> Graba |T237562:0|t[Pacto demoníaco] en tus pantalones << Warlock
    .engrave 9 >> Graba |T135789:0|t[Incinerar] en tus brazales << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 783 >> Entrega la misión Una amenaza interna
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
    .accept 18 >> Acepta la misión Hermandad de ladrones << Warlock
    .target Deputy Willem
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Acepta la misión El libro robado
    .accept 77621 >> Acepta la misión Poder robado << Human
    .turnin 77621 >> Entrega la misión Poder robado << Human
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] |cRXP_WARN_con|r |T236298:0|t[Poseer]
    .train 403919,3
step << Warlock
    #completewith next
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Entra en la tienda del campamento Defias|r
    >>Abre los |cRXP_PICK_Libros robados|r. Despójalos para obtener los |cRXP_LOOT_Poderes del Vacío|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >> Usa tu Piedra de hogar para ir al Valle de Villanorte
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Entrega la misión El libro robado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> |cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18,1 >> Entrega la misión Hermandad de ladrones
    .target Deputy Willem
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >> Equipa la |T135641:0|t[Daga de milicia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] |cRXP_BUY_y compra la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] al vendedor|r << Priest
    >>|cRXP_BUY_Vende tu|r |T135005:0|t[Camisa] y |T132540:0|t[Botas] |cRXP_WARN_(no se pueden grabar en ellos)|r |cRXP_BUY_y cómprale el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Martirio|r] y el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] |r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    >>Conseguirás el resto de tus runas muy pronto
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    #label Libram
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .train 402852 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] para aprender |T237570:0|t[Homúnculos] << Priest
    .train 407798 >> Usa el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Martirio|r] para aprender |T135961:0|t[Sello de martirio], |cRXP_WARN_úsalo como tu sello principal|r << Paladin
    .equip 18 >> Equipa el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] que puedes usar después de 30 segundos para aprender |T135891:0|t[Golpe de cruzado] << Paladin
    .engrave 7 >> Graba |T237570:0|t[Homúnculos] en tus pantalones << Priest
step << Paladin
    #optional
    #completewith Vermin
    .aura 407798 >> Recuerda usar |T135961:0|t[Sello de martirio] como tu sello
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >> Usa el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre sentencia|r] para aprender |T135891:0|t[Golpe de cruzado]
step << Paladin
    #optional
    #requires LibramLearn
    #completewith PalaQ
    .engrave 10 >> |cRXP_WARN_Mantente atento a cualquier|r |T132952:0|t[Guante] |cRXP_WARN_que caiga.|r |cRXP_WARN_Grábalos con|r |T135891:0|t[Golpe de cruzado]
    >>Si no encuentras ninguno, finalmente lo obtendrás de una misión de clase
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
    .accept 33 >> Acepta la misión Lobos en la frontera
    .target Eagan Peltskinner
step << Rogue
    #completewith next
    >>Mata |cRXP_ENEMY_Lobos|r y |cRXP_ENEMY_Alimañas kóbold|r de camino hacia el entrenador
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob Young Wolf
	.mob Timber Wolf
    .mob Kobold Vermin
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .accept 77618 >> Acepta la misión Robo por triplicado
    .turnin 77618 >> Entrega la misión Robo por triplicado
    .train 1784 >> Aprende |T132320:0|t[Sigilo], lo necesitarás para usar |T135131:0|t[Golpesombra]
    .target Jorik Kerridan
step << Mage
    #optional
    #sticky
    .engrave 15 >> Mantente atento a cualquier capa que caiga. Una vez que tengas una, graba el |T135851:0|t[Orbe congelado] en ella
    >>|cRXP_WARN_Este hechizo está extremadamente roto|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Una vez que tengas 50 cobres en basura para vender:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Paladin
    #label Vermin
    #completewith next
    >>Mata |cRXP_ENEMY_Alimaña kóbold|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r y |cRXP_ENEMY_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Mata enemigos hasta alcanzar 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 33,2 >> Entrega la misión Lobos en la frontera << Warrior/Paladin/Rogue
    .turnin 33,1 >> Entrega la misión Lobos en la frontera << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Paladin
    #optional
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    +|cRXP_WARN_Mata repetidamente |cRXP_ENEMY_Alimañas kóbold|r o |cRXP_ENEMY_Lobos|r y vende chatarra hasta que tengas al menos 93 cobres|r
    .money >0.0093
    .mob Kobold Vermin
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >> Mata enemigos hasta alcanzar 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_ Rothgar|r
    >>|cRXP_WARN_Subir de nivel con escudo y arma de una mano al principio es mucho más rápido debido al poder de las runas de escudo|r
    >>|cRXP_BUY_Vende la chatarra al vendedor y compra el|r |T134955:0|t[Escudo pequeño]
    .collect 17184,1 --Small Shield (1)
    .target Godric Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janos Nudillomartillo|r
    >>|cRXP_WARN_Subir de nivel con escudo y arma de una mano al principio es mucho más rápido debido al poder de las runas de escudo|r
    >>|cRXP_BUY_Vende la chatarra al vendedor y compra el|r |T133485:0|t[Garrote]
    .collect 2130,1 --Club (1)
    .target Janos Hammerknuckle
step << Paladin
    .equip 16,2130 >> Equipa el |T133485:0|t[Garrote]
    .equip 17,17184 >> Equipa el |T134955:0|t[Escudo pequeño]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    +|cRXP_WARN_Mata repetidamente enemigos y vende la chatarra hasta que tengas 1 plata|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >> Equipa los|cRXP_WARN_ |T132543:0|t[Zapatos de pelaje suave], los usarás para grabar una runa pronto|r
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dermot Johns|r
    >>Si no tienes suficiente dinero para ambos objetos |cRXP_WARN_(60 cobres)|r, mata más |cRXP_ENEMY_lobos|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>Vende la chatarra y compra el |T132495:0|t[Cinturón de paño fino] y los |T132952:0|t[Guantes de paño fino], los necesitarás para grabar una runa pronto
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10 más|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres o más para después|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >>|cRXP_BUY_Compra todas las siguientes runas:|r
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
step << Priest/Paladin
    .train 431663 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] para aprender |T136181:0|t[Púa mental] << Priest
    .train 425216 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] para aprender |T237514:0|t[Plaga del Vacío] << Priest
    .train 402862 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] para aprender |T237545:0|t[Penitencia] << Priest
    .train 402849 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] para aprender |T136149:0|t[Palabra de las Sombras: muerte] << Priest
    .train 410014 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tormenta divina|r] para aprender |T236250:0|t[Tormenta divina] << Paladin
    .train 410008 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Vengador|r] para aprender |T135874:0|t[Escudo de vengador] << Paladin
    .train 410013 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo del honrado|r] para aprender |T236253:0|t[Martillo del honrado] << Paladin
    .train 440788 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Escudo de rectitud|r] para aprender |T236265:0|t[Escudo de rectitud] << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_Mantente atento a cualquier|r |T132624:0|t[Pechera]|cRXP_WARN_,|r |cRXP_WARN_o|r |T133762:0|t[Capa] |cRXP_WARN_que puedas equipar|r
    .engrave 5 >> Graba |T236250:0|t[Tormenta divina] en tu pechera
    .engrave 15 >> Graba |T236265:0|t[Escudo de rectitud] en tu capa
step << Priest/Paladin
    .use 6070 << Paladin --Wolfskin Bracers
    .equip 9 >> Equipa los |T132604:0|t[Brazales de piel de lobo] << Paladin
    .engrave 6 >> Graba |T136181:0|t[Púa mental] en tu cinturón << Priest
    .engrave 8 >> Graba |T237514:0|t[Plaga del Vacío] en tus botas << Priest
    .engrave 10 >> Graba |T136149:0|t[Palabra de las Sombras: muerte] en tus guantes << Priest
    .engrave 7 >> Graba |T135874:0|t[Escudo de vengador] en tus pantalones << Paladin
    .engrave 9 >> Graba |T236253:0|t[Martillo del honrado] en tus brazales << Paladin
step << Priest/Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >> Mata enemigos hasta alcanzar 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue !Paladin
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vende la Basura
    .target Godric Rothgar
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    >>Asegúrate de haber comprado |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Lanza de hielo|r] lo necesitarás para entregar una misión adicional
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Lanza de hielo|r] para aprender |T135844:0|t[Lanza de hielo]
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3100 >> Acepta la misión Una carta simple << Warrior
    .accept 3101 >> Acepta la misión Una carta consagrada << Paladin
    .accept 3102 >> Acepta la misión Una carta cifrada << Rogue
    .accept 3103 >> Acepta la misión Una carta sacralizada << Priest
    .accept 3104 >> Acepta la misión Una carta glífica << Mage
    .accept 3105 >> Acepta la misión Una carta manchada << Warlock
    .target Marshal McBride




----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r subiendo las escaleras
step << Mage
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r en el piso de arriba
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Entrega la misión Una carta glífica
    .accept 77620 >> Acepta la misión Investigación sobre hechizos << Human
    .turnin 77620 >> Entrega la misión Investigación sobre hechizos << Human
    .trainer >> Aprende tus hechizos de clase
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Viaja hacia la |cRXP_FRIENDLY_Sacerdotisa Anetta|r en el piso de abajo
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r abajo
    .turnin 3103 >> Entrega la misión Una carta sacralizada
    .accept 77619 >> Acepta la misión Meditaciones sobre la Luz << Human
    .turnin 77619 >> Entrega la misión Meditaciones sobre la Luz << Human
    .trainer >> Aprende tus hechizos de clase, |cRXP_WARN_omíte esto si no te lo puedes permitir. De todos modos, usarás principalmente habilidades de runas|r
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r en el piso de abajo << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .turnin 3100 >> Entrega la misión Una carta simple
    .accept 77616 >> Acepta la misión La runa perdida << Human
    .turnin 77616 >> Entrega la misión La runa perdida << Human
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 2
    #label PalaQ
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .turnin 3101 >> Entrega la misión Una carta consagrada
    .accept 77617 >> Acepta la misión Reliquias de la Luz << Human
    .turnin 77617 >> Entrega la misión Reliquias de la Luz << Human
    >>|cRXP_WARN_Si tienes dinero extra puedes gastarlo en|r |T135906:0|t[Bendición de poderío], |T135959:0|t[Sentencia] |cRXP_WARN_o una|r |T135029:0|t[Pechera] |cRXP_WARN_si todavía te faltan. Te recomiendo priorizar la Pechera|r
    .target Brother Sammuel
step << Paladin
    #optional
    #completewith RestandR
    .use 2385 --Tarnished Chain Gloves
    .equip 10 >> Equipa los |T132938:0|t|cRXP_LOOT_[Guantes de anillas deslustradas]|r si todavía no has encontrado otros guantes
    .engrave 10 >> |cRXP_WARN_Graba los|r |T132938:0|t|cRXP_LOOT_[Guantes de anillas deslustradas]|r |cRXP_WARN_con|r |T135891:0|t[Golpe de cruzado] << Paladin
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >> Sal de la Abadía de Villanorte
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r fuera
    .accept 18 >> Acepta la misión Hermandad de ladrones
    .target Deputy Willem
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    .target Rune Broker
    .skipgossip
step
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Mata |cRXP_ENEMY_Trabajadores kóbold|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Entrega la misión Una carta cifrada
    .target Jorik Kerridan
step << !Warlock
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18,1 >> Entrega la misión Hermandad de ladrones << Rogue
    .turnin 18,2 >> Entrega la misión Hermandad de ladrones << Paladin
    .turnin 18,2 >> Entrega la misión Hermandad de ladrones << Priest
    .turnin 18,3 >> Entrega la misión Hermandad de ladrones << Warrior
    .turnin 18,5 >> Entrega la misión Hermandad de ladrones << Mage
    .turnin 18 >> Entrega la misión Hermandad de ladrones << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target Deputy Willem
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >> Equipa la |T135641:0|t[Daga de milicia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >> Equipa el |T133052:0|t[Martillo de milicia]
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Equipa la |T135274:0|t[Espada corta de milicia]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Viaja hacia la |cRXP_FRIENDLY_Sacerdotisa Anetta|r en el piso de abajo
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .accept 5623 >> Acepta la misión Al servicio de la Luz
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r en el piso de abajo << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r en la planta baja del interior
    .turnin 77617 >> Entrega la misión Reliquias de la Luz
    .trainer >> Aprende tus hechizos de clase
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >> |cRXP_WARN_Equipa los|r |T132938:0|t|cRXP_LOOT_[Guantes de anillas deslustradas]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
    .accept 21 >> Acepta la misión Refriega en el Eco
    .target Marshal McBride
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Sal de la Abadía de Villanorte
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Entrega la misión Una carta manchada
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .target Drusilla La Salle



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la chatarra y cómprale todas las |T134419:0|t|cRXP_WARN_[Runas]|r que quieras|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entra en la Mina del Eco
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Mata |cRXP_ENEMY_Obreros kóbold|r dentro de la Mina del Eco
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
	#softcore
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección en Villanorte
    .target Ángel de la Resurrección
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >> Abandona la misión La cosecha de Milly
step
    #xprate >1.49
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >> Mata enemigos hasta alcanzar 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >> Mata enemigos hasta alcanzar 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >> Mata enemigos hasta alcanzar 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith #label RestandR
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .turnin 21,1 >> Entrega la misión Refriega en el Eco << Rogue
    .turnin 21,2 >> Entrega la misión Refriega en el Eco << Warrior/Paladin
    .turnin 21,3 >> Entrega la misión Refriega en el Eco << !Warrior !Paladin !Rogue
    .accept 54 >> Acepta la misión Informa en Villadorada
    .target Marshal McBride
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r dentro
    .accept 5623 >> Acepta la misión Al servicio de la Luz
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >> Acepta la misión Descanso y relajación
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#classic
#season 2
#version 1
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 6-12 Bosque de Elwynn SoD
#displayname 6-12 Bosque de Elwynn
#next 12-13 Dun Morogh SoD
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >> Viaja a Villadorada
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135641:0|t[Estilete] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_WARN_Cómprale una|r |T133053:0|t[Marra de madera] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Smith Argus
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vende la Basura
    .target Andrew Krighton
--  .money >1.0
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158,1 >> Entrega la misión Descanso y relajación << Rogue/Warrior
    .turnin 2158,2 >> Entrega la misión Descanso y relajación << !Rogue !Warrior
    .home >> Establece tu Piedra de hogar en Villadorada
    .target Innkeeper Farley
step
    #optional
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor 151 >>|cRXP_BUY_Cómprale la|r |T135641:0|t[Daga arrojadiza equilibrada] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
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
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja las escaleras
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Aprende tus hechizos de clase
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor 6374 >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si te lo puedes permitir. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Entrega la misión Al servicio de la Luz
    .accept 5624 >> Acepta la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r subiendo las escaleras
    .target Michelle Belle
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor 295 >> |cRXP_BUY_Cómprale|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_hasta que te quede solo 1 Plata|r << Warrior
    .vendor 295 >> |cRXP_BUY_Compra hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_a este vendedor|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Guardia Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>Busca al |cRXP_FRIENDLY_Espadachín deambulante|r. Si lo encuentras, puedes desafiarlo a un duelo, que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez|r
    >>|cRXP_WARN_Probablemente no podrás derrotarlo en solitario a este nivel, salta este paso si no hay nadie cerca para ayudarte; puedes volver después de llegar al nivel 10 y verificar si todavía está ahí|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r y |cRXP_FRIENDLY_La vieja Pedregosa|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r << !Rogue
    .accept 85 >> Acepta la misión El collar perdido
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acepta la misión ¡Princesa debe morir! << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target +Ma Stonefield << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_WARN_como puedas permitirte|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vende la chatarra|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .accept 84 >> Acepta la misión Vuelve con Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Pedregosa|r dentro
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Mata |cRXP_ENEMY_Mineros kóbold|r y |cRXP_ENEMY_Tuneladores kóbold|r. Despójalos para obtener una |T134168:0|t|cRXP_LOOT_[Cabeza de kóbold cortada]|r
    >>|cRXP_WARN_Este es uno de los tres objetos que necesitas para desbloquear tu|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para cuando llegues a Ventormenta más tarde|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #completewith Exchange
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>|T133644:0|tUsa [Robar] con los |cRXP_ENEMY_Mineros kóbold|r y con los |cRXP_ENEMY_Tuneleros kóbold|r. Despójalos para obtener el |T134327:0|t|cRXP_LOOT_[Trozo superior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar|r |T132320:0|t[En sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos los pasos de los|r |T134327:0|t[|cRXP_LOOT_Trozos de mapa|r] |cRXP_WARN_son para desbloquear la runa|r |T134536:0|t[Desenfunde rápido] |cRXP_WARN_.|r |cRXP_WARN_Es útil pero no obligatoria para subir de nivel y se vuelve obsoleta alrededor del nivel 22 después de desbloquear tus venenos. Puedes omitir todos estos pasos si no te interesa obtener la runa cuanto antes y prefieres ahorrar tiempo.|r
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #completewith BernicesNecklace
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
    .target Billy Maclure
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    >>|cRXP_WARN_No te desvíes para conseguirla ahora, puedes obtener esta runa más adelante|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entra en uno de los espacios abiertos más grandes de la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r << !Warrior !Priest
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener el |cRXP_LOOT_Collar de Bernice|r y la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r << Warrior
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r y el |T136222:0|t|cRXP_LOOT_[Recuerdo de un propósito oscuro]|r << Priest
    >>|cRXP_WARN_Ten cuidado porque generalmente atrae también al |cRXP_ENEMY_Minero kóbold|r que está junto a él|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Termina de matar a los |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas de kóbold|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Rogue
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    .xp 9+2000 >> Mata kobolds hasta alcanzar 2000 de experiencia en el nivel 9.
    >> |cRXP_WARN_Si no estás cerca puedes entregar la misión de Dientes de Oro pero eliminar enemigos es más eficiente|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_Debes tener un buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada como Abadía de Villanorte o la Catedral de Ventormenta|r
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t|cRXP_LOOT_[Recuerdo de un propósito oscuro]|r |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección en Villadorada
    .target Ángel de la Resurrección
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Salta encima de una trituradora, troncos flotantes, cajas o la luz de la vagoneta de la mina dentro de la cueva. Realiza un logout skip desconectando y volviendo a entrar|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >> Regresa a Villadorada
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_Si es posible, encuentra a un sacerdote en Villadorada con otro|r |cRXP_WARN_buff de|r |T135934:0|t|T136057:0|t[Meditación]
    >>|cRXP_WARN_Escribe /kneel, luego haz que el otro sacerdote escriba /pray en ti mientras estés arrodillado para obtener su buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_que puedes usar más tarde|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor >>Vende la Basura
    .target Corina Steele
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale otro|r |T135641:0|t[Estilete] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >> Abre tu panel de personaje y graba |T132304:0|t[|cRXP_FRIENDLY_Mutilar|r] en tus guantes. Es, con diferencia, la runa más poderosa para combatir enemigos.
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale una|r |T133053:0|t[Marra de madera] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Wilhelm|r
    >>|cRXP_WARN_Aprende|r |T135949:0|t[Purificar] |cRXP_WARN_para adquirir|r |T133815:0|t[Grabar pechera - Égida] |cRXP_WARN_pronto|r
    .train 1152 >>Aprende |T135949:0|t[Purificar]
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
    .target William Pestle
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor >> |cRXP_WARN_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_WARN_si es necesario|r
	.target Brog Hamfist
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_si puedes permitírtelo|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Cómprale hasta 10|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_y 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << Paladin
    .target Innkeeper Farley
    .money < 0.1
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>Mata |cRXP_ENEMY_Múrlocs|r y |cRXP_ENEMY_Correcorrientes múrloc|r. Despójalos para obtener una |T134169:0|t|cRXP_LOOT_[Cabeza de múrloc cortada]|r
    >>|cRXP_WARN_Este es uno de los tres objetos que necesitas para desbloquear tu|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para cuando llegues a Ventormenta al nivel 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #completewith JasperlodeExplore
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[Robar] en los |cRXP_ENEMY_Correcorrientes múrlocs|r y |cRXP_ENEMY_Múrlocs|r. Despójalos para obtener el |T134269:0|t|cRXP_LOOT_[Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar|r |T132320:0|t[En sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos los pasos de los|r |T134327:0|t[|cRXP_LOOT_Trozos de mapa|r] |cRXP_WARN_son para desbloquear la runa|r |T134536:0|t[Desenfunde rápido] |cRXP_WARN_.|r |cRXP_WARN_Es útil pero no obligatoria para subir de nivel y se vuelve obsoleta alrededor del nivel 22 después de desbloquear tus venenos. Puedes omitir todos estos pasos si no te interesa obtener la runa cuanto antes y prefieres ahorrar tiempo.|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Mata |cRXP_ENEMY_Múrlocs|r y |cRXP_ENEMY_Correcorrientes múrloc|r. Despójalos para obtener |cRXP_LOOT_Hojas de alga de cristal|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Mata a los |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step << Priest
    #sticky
    #label SharedPainTwo
    #completewith JasperlodeExplore
    .goto Elwynn Forest,40.6,81.8
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> Entra en la Cantera de Jaspe
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>Mata |cRXP_ENEMY_Geománticos kóbold|r. Despójalos para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: MALVA VALI]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Sigue el camino por el centro para explorar la Cantera de Jaspe
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Mata a los |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lanza|r |T135949:0|t[Purificar] |cRXP_WARN_sobre el |cRXP_FRIENDLY_Aventurero herido|r dentro|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Habla con el |cRXP_FRIENDLY_Aventurero herido|r después de lanzar|r |T135949:0|t[Purificar] |cRXP_WARN_en él para recibir la|r |T134419:0|t[Runa de Égida]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Égida] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Égida]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: MALVA VALI]|r |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Sal de la Cantera de Jaspe
    .subzoneskip 54,1
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>Mata |cRXP_ENEMY_Zahoríes bribones de Defias|r. Despójalos para obtener la |T135975:0|t|cRXP_LOOT_[Profecía de una ciudadela profanada]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t|cRXP_LOOT_[Profecía de una ciudadela profanada]|r |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|tLanza[Robar] a los |cRXP_ENEMY_Avanzados Zarparrío|r y |cRXP_ENEMY_Cachorros Zarparrío|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos los pasos de los|r |T134327:0|t[|cRXP_LOOT_Trozos de mapa|r] |cRXP_WARN_son para desbloquear la runa|r |T134536:0|t[Desenfunde rápido] |cRXP_WARN_.|r |cRXP_WARN_Es útil pero no obligatoria para subir de nivel y se vuelve obsoleta alrededor del nivel 22 después de desbloquear tus venenos. Puedes omitir todos estos pasos si no te interesa obtener la runa cuanto antes y prefieres ahorrar tiempo.|r
    >>|cRXP_WARN_Si decides no conseguir la runa, puedes saltarte el viaje a Montañas Crestagrana por ahora y volver directamente a Villadorada usando la piedra de hogar o mediante una muerte estratégica (deathskip)|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vende la basura y repara
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Defias|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_Nota: Esto también lo puede soltar cualquier otro miembro |cRXP_ENEMY_Defias|r en el Bosque de Elwynn|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Elwynn|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Elwynn|r] |cRXP_WARN_donde marca la flecha. Esto hará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Abre el |cRXP_PICK_Tesoro enterrado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_CUIDADO: Mantente en la carretera principal y evita cualquier enemigo cercano por el camino|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
    .timer 9,La recolección de algas RP
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor >> Vende la Basura
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .accept 1097 >> Acepta la misión La tarea de Elmore
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >> Mata enemigos hasta el nivel 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_No aprendas habilidades, ya que necesitas ahorrar dinero para más adelante|r
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .accept 2998 >> Acepta la misión Escrito sobre divinidad
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r y |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Aprende tus hechizos de clase
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Acepta la misión La invocación de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Sube las escaleras
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .accept 5635 >> Acepta la misión Oración desesperada
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Aprende tus hechizos de clase
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Abandona la misión Armadura de paño y cuero
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>Busca al |cRXP_FRIENDLY_Espadachín deambulante|r mientras corres. Si lo encuentras, puedes desafiarlo a un duelo, que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Viaja a los Viñedos de Maclure
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
    .turnin 88 >> Entrega la misión ¡Princesa debe morir! << Rogue
    .target "Auntie" Bernice Stonefield
step
    #optional
    #completewith next
    .abandon 88 >> Abandona la misión ¡Princesa debe morir! ya que no la has completado
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>Comprueba el punto marcado en busca del |cRXP_FRIENDLY_Espadachín deambulante|r. Si está allí, desafíalo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >> Viaja al Cuartel de Arroyoeste


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .target Deputy Rainer
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener |T132889:0|t[Paño de lino]. Necesitarás 10 para una misión pronto
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestAvailable 1644

----Start of Warrior Gnoll Head section----


step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>Comprueba el punto marcado en busca del |cRXP_FRIENDLY_Espadachín deambulante|r. Si está allí, desafíalo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>Comprueba el punto marcado en busca del |cRXP_FRIENDLY_Espadachín deambulante|r. Si está allí, desafíalo a un duelo que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    >>|cRXP_WARN_Tiene múltiples puntos de aparición y solo puede estar presente en uno de ellos a la vez. Omite este paso si no está allí|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #xprate >1.49
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener una |T134163:0|t[|cRXP_LOOT_Cabeza de gnoll cortada|r]
    >>|cRXP_WARN_Este es uno de los tres objetos que necesitas para desbloquear tu|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para cuando llegues a Ventormenta al nivel 10|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r << Warlock
    .accept 176 >> Acepta la misión Se busca: Hogger << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r mientras corres. Despójalos para obtener la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r]
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    >>|cRXP_WARN_La|r |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] |cRXP_WARN_es un objeto muy raro. Ignora este paso si no lo obtienes|r
    >>|cRXP_ENEMY_Bronco Mordeveloz|r |cRXP_WARN_es un enemigo raro, tiene un 100% de probabilidad de botín|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .unitscan Gruff Swiftbite
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_a |cRXP_ENEMY_Hogger|r continuamente y usa tus "DoTs" normales para matarlo|r
    >>|cRXP_WARN_Usa|r |T136163:0|t[Drenar alma] |cRXP_WARN_cuando Hogger esté a punto de morir. Si muere mientras está bajo su efecto, recibirás un|r |T134085:0|t[Fragmento de alma contaminado] |cRXP_WARN_que se usa para desbloquear la runa de|r |T136169:0|t[Succión de alma]
    >>|cRXP_WARN_Sáltate este paso si no consigues el fragmento de alma o si Hogger no está vivo. La runa no es muy poderosa|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan Hogger
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Abandona la misión El Coleccionista
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Viaja a Páramos de Poniente
step
    #xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verna Cejade|r
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
step << !Paladin !Warlock
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r dentro
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >> Mata enemigos hasta alcanzar 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Mata enemigos hasta alcanzar 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >> Cruza el río a nado hacia Páramos de Poniente
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .target Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    >>|cRXP_BUY_Cómprale hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_. Son comidas de nivel 5 muy baratas|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Explorador Defias|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_Hay una probabilidad muy alta de que|r |T133644:0|t[Robar] |cRXP_WARN_falle porque tu nivel es bajo. Si falla, omite este paso y vuela a Ventormenta. Lo completarás en Loch Modan pronto|r
    >>|cRXP_WARN_NO ATRAIGAS AL |cRXP_ENEMY_Explorador Defias|r DE LO CONTRARIO USARÁ|r |T132331:0|t[Esfumarse] |cRXP_WARN_Y DESAPARECERÁ DURANTE 3-5 MINUTOS. ¡ASEGÚRATE DE USAR|r |T132320:0|t[Sigilo] |cRXP_WARN_CON ANTELACIÓN!|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Explorador Defias|r puede aparecer en las colinas|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elige|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock
    .trainer >>Aprende el uso de Bastones << Priest
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende el uso de Bastones
    .target Woo Ping
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la Ciudad de Ventormenta
    .target Innkeeper Allison
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 2998 >> Entrega la misión Escrito sobre divinidad
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre divinidad|r] para iniciar la misión|r
    .accept 1642 >>Acepta la misión Escrito sobre divinidad
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Entrega la misión Escrito sobre divinidad
    .accept 1643 >>Acepta la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19834 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 647 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1685 >> Entrega la misión La invocación de Gakin
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .target Ángel de la Resurrección
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Sal de Ventormenta
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Viaja a Villadorada
step << Warlock
    #optional
    #completewith LockGoldshireEnd
    >>Busca a cualquier |cRXP_ENEMY_alimaña|r corriendo alrededor del ángel de la resurrección. Lánzale |T136163:0|t[Drenar alma] para recibir un |T134095:0|t[Fragmento de alma puro]
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado]
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 123 >> Entrega la misión El Coleccionista
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado]
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .target Marshal Dughan
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_Dirígete al sótano de la Posada de Villadorada|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con Damien Kane|cRXP_FRIENDLY_. Completa su diálogo para canjear los fragmentos de alma por |T134419:0|t[Runa de Succión de alma]|r
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >> Usa la |T134419:0|t[Runa de Succión de alma] para aprender |T136169:0|t[Succión de alma]
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +Equipa el|cRXP_WARN_ |T135145:0|t[Palo de lucha equilibrado]|r
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_Mata enemigos por el camino. Intenta mejorar tu|r habilidad con armas del|cRXP_WARN_ |T135145:0|t[Palo de lucha equilibrado] |r
    .subzone 62 >> Viaja a la Plantación de Calabazas de Brackwell
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    >>|cRXP_WARN_Mata enemigos de camino. Asegúrate de tener al menos 2|r |T134075:0|t[Fragmentos de alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos durante el trayecto|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_MANTENTE EN EL CAMINO PRINCIPAL Y EVITA CUALQUIER ENEMIGO CERCANO DURANTE EL TRAYECTO|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step << Warlock
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta, omite este paso y toma la ruta de vuelo si está en tiempo de reutilización
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Stormwind City
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo


----Warlock Elwynn Voidwalker Section End----


step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134168:0|t[|cRXP_LOOT_Cabeza de kóbold cortada|r] y recibir el |T134455:0|t[Primer fragmento de runa de cazador de monstruos]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134169:0|t[|cRXP_LOOT_Cabeza de múrloc cortada|r] y recibir el |T134455:0|t[Segundo fragmento de runa de cazador de monstruos]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Habla con |cRXP_FRIENDLY_Viktoria Arbolada|r para entregar tu |T134163:0|t[|cRXP_LOOT_Cabeza de gnoll cortada|r] y recibir el |T134455:0|t[Tercer fragmento de runa de cazador de monstruos]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Usa cualquiera de los|r |T134455:0|t[Fragmentos de runa de cazador de monstruos] |cRXP_WARN_para crear la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204703
    .itemcount 204703,1
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    .accept 6261 >> Acepta la misión Dungar Tragolargo
    .target Osric Strang
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de tener al menos 24 platas después de aprender habilidades. Las necesitarás para conseguir un arma de fuego en Forjaz y así poder usar tus runas|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de tener al menos 24 platas después de aprender habilidades. Las necesitarás para conseguir un arma de fuego en Forjaz y así poder usar tus runas|r
    .train 1766 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <12,1
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataca a |cRXP_ENEMY_Bartleby|r. Se rendirá al 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Entrega la misión Vence a Bartleby
    .accept 1665 >> Acepta la misión La jarra de Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Entra en la Catedral de Ventormenta
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5635 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5634 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Entra en el Callejón Degolladores en la Ciudad de Ventormenta en el Distrito de los Enanos
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Sube las escaleras dentro de la casa|r
    >>Abre el |cRXP_PICK_Cofre polvoriento|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Al hacer esto aparecerán dos |cRXP_ENEMY_Atracadores despiadados|r de nivel 10 que te atacarán|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r << Alliance
    >>Cómprale el |T133745:0|t|cRXP_LOOT_[Testamento de Martirio]|r, úsalo para aprender |T135961:0|t[Sello de martirio] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r << Alliance
    >>Si dispones de mucho dinero de sobra, puedes comprarle los otros dos testamentos a Milton para usarlos más adelante << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaita Forjahonda|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Aprenderás|r |T134708:0|t[Minería] |cRXP_WARN_más tarde|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|cRXP_WARN_Sube de nivel|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratas] |cRXP_WARN_en las |cRXP_ENEMY_Rata del subterráneo|r dentro del Tranvía Subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r dentro del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|cRXP_WARN_Sube de nivel|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratas] |cRXP_WARN_en las |cRXP_ENEMY_Rata del subterráneo|r dentro del Tranvía Subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r dentro del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_si es necesario mientras esperas el tranvía|r << Rogue/Warrior/Paladin
    .zone Ironforge >>Toma el Tranvía a Forjaz
step
    .zone Ironforge >>Entra en Forjaz
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Viaja hacia |cRXP_FRIENDLY_Bilban Cálculo|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    >>|cRXP_WARN_Asegúrate de guardar 20 platas 70 cobres para después|r
    .train 2687 >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    >>|cRXP_WARN_Asegúrate de guardar 20 platas 70 cobres para después|r
    .train 5242 >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entra en el edificio Armas Mil Maderas
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    .train 2567 >> Aprende el uso de Armas arrojadizas << Warrior
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Aprende Mazas de 2 manos << Warrior
    .train 266 >> Aprende Armas de Fuego << Rogue
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thalgus Tronapuño|r bajando las escaleras
    >>|cRXP_BUY_Compra una|r |T135613:0|t[Bocarda de cazador] y |T132384:0|t[Perdigón pesado] |cRXP_BUY_a este vendedor|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target Thalgus Tronapuño
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thalgus Tronapuño|r bajando las escaleras
    >>|cRXP_BUY_Compra un|r |T135611:0|t[Trabuco ornamentado] y |T132384:0|t[Perdigón pesado] |cRXP_BUY_a este vendedor|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target Thalgus Tronapuño
    .itemcount 2511,<1
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >> Sal del edificio Armas Mil Maderas
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Bruart|r para empezar un combate
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r << Paladin
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r << Paladin
    >>|cRXP_WARN_Kitéalo escaleras arriba hacia el balcón, luego salta fuera de la posada y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r << Paladin
    >>|cRXP_WARN_Kitéalo hacia el balcón, déjate caer afuera de la posada y usa|r |T133688:0|t[Vendas] |cRXP_WARN_si es necesario|r << Warrior
    >>|cRXP_WARN_Intenta "kitearlo" utilizando|r |T132316:0|t[|cRXP_FRIENDLY_Seccionar|r] |cRXP_WARN_y|r |T132324:0|t[|cRXP_FRIENDLY_Armas arrojadizas|r] << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r << Paladin
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r << Paladin
    >>|cRXP_WARN_Kitéalo escaleras arriba hacia el balcón, luego salta fuera de la posada y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r << Paladin
    >>|cRXP_WARN_Kitéalo hacia el balcón, déjate caer afuera de la posada y usa|r |T133688:0|t[Vendas] |cRXP_WARN_si es necesario|r << Warrior
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Bruart|r:|r
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo para recibir la |T134419:0|t[Runa de Reprimenda] << Paladin
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Reprimenda]|cRXP_WARN_, es posible que necesites luchar contra |cRXP_ENEMY_Bruart|r de nuevo|r << Paladin
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo para recibir la |T134419:0|t[Runa de Asalto frenético] << Warrior
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Asalto frenético]|cRXP_WARN_, es posible que tengas que luchar contra |cRXP_ENEMY_Bruart|r de nuevo|r << Warrior
    >>|cRXP_WARN_NOTA: Esto puede ser difícil de hacer solo. Busca ayuda, o se te pedirá que lo completes de nuevo más adelante en la guía|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Reprimenda] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Reprimenda]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r |cRXP_WARN_con|r |T134596:0|t[Grabar pantalones - Reprimenda]
    >>|cRXP_WARN_Recuerda poner|r |T134919:0|t[Reprimenda] |cRXP_WARN_en tus barras de acciones|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Asalto frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r |cRXP_WARN_con|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .train 425447,3
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,26.8,8.6,12 >>Viaja hacia |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Viaja hacia |cRXP_FRIENDLY_Brandur Martiyerro|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >> Aprende tus hechizos de clase
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r dentro
    .train 145 >> Aprende tus hechizos de clase
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r dentro
    .train 1460 >> Aprende tus hechizos de clase
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r dentro
    .train 633 >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19834 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 647 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Sal de Forjaz y dirígete al este hacia Vagash|r
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salta a lo más alto del |cRXP_PICK_Buzón|r, luego realiza un Logout Skip desconectando y volviendo a entrar|r
    .isQuestAvailable 314
    ]])
