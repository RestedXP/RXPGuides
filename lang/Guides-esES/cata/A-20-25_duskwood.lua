if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 20-25 Bosque del Ocaso
#displayname 21-26 Bosque del Ocaso
#next 25-30 Norte de la Vega de Tuercespina


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >> Viaja a Bosque del Ocaso
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias|r dentro de la casa
    .accept 26666 >>Acepta la misión La leyenda de Stalvan
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Acepta la misión Suministros de Villa Oscura
	.target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Consigue la Ruta de Vuelo de Villa Oscura
	.target Felicia Maline
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla dentro de la casa
    .turnin 26653 >>Entrega la misión Suministros de Villa Oscura
    .accept 26652 >>Acepta la misión Hilo de cabello de fantasma
	.target Madame Eva
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entra en la Posada
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trelayne|r
    .home >>Establece tu Piedra de hogar en la Taberna del Cuervo Escarlata
	.target Innkeeper Trelayne
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grual|r
    .accept 26620 >>Acepta la misión Kebab de lobo sazonado
    .accept 26623 >>Acepta la misión Los pasteles de cangrejo oscuro
	.target Chef Grual
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>Sal de la Posada
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daltry|r adentro y con |cRXP_FRIENDLY_Althea|r afuera
    .turnin 26666 >>Entrega la misión La leyenda de Stalvan
    .accept 26667 >>Acepta la misión Las cartas robadas
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>Entrega la misión Se busca héroe: ¡Bosque del Ocaso!
    .accept 26618 >>Acepta la misión Con los lobos en los talones
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .accept 26688 >>Acepta la misión Huargen en el bosque
	.target Calor

step
    #optional
    #completewith Letters
    >>Mata |cRXP_ENEMY_Venom Telaraña Arañas|r. Despójalos para obtener sus |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>Mata a los |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>Despoja el |cRXP_PICK_Montón de Desechos|r en el suelo para obtener |cRXP_LOOT_A Slashed Bundle of Cartas|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>Mata a los |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>Mata a los |cRXP_ENEMY_Lobos Temibles|r. Despójalos para obtener sus |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
#loop
    .goto 47,65.54,30.32,70,0
    .goto 47,73.29,20.23,70,0
    .goto 47,63.90,19.41,70,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,0
    >>Mata a las |cRXP_ENEMY_Arañas de telaraña de Veneno|r. Despójalas para obtener sus |cRXP_LOOT_Lumps|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob Venom Web Spider
step
#loop
    .goto 47,59.00,20.72,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,0
    >>Mata |cRXP_ENEMY_Dire Wolves|r. Despójalos para obtener sus |cRXP_LOOT_Steaks|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >> Usa tu Piedra de Hogar para ir a Darkshire
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daltry|r dentro y |cRXP_FRIENDLY_Althea|r afuera
    .turnin 26667 >>Entrega la misión Las cartas robadas
    .accept 26669 >>Acepta la misión En una oscura esquina
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>Entrega la misión Con los lobos en los talones
    .accept 26645 >>Acepta la misión La Guardia Nocturna
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .turnin 26688 >>Entrega la misión Huargen en el bosque
    .accept 26689 >>Acepta la misión El Vergel Pútrido
	.target Calor
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori|r
    .accept 26683 >>Acepta la misión Mira las estrellas
	.target Viktori Prism'Antras
step
	#completewith next
    >>Mata a los |cRXP_ENEMY_Horrores En podredumbre|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mary|r dentro de la casa
    .turnin 26652 >>Entrega la misión Hilo de cabello de fantasma
    .accept 26654 >>Acepta la misión Devuelve el peine
    .turnin 26683 >>Entrega la misión Mira las estrellas
    .accept 26684 >>Acepta la misión El necrófago demente
	.target Blind Mary
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>Mata |cRXP_ENEMY_Rotting Horrors|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >> Regresa a Darkshire
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla dentro de la casa
    .turnin 26654 >>Entrega la misión Devuelve el peine
    .accept 26655 >>Acepta la misión Devolver el pelo
	.target Madame Eva
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26655 >>Entrega la misión Devolver el pelo
    .accept 26660 >>Acepta la misión Zumo de zombi
	.target Abercrombie
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>Busca al |cRXP_ENEMY_Soldado Desconocido|r (Raro). Mátalo si está presente
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entra en la Posada
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Smitts|r
    .turnin 26660 >>Entrega la misión Zumo de zombi
    .accept 26661 >>Acepta la misión Busca flores podridas
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Sal de la Posada
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Althea|r
    .turnin 26645 >>Entrega la misión La Guardia Nocturna
    .accept 26686 >>Acepta la misión Huesos andantes
	.target Commander Althea Ebonlocke
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>Mata a los |cRXP_ENEMY_Guerreros esqueléticos|r y a los |cRXP_ENEMY_Magos esqueléticos|r
	>>Despoja las |cRXP_LOOT_flores podridas|r en el suelo
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>Mata al |cRXP_ENEMY_Necrófago demente|r dentro del Cementerio. Despójalo para obtener el |cRXP_LOOT_Mary's Looking Vaso|r
    .complete 26684,1 --1/1 Mary's Looking Glass
	.mob Insane Ghoul
step
	.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
    #loop
    .goto 47,81.85,68.34,30,0
    .goto 47,78.33,66.13,30,0
    .goto 47,77.02,69.85,30,0
    .goto 47,80.89,74.21,30,0
    .goto 47,81.85,68.34,30,0
    >>Mata a los |cRXP_ENEMY_Guerreros esqueléticos|r y a los |cRXP_ENEMY_Magos esqueléticos|r
	>>Despojar la |cRXP_LOOT_Rot Blossoms|r en el suelo
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>Mata a los |cRXP_ENEMY_Tejesombras Penumbría|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >> Entra en el granero
step
#label journal1
    .goto 47,66.59,76.44
    >>Despoja el |cRXP_LOOT_A Torn Diario|r en el suelo
    .complete 26669,1 --1/1 A Torn Journal
step
#loop
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,0
    >>Mata a los |cRXP_ENEMY_Tejesombras Penumbría|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Althea|r afuera y con |cRXP_FRIENDLY_Daltry|r adentro
    .turnin 26686 >>Entrega la misión Huesos andantes
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>Entrega la misión En una oscura esquina
    .accept 26670 >>Acepta la misión La condena de Roland
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>Entra en la Posada
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Smitts|r
    .turnin 26661 >>Entrega la misión Busca flores podridas
    .accept 26676 >>Acepta la misión Entrega de zumo
	.target Tavernkeep Smitts
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>Sal de la Posada
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .turnin 26689,1 >>Entrega la misión El Vergel Pútrido
    .accept 26690 >>Acepta la misión Viles y corruptos
	.target Calor
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori|r
    .turnin 26684 >>Entrega la misión El necrófago demente
    .accept 26685 >>Acepta la misión Un espejo elegante
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Entrega la misión Entrega de zumo
    .accept 26680 >>Acepta la misión Ladrones ogros
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>Mata |cRXP_ENEMY_Colmilloviles Penumbría|r y |cRXP_ENEMY_Corruptos Penumbría|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>Despoja las |cRXP_LOOT_Muddy Diario Pages|r en el suelo
    .complete 26670,1 --1/1 Muddy Journal Pages
step
#loop
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,40,0
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,0
    >>Mata |cRXP_ENEMY_Colmilloviles Penumbría|r y |cRXP_ENEMY_Corruptos Penumbría|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daltry|r adentro
    .turnin 26670 >>Entrega la misión La condena de Roland
    .accept 26671 >>Acepta la misión El sino de Stalvan Mantoniebla
	.target Clerk Daltry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r, luego con |cRXP_FRIENDLY_Jonathan|r adentro
    .turnin 26690 >>Entrega la misión Viles y corruptos
    .accept 26691 >>Acepta la misión Huargen en el bosque
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>Entrega la misión Huargen en el bosque
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias|r dentro de la casa
    .turnin 26671 >>Entrega la misión El sino de Stalvan Mantoniebla
    .accept 26672 >>Acepta la misión Desvelando la verdad
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eva|r dentro de la casa
    .turnin 26672 >>Entrega la misión Desvelando la verdad
    .accept 26674 >>Acepta la misión La venganza de Mantoniebla
	.target Madame Eva
step
    #completewith next
	.cast 82029 >> |cRXP_WARN_Usa el|r |T133343:0|t[Mistmantle Family Tocar] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Stalvan Mantoniebla|r
	.timer 33,La venganza de Mantoniebla RP
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>Mata a |cRXP_ENEMY_Stalvan Mantoniebla|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob Stalvan Mistmantle
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias|r dentro de la casa
    .turnin 26674 >>Entrega la misión La venganza de Mantoniebla
    .accept 26785 >>Acepta la misión Miembro de la manada
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >> Toma el camino detrás de la Alcaldía hacia Brightwood Grove
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dodds|r y |cRXP_FRIENDLY_Fess|r
    .accept 25235 >>Acepta la misión El vulgar Vul'Gol
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>Entrega la misión Miembro de la manada
    .accept 26707 >>Acepta la misión La viña mortal
    .accept 26717 >>Acepta la misión El huargen Yorgen
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Hierbacadáver|r. Despójales para obtener su |cRXP_LOOT_Hierbacadáver|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>Haz clic en el |cRXP_PICK_Montón de tierra suelta|r en el suelo
    .complete 26717,1 --1/1 Mound of Loose Dirt
step
    #loop
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    .goto 47,49.28,76.56,60,0
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    >>Mata a los |cRXP_ENEMY_Corpseweeds|r. Despójalo para obtener su |cRXP_LOOT_Hierbacadáver|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>Mata a los |cRXP_ENEMY_Splinter Fist Ogres|r, a los |cRXP_ENEMY_Splinter Fist Firemongers|r, y a los |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>Despoja el |cRXP_LOOT_Cajón de Abercrombie|r del suelo
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >> Entra en la Cueva de los ogros Puño Astillado
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>Mata a |cRXP_ENEMY_Zzarc' Vul|r. Despójalo para obtener su |cRXP_LOOT_Monóculo|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan Zzarc' Vul
step
	#completewith next
    .goto 47,34.20,77.47,15 >>Sal de la Cueva de los ogros Puño Astillado
	.isOnQuest 25235,26685
step
    #loop
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,34.261,73.014,0
	>>Mata a los |cRXP_ENEMY_Splinter Fist Ogres|r, a los |cRXP_ENEMY_Splinter Fist Firemongers|r y a los |cRXP_ENEMY_Splinter Fist Warriors|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fess|r y |cRXP_FRIENDLY_Dodds|r
    .turnin 26707 >>Entrega la misión La viña mortal
    .turnin 26717 >>Entrega la misión El huargen Yorgen
    .accept 26719 >>Acepta la misión Entrega a Harris
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>Entrega la misión El vulgar Vul'Gol
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Elsington|r
    .target Sister Elsington
    .accept 26777 >>Acepta la misión Reconfortando a los espíritus
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alterio|r
    .accept 26721 >>Acepta la misión Bailarinas de ocho patas
    .target Jitters
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver Harris|r
    .target Oliver Harris
    .turnin 26719 >>Entrega la misión Entrega a Harris
    .accept 26720 >>Acepta la misión Una maldición imposible de romper
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_Usa el|r |T134547:0|t[Sagrado Censer] |cRXP_WARN_en|r |cRXP_FRIENDLY_Forlorn Licores|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_Head inside of the Barn Stable|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_Daño al |cRXP_ENEMY_Lurking Huargen|r que aparece hasta el 20% o menos de salud, luego usa|r |T134825:0|t[Pipeta de Harris] |cRXP_WARN_en él|r
    .complete 26720,1 --1/1 Lurking Worgen captured
	.mob Lurking Worgen
    .use 60206
step
    #loop
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,21.695,68.981,0
    .use 60225 >>|cRXP_WARN_Usa el|r |T134547:0|t[Sagrado Censer] |cRXP_WARN_en|r |cRXP_FRIENDLY_Forlorn Licores|r
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver Harris|r y |cRXP_FRIENDLY_Hermana Elsington|r
    .turnin 26720 >>Entrega la misión Una maldición imposible de romper
    .accept 26760 >>Acepta la misión Aullar a la luna
	.timer 58,Aullar a la luna RP
    .goto 47,18.32,57.67
    .turnin 26777 >>Entrega la misión Reconfortando a los espíritus
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>|cRXP_WARN_Espera al Roleplay|r
    >>|cRXP_WARN_Si no obtuviste crédito después de que expire el temporizador, abandona "Aullar a la luna" y acepta la misión de nuevo|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oliver Harris|r, |cRXP_FRIENDLY_Sven Yorgen|r y |cRXP_FRIENDLY_Hermana Elsington|r
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>Entrega la misión Aullar a la luna
    .goto 47,18.32,57.67
    .accept 26723 >>Acepta la misión El destino de Morbent Vil
    .goto 47,18.34,58.06
    .accept 26778 >>Acepta la misión El lamento de los muertos
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sven Yorgen
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John Shelby|r
    .target John Shelby
    .fp Raven Hill>>Aprende la ruta de vuelo Cerro del Cuervo
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>Mata a los |cRXP_ENEMY_Black Widows|r. Despójalos para obtener |cRXP_LOOT_Widow Veneno Sacs|r
	>>|cRXP_WARN_A veces desaparecen durante 1-2s en combate|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .accept 26793 >>Acepta la misión La lápida desgastada
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>Haz clic en |cRXP_PICK_Bloodsoaked Sombrero|r arriba en el suelo
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >> Usa tu Piedra de Hogar para ir a Darkshire
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Entrega la misión La lápida desgastada
    .accept 26794 >>Acepta la misión Morgan Ladimor
    .target Sirra Von'Indi
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 26794 >>Entrega la misión Morgan Ladimor
    .accept 26795 >>Acepta la misión Mor'Ladim
    .target Commander Althea Ebonlocke
step
	#sticky
    .destroy 2154 >> Destruye |T133741:0|t[La historia de Morgan Ladimor]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26685 >>Entrega la misión Un espejo elegante
	.target Viktori Prism'Antras
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Entrega la misión Ladrones ogros
	.target Abercrombie
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Entrega la misión Ladrones ogros
    .accept 26677 >>Acepta la misión Un espantapájaros para necrófagos
	.target Abercrombie
    .maxlevel 28
step
    .goto 47,77.34,36.27,15,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,77.760,33.889
    >>Mata a los |cRXP_ENEMY_Fetid Cadáveres|r. Despójalos para obtener |cRXP_LOOT_Ghoul Ribs|r
	>>|cRXP_WARN_Check for a |cRXP_PICK_Chest|r in and around the House|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Entrega la misión Un espantapájaros para necrófagos
    .accept 26681 >>Acepta la misión Nota para el alcalde
	.target Abercrombie
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entra en el Ayuntamiento|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r
    .turnin 26681 >>Entrega la misión Nota para el alcalde
    .accept 26727 >>Acepta la misión La venganza del Embalsamador
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_Sal de la Alcaldía|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>Mata a |cRXP_ENEMY_Stiches|r.
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_Entra en el Ayuntamiento|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r.
    .turnin 26727 >>Entrega la misión La venganza del Embalsamador
	.target Lord Ello Ebonlocke
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r.
    .fly Raven Hill >>Vuela a Cerro del Cuervo
	.target Felicia Maline
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r y |cRXP_FRIENDLY_Alterio|r
    .turnin 26723 >>Entrega la misión El destino de Morbent Vil
    .accept 26724 >>Acepta la misión El exánime acechante
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>Entrega la misión Bailarinas de ocho patas
    .accept 26787 >>Acepta la misión Cerebros de oso
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sister Elsington.|r
    .turnin 26778 >>Entrega la misión El lamento de los muertos
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Elsington.|r
    .turnin 26724 >>Entrega la misión El exánime acechante
    .accept 26725 >>Acepta la misión Déjate guiar por la Luz
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>Mata a los |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Rotted Ones|r, y |cRXP_ENEMY_Bone Chewers.|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>Mata a |cRXP_ENEMY_Mor'Ladim|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrulla el Cerro del Cuervo Cemetery|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan Mor'Ladim
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>Haz clic en la |cRXP_PICK_Templeluz Vara|r en el suelo
    .turnin 26725 >>Entrega la misión Déjate guiar por la Luz
    .accept 26753 >>Acepta la misión Las cámaras de los muertos
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_Desciende a las Catacumbas. Evita pisar las tumbas ya que aparecerán|r |cRXP_ENEMY_Cadáveres enterrados|r
step
    .goto 47,20.37,27.46
    >>Haz clic en el |cRXP_PICK_Templeluz Arco|r en el suelo
    .turnin 26753 >>Entrega la misión Las cámaras de los muertos
    .accept 26722 >>Acepta la misión Bajo tierra
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_Viaja por el agujero en la pared|r
step
    .goto 47,18.01,25.37
    >>Haz clic en la |cRXP_FRIENDLY_Cresta Templeluz|r en el suelo
    .turnin 26722 >>Entrega la misión Bajo tierra
    .accept 26754 >>Acepta la misión La pesadilla de Morbent
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>|cRXP_WARN_Usa la|r |T135142:0|t[Pesadilla de Morbent] |cRXP_WARN_en|r |cRXP_ENEMY_Morbent Vil|r |cRXP_WARN_para debilitarlo|r
	.use 60212
    .mob Morbent Fel
step
    .goto 47,16.53,31.06
    .use 60212 >>Mata a |cRXP_ENEMY_Morbent Vil|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob Morbent Fel
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_Sal de las Catacumbas|r
step
#sticky
#label morladim
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Mata a |cRXP_ENEMY_Mor'Ladim|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_patrulla el Cementerio de Cerro del Cuervo|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
	.unitscan Mor'Ladim
    .isOnQuest 26795
step
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>Mata |cRXP_ENEMY_Propagadores de Peste|r, |cRXP_ENEMY_Devoradores de Carne|r, |cRXP_ENEMY_Podridos|r, y |cRXP_ENEMY_Masticadores de Hueso.|r
	.complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#requires morladim
	#label CoalB
    #loop
    .goto 47,10.144,41.314,80,0
    .goto 47,11.636,54.060,80,0
    .goto 47,13.663,69.726,80,0
    .goto 47,10.144,41.314,0
    .goto 47,11.636,54.060,0
    .goto 47,13.663,69.726,0
    >>Mata a los |cRXP_ENEMY_Coalpelt Osos|r. Despójalos de sus |cRXP_LOOT_Black Oso Brains|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r y |cRXP_FRIENDLY_Alterio|r
    .turnin 26754 >>Entrega la misión La pesadilla de Morbent
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>Entrega la misión Cerebros de oso
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Elsington|r
    .target Sister Elsington
    .turnin 26778 >>Entrega la misión El lamento de los muertos
    .accept 26838 >>Acepta la misión Rebeldes sin pistas
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >> Viaja a Norte de la Vega de Tuercespina
]])
