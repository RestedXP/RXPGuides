if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Ruta de misiones diarias del Gunship de Corona de Hielo

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+Para desbloquear todas las misiones diarias del Gunship de Corona de Hielo, primero debes completar la cadena de premisiones. Usa la guía Corona de Hielo Gunship Desbloquear Daily Quests para desbloquear todas las misiones diarias
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+Para desbloquear todas las misiones diarias del Gunship de Corona de Hielo, primero debes completar la cadena de premisiones. Usa la guía Corona de Hielo Gunship Desbloquear Daily Quests para desbloquear todas las misiones diarias
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Vuela al Gunship de la Alianza, El Rompecielos
	>>Habla con Capitán caballero Drosche, Absalan el Piadoso, Gran capitán Justin Bartlett, Ingeniero jefe Aprietatuercas y Thassarian
	>>Nota: la misión ¡Sin piedad! es una misión JcJ que requiere que mates a 15 jugadores de la Horda en Corona de Hielo. Puedes abandonarla u omitir esta diaria si quieres
    .daily 13336 >>Acepta la misión Sangre de los elegidos
    .daily 13300 >>Acepta la misión Esclavos de la saronita
	.daily 13233 >>Acepta la misión ¡Sin piedad!
    .daily 13292 >>Acepta la misión La solución solución
    .daily 13289 >>Acepta la misión ¡Eso es abominable!
	.daily 13297 >>Acepta la misión Neutralizar la peste
    .daily 13322 >>Acepta la misión Volver a probar
    .daily 13323 >>Acepta la misión Arrastrar y soltar
	.daily 13344 >>Acepta la misión Espía como puedas
    .daily 13350 >>Acepta la misión El mal nunca duerme
    .daily 13333 >>Acepta la misión A la captura de más informes
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Vuela al Gunship de la Horda, El Martillo de Orgrim
	>>Habla con Belisario Davos Rioht, Hermano Keltan, Atracador del cielo Korm Marcanegra, Ingeniero jefe Garrabronce y Koltira Tejemuerte
	>>Nota: la misión Make Them Pay! es una misión JcJ que requiere que mates a 15 jugadores de la Alianza en Corona de Hielo. Puedes abandonarla u omitir esta diaria si quieres
    .daily 13330 >>Acepta la misión Sangre de los elegidos
    .daily 13302 >>Acepta la misión Esclavos de la saronita
	.daily 13234 >>Acepta la misión ¡Que lo paguen!
    .daily 13261 >>Acepta la misión Volatilidad
    .daily 13276 >>Acepta la misión ¡Eso es abominable!
	.daily 13281 >>Acepta la misión Neutralizar la peste
    .daily 13357 >>Acepta la misión Volver a probar
    .daily 13353 >>Acepta la misión Arrastrar y soltar
	.daily 13365 >>Acepta la misión Espía como puedas
    .daily 13368 >>Acepta la misión El mal nunca duerme
    .daily 13331 >>Acepta la misión Mantener a la Alianza en la oscuridad
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Vuela hacia Comandante de tierra Koup (en el suelo, no en la nave)
    .daily 13309 >>Acepta la misión Asalto por aire
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Haz clic derecho en la torreta en la parte superior de la Máquina voladora para empezar la misión
	.isOnQuest 13309
step << Alliance
	>>Dispara a todos los Lanza Armas de Fuego en los edificios mientras vuelas
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Regresa con Koup
    .turnin 13309 >>Entrega la misión Asalto por aire
	.isQuestComplete 13309
step << Horde
	>>Vuela hacia Comandante de tierra Xutjja (en el suelo, no en la nave)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acepta la misión Asalto por aire
step << Horde
	#completewith next
	.vehicle >>Corre hacia la torreta de supresión Kor'kron en la nave y haz clic en ella.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Dispara a todas las torretas que veas mientras vuelas para desactivarlas. Los infiltrados caerán mientras haces esto.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Entrega la misión Asalto por aire
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Habla con el Líder de escuadrón. Puede que no esté aquí si alguien más empezó la misión y tiene un tiempo de reaparición de aproximadamente 6 minutos
    .daily 13284 >>Acepta la misión Asalto por tierra
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Mata a los Vrykul por todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escolta a las tropas. Si hace falta, deja que algunas de las tropas tanqueen a los mobs
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Mata a los Vrykul por todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTA: Esta misión te marcará para JcJ. Sin embargo, es MUY fácil.
    .daily 13280 >>Acepta la misión Rey de la montaña
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Alianza» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13280
step << Alliance
	>>Vuelve con Comandante de tierra Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Habla con el Líder de escuadrón. Es posible que no esté aquí si otra persona inició la misión y tiene un tiempo de reaparición de aproximadamente 6 minutos
    .daily 13301 >>Acepta la misión Asalto por tierra
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
	#completewith Mineslave
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escolta a las tropas. Deja que algunas de ellas absorban el daño de los monstruos si es necesario
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>NOTA: Esta misión te marca para JcJ. Sin embargo, es MUY fácil.
    .daily 13283 >>Acepta la misión Rey de la montaña
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Horda» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
    .turnin 13283 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13283
step << Horde
	>>Vuelve con Comandante de tierra Xutjja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13301
step
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa la Solución de contrabando de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP) << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa el Aceite Volátil de Copperclaw de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP) << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>Mata a las Abominaciones enormes en la zona y despójalas para obtener Tripas de abominación enfriadas
	.use 43968 >> Usa el Kit de Reanimación de Abominaciones con algunas Agallas en tu bolsa para invocar una Abominación que puedas controlar. Reúne tantos monstruos como sea posible haciendo que la Abominación los ataque y atraiga su agresión, luego usa «Lleno a rebosar» para matar todos los monstruos cerca de tu Abominación (los monstruos deben estar en combate para obtener crédito)
	>>Si se te acaban las Agallas, ve y mata a más Hulking Abominations. Solo puedes tener 1 Agalla en tu poder a la vez.
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Mata a los Pustulent Horrors en la zona. Despójalos para obtener un Flesh Giant Spine. Esta misión es MUY difícil. Reúnete en grupo si es necesario o puedes abandonar/omitir esta misión diaria si lo deseas
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >> Usa el Flesh Giant Spine de tu inventario para crear Pustulant Spinal Fluid
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Usa el Pustulant Spinal Fluid de tu inventario en los calderos verdes burbujeantes. Mata a los monstruos que aparecen y usa el Spinal Fluid de nuevo cuando se te indique «Añade fluido pronto». Esta misión es MUY difícil. Agrúpate si es necesario o puedes abandonar/omitir esta misión diaria si lo deseas
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	>>Ve a la plataforma y mata a los Bitter Initiates en la zona. Despoja los para obtener su Orbe de ilusión
	.use 44246 >>Usa el Orbe de ilusión en los Subyugadores oscuros en la zona cuando no estés en combate.
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Usa el Tónico de culto diluido de tu inventario para obtener el beneficio de «Discernimiento oscuro». Esto te permite despojar las Esencias contaminadas de todos los humanoides que mates en la zona
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >> Haz clic derecho en las Esencias contaminadas de tu inventario para convertirlas en una Masa retorcida. Lanza la Masa retorcida en un caldero
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Mata a 5 Esbirros esclavizados (caminantes del vacío). Usa la Vara de succión en sus cadáveres para obtener su Materia oscura
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Haz clic en la Piedra invocadora
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Entra en Aldur'thar
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>Esta misión es MUY difícil. Agrúpate si es necesario o abandona/omite esta misión diaria
	>>Abre los cofres dentro de Aldur'thar y despoja la Calavera de Alumeth, el Corazón, el Scepter y las Robes
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta misión es MUY difícil. Agrúpate si es necesario o abandona/omite esta misión diaria
	.use 44476 >> Haz clic en cualquiera de los objetos de tu inventario para combinarlos en Restos de Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta misión es MUY difícil. Agrúpate si es necesario o abandona/omite esta misión diaria
	.use 44480 >> Usa Restos de Alumeth frente al cristal brillante para invocarlo. Mátalo
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Usa la Pistola de dardos de tu inventario en los Exploradores del Martillo de Orgrim (puedes usarla mientras estés en tu montura voladora). Despoja sus cadáveres para obtener los Informes
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Usa el SGM-3 de tu inventario en los Skybreaker Recon Fighters en el aire
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step << Alliance
	>>Vuela a la pequeña plataforma en el aire. Habla con Kilohercio
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>Acepta la misión Tropas de choque estático: el Bombardeo
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Habla con Karen para subir a un bombardero. Usa «Cargar generador de protección» (1) para obtener 100 escudos, luego cambia a «Bahía de bombardero» (5) y comienza a bombardear la plaga abajo hasta que todos los Infantes y Capitanes sean asesinados. Cambia a la «Torreta antiaérea» (4) y comienza a usar «Anti-Aire Cohetes» (1) para disparar a las Gárgolas en el aire. Una vez completado, presiona el botón Abandonar vehículo y serás devuelto a la plataforma
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>Habla con Kilohercio
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>Entrega la misión Tropas de choque estático: el Bombardeo
	.isQuestComplete 13404
step << Horde
	>>Vuela a la pequeña plataforma en el aire. Habla con Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>Acepta la misión En la cresta de la onda: el Bombardeo
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Habla con Rizzy para subir a un bombardero. Usa «Cargar generador de protección» (1) para obtener 100 escudos, luego cambia a «Bahía de bombardero» (5) y comienza a bombardear la plaga abajo hasta que todos los Infantes y Capitanes sean asesinados. Cambia a la «Torreta antiaérea» (4) y comienza a usar «Anti-Aire Cohetes» (1) para disparar a las Gárgolas en el aire. Una vez completado, presiona el botón Abandonar vehículo y serás devuelto a la plataforma
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>Habla con Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>Entrega la misión En la cresta de la onda: el Bombardeo
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Regresa al Rompecielos. Habla con Capitán Drosche, Absalán el Piadoso, Gran capitán Justin Bartlett, Ingeniero jefe Aprietatuercas y Thassarian
    .turnin -13336 >>Entrega la misión Sangre de los elegidos
    .turnin -13300 >>Entrega la misión Esclavos de la saronita
	.turnin -13233 >>Entrega la misión ¡Sin piedad!
    .turnin -13292 >>Entrega la misión La solución solución
    .turnin -13289 >>Entrega la misión ¡Eso es abominable!
	.turnin -13297 >>Entrega la misión Neutralizing the Peste
    .turnin -13322 >>Entrega la misión Volver a probar
    .turnin -13323 >>Entrega la misión Arrastrar y soltar
	.turnin -13344 >>Entrega la misión No es un error
    .turnin -13350 >>Entrega la misión El mal nunca duerme
    .turnin -13333 >>Entrega la misión Capturar más despachos
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Regresa al Martillo de Orgrim. Habla con Belisario Davos Rioht, Hermano Keltan, Atracador del cielo Korm Marcanegra, Ingeniero jefe Garrabronce y Koltira Tejemuerte
    .turnin -13330 >>Entrega la misión Sangre de los elegidos
    .turnin -13302 >>Entrega la misión Esclavos de la saronita
	.turnin -13234 >>Entrega la misión Make Them Pay!
    .turnin -13261 >>Entrega la misión Volatilidad
    .turnin -13276 >>Entrega la misión ¡Eso es abominable!
	.turnin -13281 >>Entrega la misión Neutralizing the Peste
    .turnin -13357 >>Entrega la misión Volver a probar
    .turnin -13353 >>Entrega la misión Arrastrar y soltar
	.turnin -13365 >>Entrega la misión No es un error
    .turnin -13368 >>Entrega la misión El mal nunca duerme
    .turnin -13331 >>Entrega la misión Mantener a la Alianza a ciegas
step << Alliance
	+Has completado todas las misiones diarias de El Rompecielos por hoy :) Recuerda intentar completar cualquiera de las misiones grupales que abandonaste/omitiste si lo deseas!
step << Horde
	+Has completado todas las misiones diarias de El Martillo de Orgrim por hoy :) Recuerda intentar completar cualquiera de las misiones grupales que abandonaste/omitiste si lo deseas!
]])
