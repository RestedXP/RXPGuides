local addonName, addon = ...

-- Devuelve nil ('raw') para entradas que no sean enUS
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "esES", false)
if not L then return end

_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton1:LeftButton"] =
    "Objeto Activo 1"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton2:LeftButton"] =
    "Objeto Activo 2"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton3:LeftButton"] =
    "Objeto Activo 3"
_G["BINDING_NAME_" .. "CLICK RXPItemFrameButton4:LeftButton"] =
    "Objeto Activo 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton1:LeftButton"] =
    "Objetivo Amistoso Activo 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton2:LeftButton"] =
    "Objetivo Amistoso Activo 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton3:LeftButton"] =
    "Objetivo Amistoso Activo 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_FriendlyButton4:LeftButton"] =
    "Objetivo Amistoso Activo 4"

_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton1:LeftButton"] =
    "Objetivo Enemigo Activo 1"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton2:LeftButton"] =
    "Objetivo Enemigo Activo 2"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton3:LeftButton"] =
    "Objetivo Enemigo Activo 3"
_G["BINDING_NAME_" .. "CLICK RXPTargetFrame_EnemyButton4:LeftButton"] =
    "Objetivo Enemigo Activo 4"

-- Words
L.words = { ["Accept"] = _G.ACCEPT, ["Kill"] = "Matar" }

-- Communications.lua
L["Give Feedback for step"] = "Da tu opinión sobre este paso"
L["I just leveled from %d to %d in %s"] = "Acabo de subir de nivel de %d a %d en %s"
L["I just leveled up to %d"] = "Acabo de subir al nivel %d"
L["There's a new addon version (%s) available"] = "Hay una nueva versión del addon (%s) disponible"
L["There's a new version (%s) available for %s"] = "Hay una nueva versión (%s) disponible para %s"
L["Flying to %s ETA %s"] = "Volando a %s, tiempo estimado: %s"
L["Describe your issue:"] = "Describe tu problema:"
L["Do not edit below this line"] = "No edites debajo de esta línea"
L["RestedXP Feedback Form"] = "Formulario de opinión de RestedXP"
L["Join our support discord at discord.gg/RestedXP and copy paste this form into #bug-report"] = "Únete a nuestro Discord de soporte en discord.gg/RestedXP y copia y pega este formulario en #bug-report"
L["day"] = "día"
L["days"] = "días"
L["hour"] = "hora"
L["hours"] = "horas"
L["minute"] = "minuto"
L["minutes"] = "minutos"
L["second"] = "segundo"
L["seconds"] = "segundos"

-- functions.lua
L["Objective Complete"] = "Objetivo Completado"
L["Error parsing guide"] = "Error al analizar la guía"
L["Missing pre-requisites"] = "No cumples los requisitos aún"
L["Retrieving quest data"] = "Recuperando datos de la misión"
L["Go to"] = "Ir a"
L["Set your Hearthstone to"] = "Establece tu piedra de hogar en"
L["Get the %s flight path"] = "Descubre la ruta de vuelo %s"
L["Fly to"] = "Vuela a"
L["Die and respawn at the graveyard"] = "Muere y resucita en el cementerio"
L["Throw away %s%s from your bags"] = "Elimina %s%s de tus bolsas"
L["Grind until you are %d xp away from level %s"] = "Mata enemigos hasta estar a %d EXP del nivel %s"
L["Sell junk/resupply"] = "Vende basura/consigue provisiones"
L["Train skills"] = "Entrena habilidades"
L["Stable your pet"] = "Guarda tu mascota"
L["Click to view the link"] = "Haz clic para ver el enlace"
L["Collect the following items:"] = "Recoge los siguientes objetos:"
L["Attempting to deposit"] = "Intentando depositar"
L["Attempting to withdraw"] = "Intentando retirar"
L["Skip to step %d if you are level %d or above"] = "Sáltate al paso %d si eres nivel %d o superior"

-- GuideLoader.lua
L["Failed to ReadCacheData"] = "Error al leer datos de caché"
L["Incomplete or invalid encoded string"] = "Codigo inválido o incompleto"
L["Total guides loaded: %d/%s"] = "Guías cargadas: %d/%s"
L["Loading Guides"] = "Cargando Guías"
L["Guides Loaded Successfully"] = "Guías cargadas con éxito"
L["Guide has no name"] = "La guía no tiene nombre"

-- GuideWindow.lua
L["Step %d"] = "Paso %d"
L["Welcome to RestedXP Guides\nRight click to pick a guide"] = "Bienvenido a RestedXP Guides\nHaz clic derecho para elegir una guía"
L["Go to step"] = "Ir al paso"
L["Select another guide"] = "Seleccionar otra guía"
L["Reload Guide"] = "Recargar Guía"
L["Available Guides"] = "Guías Disponibles"
L["Gold Farming Guides"] = "Guías de Farmeo de Oro"
L["Deactivate Hardcore mode"] = "Desactivar modo Hardcore"
L["Activate Hardcore mode"] = "Activar modo Hardcore"

-- QuestLog.lua
L["Quest is being picked up at"] = "La misión se recoge en"
L["Quest is being turned in at"] = "La misión se entrega en"

-- RXPGuides.lua
L["Development"] = "Desarrollo"

-- SettingsPanel.lua
L["Please restart your game client and try again"] = "Por favor, reinicia el juego e inténtalo de nuevo"
L["Failed to Import Guides: Invalid Import String"] = "Error al importar guías: cadena de importación inválida"

-- Targeting
L["Maximize Nameplate Distance"] = "Maximizar Distancia de Placas de Nombre"
L["Automatically maximize nameplate visibility distance for better target detection (Requires reload)"] = "Maximiza automáticamente la distancia de visibilidad de las placas de nombre para una mejor detección de objetivos (Requiere recarga)"
