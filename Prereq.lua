-- RXP Prerequis : repere les quetes du guide (et des guides suivants) dont les prerequis
-- ne sont pas faits, les affiche dans une fenetre (arbre des prerequis, niveau colore,
-- XP, etat pour moi et pour chaque membre du groupe) et peut generer un guide qui fait
-- faire la chaine (donneur, objectifs, rendu), dans l'ordre, en sautant ce qui est fait.
-- A la fin du guide genere, on revient au guide d'origine (meme progression).
-- Donnees : base Questie (quetes, PNJ, objets, butins, XP).
-- /prereq          : ouvre la fenetre des prerequis
-- /prereq <id>     : genere le guide de prerequis pour la quete <id>
-- /prereq reset    : re-propose les quetes ignorees
-- /prereq dernier  : affiche (pour copie) le texte du dernier guide genere
local addonName, addon = ...

-- Textes : cle anglaise -> langue du jeu (addon.groupL, fourni par GroupLocale.lua ;
-- repli sur la cle anglaise si absent). Traductions ajoutees ci-dessous, dans l'ordre de K.
local L = addon.groupL or setmetatable({}, {__index = function(_, k) return k end})
do
    local K = {
        "RXP Prerequisites (auto)", "RXP Prerequisites", "Talk to", "Click the",
        "This quest starts from the item", "Dropped by", "Required level: %d", "Accept %s",
        "Complete the quest objectives", "Kill", "Kill %s. Loot them for %s", "Loot %s from the %s",
        "Collect", "Use the", "Turn in %s", "Prerequisites %d - %s",
        "Prerequisites for %s. When this guide is done you go back to your guide.",
        "quest %d, %d prerequisite(s), %d step(s) reordered",
        "travel planner error (using simple order): %s",
        "Questie is required (quest database): install the Questie addon, then /reload.",
        "not possible in combat, try again afterwards.", "quest %s is unknown to Questie.",
        "nothing to do: \"%s\" is already in your quest log or turned in.",
        "guide generation error: %s", "guide created: %d quest(s) to do before \"%s\".",
        "guide created: accept \"%s\", then back to your guide.",
        "\"%s\" ignored (/prereq reset to undo).", "RXP skin unavailable (%s)",
        "scan error (shown once): %s", "error (shown once): %s", "no guide created yet.",
        "last created guide (%s), %d lines: window opened, Ctrl+A then Ctrl+C to copy.",
        "ignored quests will be shown again.",
        "/prereq  -  /prereq <quest id>  -  /prereq reset  -  /prereq last",
        "not taken", "in progress", "ready to turn in", "done",
        "Your guide progresses this quest, but it is not in your quest log.",
        "Blocked: you are missing the quests listed above it.", "Guide step %d",
        "Already listed higher up in this chain.", "(estimate)",
        "Chain: %d prerequisite(s), %s in total", "Needed later (don't skip):", "... and %d more",
        "continued", "accepted", "this quest", "%s: %s (%s, step %d)",
        "Not used by the next guides.", "Me", "unknown", "How to read this window",
        "Each card is a quest from your guide that you cannot accept yet.",
        "Rows are numbered in the order to do them; the locked quest comes last.", "blocked quest",
        "not in log (your guide progresses it, but you don't have it)", "to accept",
        "35-36: needed by the next guide (35-36), don't skip it",
        "[37]: quest level (colour = difficulty)", "~ before the XP: estimate",
        "Squares on the right: quest state for each group member",
        "Guide me: creates a guide for the whole chain, then takes you back to your guide.",
        "Ignore: stop showing it (/prereq reset to undo).", "Hover a row for full details.",
        "Ignore", "Ignore this quest", "It won't be shown again. /prereq reset to undo.", "Guide me",
        "Creates an RXP guide for the missing quests in order, then takes you back to your guide.",
        "Refresh", "Recalculates prerequisites and asks the group for their quest states again.",
        "Close", "unknown (no reply)", "Level %d", "Group:", "solo (no group status)",
        "Current guide", "%d blocked quests", "%d blocked quest", "nothing blocked", "Order: ",
        "(see above)", "Unlocks: ", "Questie is required", "Install the Questie addon, then /reload.",
        "No active RXP guide.", "Pick a guide, then run /prereq again.", "Nothing blocked.",
        "You can follow your guide.", "Quest Prerequisites", "Hover a quest for details.", "legend",
        "Last prerequisite guide", "last", "Route recalculated from your position.", "locked - needs %s", "not in your log", "locked", "Quest giver: %s", "after %s.", "for %s", "%s yd", "%d min", "%d flight(s)", "%d boat(s)", "Kill:", "Loot:", "XP per minute: %s", "~%d kills", "Back to your guide: %s", "Talk to %s", "Talk to NPCs", "Deliver %s to %s", "Kill %s", "Loot %s", "from %s", "Use/collect %s", "Go to %s", "in %s", "Asked to do in your guide - missing prerequisites:", "Asked to do in your guide - not in your quest log:", "step %d", "Do all prerequisites", "Do all", "Missing prereqs:", "Not in your log:", "/prereq resetsize: default window size", "All prerequisites - %s", "All prerequisites for %d blocked quests. When this guide is done you go back to your guide.", "One guide for every blocked chain of this guide, in the shortest order, then back to your guide.", "%d chain(s)", "Total XP: %s", "Buy %s at the Auction House", "last price %s", "guide created: %d chain(s), %d quest(s) to do.", "(optional)",
    }
    local T = {
        frFR = {
            "RXP Prérequis (auto)", "RXP Prérequis", "Parler à", "Cliquer sur",
            "Cette quête commence avec l'objet", "Lâché par", "Niveau requis : %d", "Prendre %s",
            "Remplir les objectifs de la quête", "Tuer", "Tuer %s. Les dépouiller pour %s", "Ramasser %s sur %s",
            "Récupérer", "Utiliser", "Rendre %s", "Prérequis %d - %s",
            "Prérequis de %s. À la fin de ce guide, tu reviens à ton guide.",
            "quête %d, %d prérequis, %d étape(s) remise(s) dans l'ordre",
            "erreur du planificateur de trajets (ordre simple utilisé) : %s",
            "Questie est nécessaire (base de données des quêtes) : installe l'addon Questie puis /reload.",
            "impossible en combat, réessaie après.", "quête %s inconnue de Questie.",
            "rien à faire : « %s » est déjà dans ton journal ou rendue.",
            "erreur de génération du guide : %s", "guide créé : %d quête(s) à faire avant « %s ».",
            "guide créé : prendre « %s », puis retour à ton guide.",
            "« %s » ignorée (/prereq reset pour annuler).", "habillage RXP indisponible (%s)",
            "erreur d'analyse (affichée une seule fois) : %s", "erreur (affichée une seule fois) : %s", "aucun guide créé pour l'instant.",
            "dernier guide créé (%s), %d lignes : fenêtre ouverte, Ctrl+A puis Ctrl+C pour copier.",
            "les quêtes ignorées seront de nouveau proposées.",
            "/prereq  -  /prereq <id de quête>  -  /prereq reset  -  /prereq dernier",
            "pas prise", "en cours", "à rendre", "faite",
            "Ton guide fait avancer cette quête, mais elle n'est pas dans ton journal.",
            "Verrouillée : il te manque les quêtes listées au-dessus.", "Étape %d du guide",
            "Déjà listée plus haut dans cette chaîne.", "(estimation)",
            "Chaîne : %d prérequis, %s au total", "Utile pour la suite (ne pas skip) :", "... et %d autre(s)",
            "poursuivie", "prise", "cette quête", "%s : %s (%s, étape %d)",
            "Pas utilisée par les guides suivants.", "Moi", "inconnu", "Comment lire cette fenêtre",
            "Chaque carte = une quête de ton guide que tu ne peux pas encore prendre.",
            "Les lignes sont numérotées dans l'ordre où les faire ; la quête verrouillée est en dernier.", "quête bloquée",
            "hors journal (ton guide la fait avancer, mais tu ne l'as pas)", "à prendre",
            "35-36 : sert dans le guide suivant (35-36), à ne pas skip",
            "[37] : niveau de la quête (couleur = difficulté)", "~ devant l'XP : estimation",
            "Pastilles à droite : état de la quête chez chaque membre du groupe",
            "Me guider : crée un guide qui fait toute la chaîne, puis te ramène à ton guide.",
            "Ignorer : ne plus la proposer (/prereq reset pour annuler).", "Survole une ligne pour tout le détail.",
            "Ignorer", "Ignorer cette quête", "Elle ne sera plus proposée. /prereq reset pour annuler.", "Me guider",
            "Crée un guide RXP qui te fait faire les quêtes manquantes dans l'ordre, puis te ramène à ton guide.",
            "Actualiser", "Recalcule les prérequis et redemande l'état des quêtes au groupe.",
            "Fermer", "inconnu (pas de réponse)", "Niveau %d", "Groupe :", "seul (pas d'état du groupe)",
            "Guide actuel", "%d quêtes bloquées", "%d quête bloquée", "rien de bloquant", "Ordre : ",
            "(voir plus haut)", "Débloque : ", "Questie est nécessaire", "Installe l'addon Questie puis /reload.",
            "Aucun guide RXP actif.", "Choisis un guide, puis refais /prereq.", "Rien de bloquant.",
            "Tu peux suivre ton guide.", "Prérequis de quêtes", "Survole une quête pour le détail.", "légende",
            "Dernier guide de prérequis", "dernier", "Itinéraire recalculé depuis ta position.", "verrouillée - il faut %s", "pas dans ton journal", "verrouillée", "Donneur de quête : %s", "après %s.", "pour %s", "%s m", "%d min", "%d vol(s)", "%d bateau(x)", "Tuer :", "Ramasser :", "XP par minute : %s", "~%d victimes", "Retour à ton guide : %s", "Parler à %s", "Parler aux PNJ", "Livrer %s à %s", "Tuer %s", "Ramasser %s", "sur %s", "Utiliser/ramasser %s", "Aller à %s", "(%s)", "Demandé par ton guide - prérequis manquants :", "Demandé par ton guide - pas dans ton journal :", "étape %d", "Faire tous les prérequis", "Tout faire", "Prérequis manquants :", "Pas dans ton journal :", "/prereq resetsize : taille par défaut de la fenêtre", "Tous les prérequis - %s", "Tous les prérequis de %d quêtes bloquées. À la fin de ce guide, tu reviens à ton guide.", "Un seul guide pour toutes les chaînes bloquées de ce guide, dans l'ordre le plus court, puis retour à ton guide.", "%d chaîne(s)", "XP totale : %s", "Acheter %s à l'hôtel des ventes", "dernier prix %s", "guide créé : %d chaîne(s), %d quête(s) à faire.", "(facultatif)",
        },
        deDE = {
            "RXP Voraussetzungen (auto)", "RXP Voraussetzungen", "Sprich mit", "Klicke auf",
            "Diese Quest beginnt mit dem Gegenstand", "Beute von", "Benötigte Stufe: %d", "Nimm %s an",
            "Erfülle die Questziele", "Töte", "Töte %s. Plündere sie für %s", "Plündere %s von %s",
            "Sammle", "Benutze", "Gib %s ab", "Voraussetzungen %d - %s",
            "Voraussetzungen für %s. Danach geht es zurück zu deinem Guide.",
            "Quest %d, %d Voraussetzung(en), %d Schritt(e) neu geordnet",
            "Fehler der Routenplanung (einfache Reihenfolge): %s",
            "Questie wird benötigt (Questdatenbank): installiere das Addon Questie, dann /reload.",
            "Im Kampf nicht möglich, versuche es danach erneut.", "Quest %s ist Questie unbekannt.",
            "Nichts zu tun: '%s' ist schon im Questlog oder abgegeben.",
            "Fehler beim Erstellen des Guides: %s", "Guide erstellt: %d Quest(s) vor '%s'.",
            "Guide erstellt: nimm '%s' an, dann zurück zu deinem Guide.",
            "'%s' ignoriert (/prereq reset zum Rückgängigmachen).", "RXP-Design nicht verfügbar (%s)",
            "Analysefehler (nur einmal angezeigt): %s", "Fehler (nur einmal angezeigt): %s", "Noch kein Guide erstellt.",
            "Letzter erstellter Guide (%s), %d Zeilen: Fenster geöffnet, Strg+A dann Strg+C zum Kopieren.",
            "Ignorierte Quests werden wieder angezeigt.",
            "/prereq  -  /prereq <Quest-ID>  -  /prereq reset  -  /prereq letzter",
            "nicht angenommen", "in Arbeit", "abgabebereit", "erledigt",
            "Dein Guide führt diese Quest weiter, aber sie ist nicht in deinem Questlog.",
            "Gesperrt: dir fehlen die darüber aufgeführten Quests.", "Guide-Schritt %d",
            "Weiter oben in dieser Kette bereits aufgeführt.", "(Schätzung)",
            "Kette: %d Voraussetzung(en), insgesamt %s", "Später benötigt (nicht überspringen):", "... und %d weitere",
            "fortgesetzt", "angenommen", "diese Quest", "%s: %s (%s, Schritt %d)",
            "Von den nächsten Guides nicht benötigt.", "Ich", "unbekannt", "So liest du dieses Fenster",
            "Jede Karte ist eine Quest deines Guides, die du noch nicht annehmen kannst.",
            "Die Zeilen sind in der Reihenfolge nummeriert, in der du sie erledigst; die gesperrte Quest kommt zuletzt.", "blockierte Quest",
            "nicht im Questlog (dein Guide führt sie weiter, aber du hast sie nicht)", "anzunehmen",
            "35-36: wird im nächsten Guide (35-36) benötigt, nicht überspringen",
            "[37]: Queststufe (Farbe = Schwierigkeit)", "~ vor den EP: Schätzung",
            "Felder rechts: Queststatus jedes Gruppenmitglieds",
            "Führe mich: erstellt einen Guide für die ganze Kette und bringt dich danach zurück.",
            "Ignorieren: nicht mehr anzeigen (/prereq reset zum Rückgängigmachen).", "Fahre über eine Zeile für alle Details.",
            "Ignorieren", "Diese Quest ignorieren", "Sie wird nicht mehr angezeigt. /prereq reset zum Rückgängigmachen.", "Führe mich",
            "Erstellt einen RXP-Guide für die fehlenden Quests in der richtigen Reihenfolge und bringt dich danach zu deinem Guide zurück.",
            "Aktualisieren", "Berechnet die Voraussetzungen neu und fragt die Gruppe erneut nach ihrem Queststatus.",
            "Schließen", "unbekannt (keine Antwort)", "Stufe %d", "Gruppe:", "allein (kein Gruppenstatus)",
            "Aktueller Guide", "%d blockierte Quests", "%d blockierte Quest", "nichts blockiert", "Reihenfolge: ",
            "(siehe oben)", "Schaltet frei: ", "Questie wird benötigt", "Installiere das Addon Questie, dann /reload.",
            "Kein aktiver RXP-Guide.", "Wähle einen Guide und führe /prereq erneut aus.", "Nichts blockiert.",
            "Du kannst deinem Guide folgen.", "Questvoraussetzungen", "Fahre über eine Quest für Details.", "Legende",
            "Letzter Voraussetzungs-Guide", "letzter", "Route ab deiner Position neu berechnet.", "gesperrt - braucht %s", "nicht in deinem Questlog", "gesperrt", "Questgeber: %s", "nach %s.", "für %s", "%s m", "%d Min.", "%d Flug/Flüge", "%d Schiff(e)", "Töten:", "Plündern:", "EP pro Minute: %s", "~%d Kills", "Zurück zu deinem Guide: %s", "Sprich mit %s", "Mit NPCs sprechen", "Bring %s zu %s", "Töte %s", "Plündere %s", "von %s", "Benutze/sammle %s", "Geh zu %s", "in %s", "Von deinem Guide verlangt - fehlende Voraussetzungen:", "Von deinem Guide verlangt - nicht im Questlog:", "Schritt %d", "Alle Voraussetzungen erledigen", "Alles erledigen", "Fehlende Voraussetzungen:", "Nicht im Questlog:", "/prereq resetsize: Standardgröße des Fensters", "Alle Voraussetzungen - %s", "Alle Voraussetzungen für %d blockierte Quests. Danach geht es zurück zu deinem Guide.", "Ein Guide für alle blockierten Ketten dieses Guides, in der kürzesten Reihenfolge, danach zurück zu deinem Guide.", "%d Kette(n)", "EP gesamt: %s", "Kaufe %s im Auktionshaus", "letzter Preis %s", "Guide erstellt: %d Kette(n), %d Quest(s) zu erledigen.", "(optional)",
        },
        esES = {
            "RXP Requisitos (auto)", "RXP Requisitos", "Habla con", "Haz clic en",
            "Esta misión empieza con el objeto", "Lo suelta", "Nivel requerido: %d", "Acepta %s",
            "Completa los objetivos de la misión", "Mata", "Mata %s. Saquéalos para obtener %s", "Saquea %s de %s",
            "Recoge", "Usa", "Entrega %s", "Requisitos %d - %s",
            "Requisitos de %s. Al terminar esta guía vuelves a tu guía.",
            "misión %d, %d requisito(s), %d paso(s) reordenado(s)",
            "error del planificador de rutas (orden simple): %s",
            "Se necesita Questie (base de datos de misiones): instala el addon Questie y luego /reload.",
            "no es posible en combate, inténtalo después.", "misión %s desconocida para Questie.",
            "nada que hacer: «%s» ya está en tu registro o entregada.",
            "error al generar la guía: %s", "guía creada: %d misión(es) antes de «%s».",
            "guía creada: acepta «%s» y vuelve a tu guía.",
            "«%s» ignorada (/prereq reset para deshacer).", "tema de RXP no disponible (%s)",
            "error de análisis (se muestra una vez): %s", "error (se muestra una vez): %s", "todavía no se ha creado ninguna guía.",
            "última guía creada (%s), %d líneas: ventana abierta, Ctrl+A y luego Ctrl+C para copiar.",
            "las misiones ignoradas volverán a mostrarse.",
            "/prereq  -  /prereq <id de misión>  -  /prereq reset  -  /prereq ultimo",
            "no aceptada", "en curso", "lista para entregar", "hecha",
            "Tu guía avanza esta misión, pero no está en tu registro.",
            "Bloqueada: te faltan las misiones de arriba.", "Paso %d de la guía",
            "Ya aparece más arriba en esta cadena.", "(estimación)",
            "Cadena: %d requisito(s), %s en total", "Necesaria más adelante (no saltar):", "... y %d más",
            "continuada", "aceptada", "esta misión", "%s: %s (%s, paso %d)",
            "No la usan las siguientes guías.", "Yo", "desconocido", "Cómo leer esta ventana",
            "Cada tarjeta es una misión de tu guía que aún no puedes aceptar.",
            "Las filas están numeradas en el orden en que hacerlas; la misión bloqueada va al final.", "misión bloqueada",
            "fuera del registro (tu guía la avanza, pero no la tienes)", "por aceptar",
            "35-36: la necesita la siguiente guía (35-36), no la saltes",
            "[37]: nivel de la misión (color = dificultad)", "~ antes de la XP: estimación",
            "Cuadros a la derecha: estado de la misión de cada miembro del grupo",
            "Guíame: crea una guía para toda la cadena y luego te devuelve a tu guía.",
            "Ignorar: dejar de mostrarla (/prereq reset para deshacer).", "Pasa el ratón por una fila para ver los detalles.",
            "Ignorar", "Ignorar esta misión", "No volverá a mostrarse. /prereq reset para deshacer.", "Guíame",
            "Crea una guía de RXP con las misiones que faltan, en orden, y luego te devuelve a tu guía.",
            "Actualizar", "Recalcula los requisitos y vuelve a pedir al grupo el estado de sus misiones.",
            "Cerrar", "desconocido (sin respuesta)", "Nivel %d", "Grupo:", "solo (sin estado del grupo)",
            "Guía actual", "%d misiones bloqueadas", "%d misión bloqueada", "nada bloqueado", "Orden: ",
            "(ver arriba)", "Desbloquea: ", "Se necesita Questie", "Instala el addon Questie y luego /reload.",
            "Ninguna guía de RXP activa.", "Elige una guía y vuelve a usar /prereq.", "Nada bloqueado.",
            "Puedes seguir tu guía.", "Requisitos de misiones", "Pasa el ratón por una misión para ver los detalles.", "leyenda",
            "Última guía de requisitos", "ultimo", "Ruta recalculada desde tu posición.", "bloqueada - necesita %s", "no está en tu registro", "bloqueada", "Da la misión: %s", "después de %s.", "para %s", "%s m", "%d min", "%d vuelo(s)", "%d barco(s)", "Matar:", "Saquear:", "XP por minuto: %s", "~%d muertes", "De vuelta a tu guía: %s", "Habla con %s", "Habla con los PNJ", "Entrega %s a %s", "Mata %s", "Saquea %s", "de %s", "Usa/recoge %s", "Ve a %s", "en %s", "Tu guía te lo pide - faltan requisitos:", "Tu guía te lo pide - no está en tu registro:", "paso %d", "Hacer todos los requisitos", "Hacerlo todo", "Faltan requisitos:", "No en tu registro:", "/prereq resetsize: tamaño de ventana por defecto", "Todos los requisitos - %s", "Todos los requisitos de %d misiones bloqueadas. Al terminar esta guía vuelves a tu guía.", "Una sola guía para todas las cadenas bloqueadas de esta guía, en el orden más corto, y luego vuelves a tu guía.", "%d cadena(s)", "XP total: %s", "Compra %s en la casa de subastas", "último precio %s", "guía creada: %d cadena(s), %d misión(es) por hacer.", "(opcional)",
        },
        itIT = {
            "RXP Prerequisiti (auto)", "RXP Prerequisiti", "Parla con", "Clicca su",
            "Questa missione inizia dall'oggetto", "Rilasciato da", "Livello richiesto: %d", "Accetta %s",
            "Completa gli obiettivi della missione", "Uccidi", "Uccidi %s. Saccheggiali per %s", "Raccogli %s da %s",
            "Raccogli", "Usa", "Consegna %s", "Prerequisiti %d - %s",
            "Prerequisiti per %s. Al termine di questa guida torni alla tua guida.",
            "missione %d, %d prerequisiti, %d passi riordinati",
            "errore del pianificatore di percorso (ordine semplice): %s",
            "Serve Questie (database delle missioni): installa l'addon Questie, poi /reload.",
            "impossibile in combattimento, riprova dopo.", "missione %s sconosciuta a Questie.",
            "niente da fare: «%s» è già nel tuo registro o consegnata.",
            "errore nella creazione della guida: %s", "guida creata: %d missioni da fare prima di «%s».",
            "guida creata: accetta «%s», poi torna alla tua guida.",
            "«%s» ignorata (/prereq reset per annullare).", "tema RXP non disponibile (%s)",
            "errore di analisi (mostrato una volta): %s", "errore (mostrato una volta): %s", "nessuna guida creata finora.",
            "ultima guida creata (%s), %d righe: finestra aperta, Ctrl+A poi Ctrl+C per copiare.",
            "le missioni ignorate verranno mostrate di nuovo.",
            "/prereq  -  /prereq <id missione>  -  /prereq reset  -  /prereq ultimo",
            "non presa", "in corso", "da consegnare", "fatta",
            "La tua guida fa avanzare questa missione, ma non è nel tuo registro.",
            "Bloccata: ti mancano le missioni elencate sopra.", "Passo %d della guida",
            "Già elencata più in alto in questa catena.", "(stima)",
            "Catena: %d prerequisiti, %s in totale", "Serve più avanti (non saltare):", "... e altre %d",
            "proseguita", "accettata", "questa missione", "%s: %s (%s, passo %d)",
            "Non usata dalle guide successive.", "Io", "sconosciuto", "Come leggere questa finestra",
            "Ogni scheda è una missione della tua guida che non puoi ancora accettare.",
            "Le righe sono numerate nell'ordine in cui farle; la missione bloccata è l'ultima.", "missione bloccata",
            "non nel registro (la tua guida la fa avanzare, ma non ce l'hai)", "da accettare",
            "35-36: serve nella guida successiva (35-36), non saltarla",
            "[37]: livello della missione (colore = difficoltà)", "~ prima dei PE: stima",
            "Quadratini a destra: stato della missione per ogni membro del gruppo",
            "Guidami: crea una guida per tutta la catena, poi ti riporta alla tua guida.",
            "Ignora: non mostrarla più (/prereq reset per annullare).", "Passa il mouse su una riga per tutti i dettagli.",
            "Ignora", "Ignora questa missione", "Non verrà più mostrata. /prereq reset per annullare.", "Guidami",
            "Crea una guida RXP con le missioni mancanti in ordine, poi ti riporta alla tua guida.",
            "Aggiorna", "Ricalcola i prerequisiti e richiede di nuovo al gruppo lo stato delle missioni.",
            "Chiudi", "sconosciuto (nessuna risposta)", "Livello %d", "Gruppo:", "da solo (nessuno stato del gruppo)",
            "Guida attuale", "%d missioni bloccate", "%d missione bloccata", "niente di bloccato", "Ordine: ",
            "(vedi sopra)", "Sblocca: ", "Serve Questie", "Installa l'addon Questie, poi /reload.",
            "Nessuna guida RXP attiva.", "Scegli una guida, poi usa di nuovo /prereq.", "Niente di bloccato.",
            "Puoi seguire la tua guida.", "Prerequisiti delle missioni", "Passa il mouse su una missione per i dettagli.", "legenda",
            "Ultima guida dei prerequisiti", "ultimo", "Percorso ricalcolato dalla tua posizione.", "bloccata - serve %s", "non è nel tuo registro", "bloccata", "Assegnata da: %s", "dopo %s.", "per %s", "%s m", "%d min", "%d volo/i", "%d nave/i", "Uccidere:", "Raccogliere:", "PE al minuto: %s", "~%d uccisioni", "Torna alla tua guida: %s", "Parla con %s", "Parla con i PNG", "Consegna %s a %s", "Uccidi %s", "Raccogli %s", "da %s", "Usa/raccogli %s", "Vai a %s", "in %s", "Richiesta dalla tua guida - prerequisiti mancanti:", "Richiesta dalla tua guida - non nel registro:", "passo %d", "Fai tutti i prerequisiti", "Fai tutto", "Prerequisiti mancanti:", "Non nel registro:", "/prereq resetsize: dimensione predefinita della finestra", "Tutti i prerequisiti - %s", "Tutti i prerequisiti di %d missioni bloccate. Al termine di questa guida torni alla tua guida.", "Una sola guida per tutte le catene bloccate di questa guida, nell'ordine più breve, poi torni alla tua guida.", "%d catena/e", "PE totali: %s", "Compra %s alla casa d'aste", "ultimo prezzo %s", "guida creata: %d catena/e, %d missioni da fare.", "(facoltativo)",
        },
        ptBR = {
            "RXP Pré-requisitos (auto)", "RXP Pré-requisitos", "Fale com", "Clique em",
            "Esta missão começa com o item", "Derrubado por", "Nível necessário: %d", "Aceite %s",
            "Complete os objetivos da missão", "Mate", "Mate %s. Saqueie-os para obter %s", "Saqueie %s de %s",
            "Colete", "Use", "Entregue %s", "Pré-requisitos %d - %s",
            "Pré-requisitos de %s. Ao terminar este guia você volta ao seu guia.",
            "missão %d, %d pré-requisito(s), %d passo(s) reordenado(s)",
            "erro do planejador de rotas (ordem simples): %s",
            "O Questie é necessário (banco de dados de missões): instale o addon Questie e use /reload.",
            "impossível em combate, tente depois.", "missão %s desconhecida pelo Questie.",
            "nada a fazer: '%s' já está no seu registro ou foi entregue.",
            "erro ao gerar o guia: %s", "guia criado: %d missão(ões) antes de '%s'.",
            "guia criado: aceite '%s' e depois volte ao seu guia.",
            "'%s' ignorada (/prereq reset para desfazer).", "tema do RXP indisponível (%s)",
            "erro de análise (mostrado uma vez): %s", "erro (mostrado uma vez): %s", "nenhum guia criado ainda.",
            "último guia criado (%s), %d linhas: janela aberta, Ctrl+A e depois Ctrl+C para copiar.",
            "as missões ignoradas voltarão a ser mostradas.",
            "/prereq  -  /prereq <id da missão>  -  /prereq reset  -  /prereq ultimo",
            "não aceita", "em andamento", "pronta para entregar", "concluída",
            "Seu guia avança esta missão, mas ela não está no seu registro.",
            "Bloqueada: faltam as missões listadas acima.", "Passo %d do guia",
            "Já listada mais acima nesta cadeia.", "(estimativa)",
            "Cadeia: %d pré-requisito(s), %s no total", "Necessária depois (não pule):", "... e mais %d",
            "continuada", "aceita", "esta missão", "%s: %s (%s, passo %d)",
            "Não usada pelos próximos guias.", "Eu", "desconhecido", "Como ler esta janela",
            "Cada cartão é uma missão do seu guia que você ainda não pode aceitar.",
            "As linhas estão numeradas na ordem em que fazê-las; a missão bloqueada vem por último.", "missão bloqueada",
            "fora do registro (seu guia a avança, mas você não a tem)", "a aceitar",
            "35-36: necessária no próximo guia (35-36), não pule",
            "[37]: nível da missão (cor = dificuldade)", "~ antes do XP: estimativa",
            "Quadrados à direita: estado da missão de cada membro do grupo",
            "Guie-me: cria um guia para toda a cadeia e depois volta ao seu guia.",
            "Ignorar: não mostrar mais (/prereq reset para desfazer).", "Passe o mouse sobre uma linha para ver os detalhes.",
            "Ignorar", "Ignorar esta missão", "Ela não será mais mostrada. /prereq reset para desfazer.", "Guie-me",
            "Cria um guia do RXP com as missões que faltam, em ordem, e depois volta ao seu guia.",
            "Atualizar", "Recalcula os pré-requisitos e pede de novo ao grupo o estado das missões.",
            "Fechar", "desconhecido (sem resposta)", "Nível %d", "Grupo:", "sozinho (sem estado do grupo)",
            "Guia atual", "%d missões bloqueadas", "%d missão bloqueada", "nada bloqueado", "Ordem: ",
            "(ver acima)", "Desbloqueia: ", "O Questie é necessário", "Instale o addon Questie e use /reload.",
            "Nenhum guia do RXP ativo.", "Escolha um guia e use /prereq de novo.", "Nada bloqueado.",
            "Você pode seguir seu guia.", "Pré-requisitos de missões", "Passe o mouse sobre uma missão para ver os detalhes.", "legenda",
            "Último guia de pré-requisitos", "ultimo", "Rota recalculada a partir da sua posição.", "bloqueada - precisa de %s", "não está no seu registro", "bloqueada", "Quem dá a missão: %s", "depois de %s.", "para %s", "%s m", "%d min", "%d voo(s)", "%d barco(s)", "Matar:", "Saquear:", "XP por minuto: %s", "~%d abates", "De volta ao seu guia: %s", "Fale com %s", "Fale com os PNJs", "Entregue %s a %s", "Mate %s", "Saqueie %s", "de %s", "Use/colete %s", "Vá para %s", "em %s", "Pedida pelo seu guia - pré-requisitos faltando:", "Pedida pelo seu guia - fora do registro:", "passo %d", "Fazer todos os pré-requisitos", "Fazer tudo", "Pré-requisitos faltando:", "Fora do registro:", "/prereq resetsize: tamanho padrão da janela", "Todos os pré-requisitos - %s", "Todos os pré-requisitos de %d missões bloqueadas. Ao terminar este guia você volta ao seu guia.", "Um único guia para todas as cadeias bloqueadas deste guia, na ordem mais curta, e depois volta ao seu guia.", "%d cadeia(s)", "XP total: %s", "Compre %s na casa de leilões", "último preço %s", "guia criado: %d cadeia(s), %d missão(ões) a fazer.", "(opcional)",
        },
        ruRU = {
            "RXP Предварительные (авто)", "RXP Предварительные", "Поговорите с", "Нажмите на",
            "Задание начинается с предмета", "Добыча с", "Требуемый уровень: %d", "Возьмите %s",
            "Выполните цели задания", "Убейте", "Убейте %s. Обыщите их, чтобы получить %s", "Заберите %s из %s",
            "Соберите", "Используйте", "Сдайте %s", "Предварительные %d - %s",
            "Предварительные задания для %s. После этого руководства вы вернётесь к своему.",
            "задание %d, предварительных: %d, переставлено шагов: %d",
            "ошибка планировщика маршрута (простой порядок): %s",
            "Нужен Questie (база заданий): установите аддон Questie, затем /reload.",
            "невозможно в бою, попробуйте позже.", "задание %s неизвестно Questie.",
            "делать нечего: «%s» уже в журнале или сдано.",
            "ошибка создания руководства: %s", "руководство создано: %d задан. перед «%s».",
            "руководство создано: возьмите «%s», затем вернитесь к своему руководству.",
            "«%s» игнорируется (/prereq reset для отмены).", "оформление RXP недоступно (%s)",
            "ошибка анализа (показывается один раз): %s", "ошибка (показывается один раз): %s", "руководство ещё не создано.",
            "последнее руководство (%s), строк: %d. Окно открыто, Ctrl+A, затем Ctrl+C для копирования.",
            "игнорируемые задания снова будут показаны.",
            "/prereq  -  /prereq <ID задания>  -  /prereq reset  -  /prereq последний",
            "не взято", "в процессе", "можно сдать", "выполнено",
            "Руководство продвигает это задание, но его нет в вашем журнале.",
            "Закрыто: не хватает заданий, указанных выше.", "Шаг руководства %d",
            "Уже указано выше в этой цепочке.", "(оценка)",
            "Цепочка: предварительных %d, всего %s", "Понадобится позже (не пропускать):", "... и ещё %d",
            "продолжено", "взято", "это задание", "%s: %s (%s, шаг %d)",
            "Не используется в следующих руководствах.", "Я", "неизвестно", "Как читать это окно",
            "Каждая карточка - задание из руководства, которое пока нельзя взять.",
            "Строки пронумерованы в порядке выполнения; закрытое задание - последнее.", "заблокированное задание",
            "нет в журнале (руководство продвигает его, но у вас его нет)", "взять",
            "35-36: нужно в следующем руководстве (35-36), не пропускайте",
            "[37]: уровень задания (цвет = сложность)", "~ перед опытом: оценка",
            "Квадраты справа: состояние задания у каждого участника группы",
            "Вести меня: создаёт руководство для всей цепочки, затем возвращает к вашему.",
            "Игнорировать: больше не показывать (/prereq reset для отмены).", "Наведите на строку, чтобы увидеть подробности.",
            "Игнор", "Игнорировать это задание", "Оно больше не будет показано. /prereq reset для отмены.", "Вести меня",
            "Создаёт руководство RXP для недостающих заданий по порядку, затем возвращает к вашему руководству.",
            "Обновить", "Пересчитывает предварительные задания и снова запрашивает у группы их состояние.",
            "Закрыть", "неизвестно (нет ответа)", "Уровень %d", "Группа:", "один (нет данных группы)",
            "Текущее руководство", "Заблокировано заданий: %d", "Заблокировано заданий: %d", "ничего не заблокировано", "Порядок: ",
            "(см. выше)", "Открывает: ", "Нужен Questie", "Установите аддон Questie, затем /reload.",
            "Нет активного руководства RXP.", "Выберите руководство и снова введите /prereq.", "Ничего не заблокировано.",
            "Можно следовать руководству.", "Предварительные задания", "Наведите на задание, чтобы увидеть подробности.", "легенда",
            "Последнее руководство", "последний", "Маршрут пересчитан от вашего местоположения.", "закрыто - нужно: %s", "нет в вашем журнале", "закрыто", "Выдаёт задание: %s", "после %s.", "для: %s", "%s м", "%d мин", "полётов: %d", "кораблей: %d", "Убить:", "Добыть:", "Опыта в минуту: %s", "~%d убийств", "Назад к вашему руководству: %s", "Поговорите: %s", "Поговорите с НИП", "Доставьте %s: %s", "Убейте: %s", "Добудьте: %s", "(с: %s)", "Используйте/соберите: %s", "Идите: %s", "(%s)", "Требуется руководством - не хватает предварительных:", "Требуется руководством - нет в журнале:", "шаг %d", "Выполнить все предварительные", "Выполнить все", "Не хватает:", "Нет в журнале:", "/prereq resetsize: размер окна по умолчанию", "Все предварительные - %s", "Все предварительные задания для %d заблокированных заданий. После этого руководства вы вернётесь к своему.", "Одно руководство для всех заблокированных цепочек, в самом коротком порядке, затем возврат к вашему руководству.", "цепочек: %d", "Всего опыта: %s", "Купите %s на аукционе", "последняя цена %s", "руководство создано: цепочек %d, заданий %d.", "(необязательно)",
        },
        koKR = {
            "RXP 선행 퀘스트 (자동)", "RXP 선행 퀘스트", "대화:", "클릭:",
            "이 퀘스트는 아이템으로 시작합니다:", "획득처:", "필요 레벨: %d", "%s 수락",
            "퀘스트 목표 완료", "처치:", "%s 처치. %s 획득", "%s 획득 (%s)",
            "수집:", "사용:", "%s 완료 보고", "선행 퀘스트 %d - %s",
            "%s 선행 퀘스트. 이 가이드가 끝나면 원래 가이드로 돌아갑니다.",
            "퀘스트 %d, 선행 %d개, 순서 조정 %d단계",
            "경로 계획 오류 (기본 순서 사용): %s",
            "Questie가 필요합니다 (퀘스트 데이터베이스): Questie 애드온을 설치한 뒤 /reload 하세요.",
            "전투 중에는 할 수 없습니다. 나중에 다시 시도하세요.", "Questie에 없는 퀘스트: %s",
            "할 일 없음: '%s' 퀘스트는 이미 목록에 있거나 완료했습니다.",
            "가이드 생성 오류: %s", "가이드 생성: 퀘스트 %d개 후 '%s'",
            "가이드 생성: '%s' 수락 후 원래 가이드로 돌아갑니다.",
            "'%s' 무시됨 (/prereq reset 으로 취소).", "RXP 테마를 사용할 수 없음 (%s)",
            "분석 오류 (한 번만 표시): %s", "오류 (한 번만 표시): %s", "아직 생성된 가이드가 없습니다.",
            "마지막 생성 가이드 (%s), %d줄: 창이 열렸습니다. Ctrl+A 후 Ctrl+C로 복사하세요.",
            "무시한 퀘스트가 다시 표시됩니다.",
            "/prereq  -  /prereq <퀘스트 ID>  -  /prereq reset  -  /prereq 마지막",
            "미수락", "진행 중", "보고 가능", "완료",
            "가이드가 이 퀘스트를 진행하지만 퀘스트 목록에 없습니다.",
            "잠김: 위의 퀘스트가 부족합니다.", "가이드 %d단계",
            "이 연계에서 이미 위에 표시됨.", "(추정)",
            "연계: 선행 %d개, 총 %s", "나중에 필요 (건너뛰지 마세요):", "... 외 %d개",
            "이어서", "수락", "이 퀘스트", "%s: %s (%s, %d단계)",
            "다음 가이드에서 사용하지 않음.", "나", "알 수 없음", "이 창 보는 법",
            "각 카드는 아직 수락할 수 없는 가이드 퀘스트입니다.",
            "줄 번호는 진행 순서이며, 잠긴 퀘스트가 마지막입니다.", "막힌 퀘스트",
            "목록에 없음 (가이드가 진행하지만 퀘스트가 없음)", "수락 필요",
            "35-36: 다음 가이드(35-36)에서 필요, 건너뛰지 마세요",
            "[37]: 퀘스트 레벨 (색 = 난이도)", "경험치 앞의 ~: 추정치",
            "오른쪽 칸: 파티원별 퀘스트 상태",
            "안내: 연계 전체 가이드를 만들고 끝나면 원래 가이드로 돌아갑니다.",
            "무시: 더 이상 표시 안 함 (/prereq reset 으로 취소).", "줄에 마우스를 올리면 자세한 내용이 표시됩니다.",
            "무시", "이 퀘스트 무시", "더 이상 표시되지 않습니다. /prereq reset 으로 취소.", "안내",
            "부족한 퀘스트를 순서대로 진행하는 RXP 가이드를 만들고, 끝나면 원래 가이드로 돌아갑니다.",
            "새로 고침", "선행 퀘스트를 다시 계산하고 파티에 퀘스트 상태를 다시 요청합니다.",
            "닫기", "알 수 없음 (응답 없음)", "레벨 %d", "파티:", "혼자 (파티 상태 없음)",
            "현재 가이드", "막힌 퀘스트 %d개", "막힌 퀘스트 %d개", "막힌 퀘스트 없음", "순서: ",
            "(위 참조)", "해제: ", "Questie가 필요합니다", "Questie 애드온을 설치한 뒤 /reload 하세요.",
            "활성화된 RXP 가이드가 없습니다.", "가이드를 선택한 뒤 /prereq 를 다시 입력하세요.", "막힌 퀘스트 없음.",
            "가이드를 그대로 따라가세요.", "선행 퀘스트", "퀘스트에 마우스를 올리면 자세한 내용이 표시됩니다.", "범례",
            "마지막 선행 퀘스트 가이드", "마지막", "현재 위치에서 경로를 다시 계산했습니다.", "잠김 - 필요: %s", "퀘스트 목록에 없음", "잠김", "퀘스트 제공자: %s", "%s번 다음", "%s에 필요", "%s미터", "%d분", "비행 %d회", "배 %d회", "처치:", "획득:", "분당 경험치: %s", "~%d마리 처치", "원래 가이드로: %s", "%s와 대화", "NPC와 대화", "%s 전달 (%s)", "%s 처치", "%s 획득", "(%s)", "%s 사용/수집", "%s(으)로 이동", "(%s)", "가이드 요청 - 선행 퀘스트 부족:", "가이드 요청 - 퀘스트 목록에 없음:", "%d단계", "선행 퀘스트 모두 하기", "모두 하기", "선행 부족:", "목록에 없음:", "/prereq resetsize: 창 크기 초기화", "모든 선행 퀘스트 - %s", "막힌 퀘스트 %d개의 모든 선행 퀘스트. 이 가이드가 끝나면 원래 가이드로 돌아갑니다.", "이 가이드의 막힌 연계 전체를 가장 짧은 순서로 하나의 가이드로 만들고, 끝나면 원래 가이드로 돌아갑니다.", "연계 %d개", "총 경험치: %s", "경매장에서 %s 구매", "최근 가격 %s", "가이드 생성: 연계 %d개, 퀘스트 %d개.", "(선택)",
        },
        zhCN = {
            "RXP 前置任务 (自动)", "RXP 前置任务", "交谈", "点击",
            "此任务由物品开始:", "掉落自", "需要等级: %d", "接受 %s",
            "完成任务目标", "击杀", "击杀 %s。拾取 %s", "拾取 %s (%s)",
            "收集", "使用", "交付 %s", "前置任务 %d - %s",
            "%s 的前置任务。完成本指南后返回你的指南。",
            "任务 %d, %d 个前置, %d 步重新排序",
            "路线规划出错 (使用简单顺序): %s",
            "需要 Questie (任务数据库): 请安装 Questie 插件后 /reload。",
            "战斗中无法进行, 请稍后再试。", "Questie 中没有任务 %s。",
            "无需操作: '%s' 已在任务日志中或已交付。",
            "生成指南出错: %s", "已创建指南: %d 个任务, 之后是 '%s'。",
            "已创建指南: 接受 '%s', 然后返回你的指南。",
            "'%s' 已忽略 (/prereq reset 撤销)。", "RXP 外观不可用 (%s)",
            "分析出错 (仅显示一次): %s", "错误 (仅显示一次): %s", "尚未创建指南。",
            "最近创建的指南 (%s), %d 行: 窗口已打开, 按 Ctrl+A 再按 Ctrl+C 复制。",
            "已忽略的任务将再次显示。",
            "/prereq  -  /prereq <任务ID>  -  /prereq reset  -  /prereq 最后",
            "未接受", "进行中", "可交付", "已完成",
            "你的指南会推进此任务, 但它不在你的任务日志中。",
            "已锁定: 缺少上方列出的任务。", "指南第 %d 步",
            "已在此任务链上方列出。", "(估计)",
            "任务链: %d 个前置, 共 %s", "之后需要 (不要跳过):", "... 还有 %d 个",
            "后续", "接受", "此任务", "%s: %s (%s, 第 %d 步)",
            "后续指南不需要。", "我", "未知", "如何阅读此窗口",
            "每张卡片是你的指南中暂时无法接受的任务。",
            "各行按完成顺序编号, 被锁定的任务在最后。", "受阻任务",
            "不在日志中 (指南会推进它, 但你没有此任务)", "可接受",
            "35-36: 下一个指南 (35-36) 需要, 不要跳过",
            "[37]: 任务等级 (颜色 = 难度)", "经验前的 ~: 估计值",
            "右侧方块: 每个队员的任务状态",
            "引导我: 为整条任务链创建指南, 完成后返回你的指南。",
            "忽略: 不再显示 (/prereq reset 撤销)。", "鼠标悬停在一行上查看详情。",
            "忽略", "忽略此任务", "将不再显示。/prereq reset 撤销。", "引导我",
            "按顺序为缺少的任务创建 RXP 指南, 完成后返回你的指南。",
            "刷新", "重新计算前置任务, 并再次向队伍请求任务状态。",
            "关闭", "未知 (无回应)", "等级 %d", "队伍:", "单人 (无队伍状态)",
            "当前指南", "%d 个受阻任务", "%d 个受阻任务", "没有受阻任务", "顺序: ",
            "(见上方)", "解锁: ", "需要 Questie", "请安装 Questie 插件后 /reload。",
            "没有激活的 RXP 指南。", "请选择一个指南, 然后再次输入 /prereq。", "没有受阻任务。",
            "可以继续按指南进行。", "任务前置", "鼠标悬停在任务上查看详情。", "图例",
            "最近的前置任务指南", "最后", "已根据你的位置重新计算路线。", "已锁定 - 需要 %s", "不在你的任务日志中", "已锁定", "任务发布者: %s", "在 %s 之后", "用于 %s", "%s码", "%d分钟", "飞行 %d 次", "乘船 %d 次", "击杀:", "拾取:", "每分钟经验: %s", "约击杀 %d 次", "返回你的指南: %s", "与%s交谈", "与NPC交谈", "将%s交给%s", "击杀%s", "拾取%s", "(来自%s)", "使用/收集%s", "前往%s", "(%s)", "指南要求完成 - 缺少前置任务:", "指南要求完成 - 不在任务日志中:", "第 %d 步", "完成所有前置任务", "全部完成", "缺少前置:", "不在日志中:", "/prereq resetsize: 恢复默认窗口大小", "所有前置任务 - %s", "%d 个受阻任务的所有前置任务。完成本指南后返回你的指南。", "为本指南所有受阻任务链生成一个指南, 按最短顺序, 完成后返回你的指南。", "%d 条任务链", "总经验: %s", "在拍卖行购买 %s", "最近价格 %s", "已创建指南: %d 条任务链, %d 个任务。", "(可选)",
        },
        zhTW = {
            "RXP 前置任務 (自動)", "RXP 前置任務", "交談", "點擊",
            "此任務由物品開始:", "掉落自", "需要等級: %d", "接受 %s",
            "完成任務目標", "擊殺", "擊殺 %s。拾取 %s", "拾取 %s (%s)",
            "收集", "使用", "交付 %s", "前置任務 %d - %s",
            "%s 的前置任務。完成本指南後返回你的指南。",
            "任務 %d, %d 個前置, %d 步重新排序",
            "路線規劃出錯 (使用簡單順序): %s",
            "需要 Questie (任務資料庫): 請安裝 Questie 插件後 /reload。",
            "戰鬥中無法進行, 請稍後再試。", "Questie 中沒有任務 %s。",
            "無需操作: '%s' 已在任務日誌中或已交付。",
            "產生指南出錯: %s", "已建立指南: %d 個任務, 之後是 '%s'。",
            "已建立指南: 接受 '%s', 然後返回你的指南。",
            "'%s' 已忽略 (/prereq reset 復原)。", "RXP 外觀無法使用 (%s)",
            "分析出錯 (僅顯示一次): %s", "錯誤 (僅顯示一次): %s", "尚未建立指南。",
            "最近建立的指南 (%s), %d 行: 視窗已開啟, 按 Ctrl+A 再按 Ctrl+C 複製。",
            "已忽略的任務將再次顯示。",
            "/prereq  -  /prereq <任務ID>  -  /prereq reset  -  /prereq 最後",
            "未接受", "進行中", "可交付", "已完成",
            "你的指南會推進此任務, 但它不在你的任務日誌中。",
            "已鎖定: 缺少上方列出的任務。", "指南第 %d 步",
            "已在此任務鏈上方列出。", "(估計)",
            "任務鏈: %d 個前置, 共 %s", "之後需要 (不要跳過):", "... 還有 %d 個",
            "後續", "接受", "此任務", "%s: %s (%s, 第 %d 步)",
            "後續指南不需要。", "我", "未知", "如何閱讀此視窗",
            "每張卡片是你的指南中暫時無法接受的任務。",
            "各行依完成順序編號, 被鎖定的任務在最後。", "受阻任務",
            "不在日誌中 (指南會推進它, 但你沒有此任務)", "可接受",
            "35-36: 下一個指南 (35-36) 需要, 不要跳過",
            "[37]: 任務等級 (顏色 = 難度)", "經驗前的 ~: 估計值",
            "右側方塊: 每個隊員的任務狀態",
            "引導我: 為整條任務鏈建立指南, 完成後返回你的指南。",
            "忽略: 不再顯示 (/prereq reset 復原)。", "滑鼠懸停在一行上查看詳情。",
            "忽略", "忽略此任務", "將不再顯示。/prereq reset 復原。", "引導我",
            "依序為缺少的任務建立 RXP 指南, 完成後返回你的指南。",
            "重新整理", "重新計算前置任務, 並再次向隊伍請求任務狀態。",
            "關閉", "未知 (無回應)", "等級 %d", "隊伍:", "單人 (無隊伍狀態)",
            "目前指南", "%d 個受阻任務", "%d 個受阻任務", "沒有受阻任務", "順序: ",
            "(見上方)", "解鎖: ", "需要 Questie", "請安裝 Questie 插件後 /reload。",
            "沒有啟用的 RXP 指南。", "請選擇一個指南, 然後再次輸入 /prereq。", "沒有受阻任務。",
            "可以繼續按指南進行。", "任務前置", "滑鼠懸停在任務上查看詳情。", "圖例",
            "最近的前置任務指南", "最後", "已根據你的位置重新計算路線。", "已鎖定 - 需要 %s", "不在你的任務日誌中", "已鎖定", "任務發布者: %s", "在 %s 之後", "用於 %s", "%s碼", "%d分鐘", "飛行 %d 次", "乘船 %d 次", "擊殺:", "拾取:", "每分鐘經驗: %s", "約擊殺 %d 次", "返回你的指南: %s", "與%s交談", "與NPC交談", "將%s交給%s", "擊殺%s", "拾取%s", "(來自%s)", "使用/收集%s", "前往%s", "(%s)", "指南要求完成 - 缺少前置任務:", "指南要求完成 - 不在任務日誌中:", "第 %d 步", "完成所有前置任務", "全部完成", "缺少前置:", "不在日誌中:", "/prereq resetsize: 恢復預設視窗大小", "所有前置任務 - %s", "%d 個受阻任務的所有前置任務。完成本指南後返回你的指南。", "為本指南所有受阻任務鏈產生一個指南, 依最短順序, 完成後返回你的指南。", "%d 條任務鏈", "總經驗: %s", "在拍賣場購買 %s", "最近價格 %s", "已建立指南: %d 條任務鏈, %d 個任務。", "(可選)",
        },
    }
    if addon.AddGroupTranslations then
        local out = {}
        for lang, vals in pairs(T) do
            -- une langue incomplete est ignoree (repli anglais) plutot que decalee
            if #vals == #K then
                local m = {}
                for i, k in ipairs(K) do m[k] = vals[i] end
                out[lang] = m
            end
        end
        pcall(addon.AddGroupTranslations, out)
    end
end

local prereq = {}
addon.prereq = prereq

local fmt = string.format
local _G = _G
local floor, max, min = math.floor, math.max, math.min
local GROUP = L["RXP Prerequisites (auto)"]
local MAX_DEPTH = 12
local NEXT_GUIDES = 3      -- guides suivants lus (seulement pour savoir ce qui sert ensuite)
local SOON_STEPS = 3       -- ouverture auto si la quete arrive dans les N prochaines etapes
local QUERY_EVERY = 10     -- interrogation du groupe toutes les N secondes (fenetre ouverte)

local function Print(msg, ...)
    print(fmt("|cff33ff99" .. L["RXP Prerequisites"] .. "|r: " .. L[msg], ...))
end

local function DB()
    _G.RXPPrereqDB = _G.RXPPrereqDB or {ignored = {}}
    _G.RXPPrereqDB.ignored = _G.RXPPrereqDB.ignored or {}
    return _G.RXPPrereqDB
end

local function Questie()
    return addon.questieDB
end

local function ZoneDB()
    local loader = _G.QuestieLoader
    if not loader then return nil end
    local ok, m = pcall(loader.ImportModule, loader, "ZoneDB")
    return ok and m or nil
end

local function IsTurnedIn(id)
    if addon.IsQuestTurnedIn then return addon.IsQuestTurnedIn(id) end
    local f = _G.C_QuestLog and _G.C_QuestLog.IsQuestFlaggedCompleted
    return f and f(id)
end

local function IsOnQuest(id)
    if addon.IsOnQuest then return addon.IsOnQuest(id) end
    local f = _G.C_QuestLog and _G.C_QuestLog.GetLogIndexForQuestID
    return f and f(id) ~= nil
end

local function IsObjComplete(id)
    if addon.IsQuestComplete then return addon.IsQuestComplete(id) end
    local f = _G.C_QuestLog and _G.C_QuestLog.IsComplete
    return f and f(id)
end

local function Done(id) return IsTurnedIn(id) end

-- etat d'une quete pour moi : n = pas prise, l = dans le journal, c = objectifs faits, t = rendue
local function StateOf(id)
    if IsTurnedIn(id) then return "t" end
    if IsOnQuest(id) then return IsObjComplete(id) and "c" or "l" end
    return "n"
end

---------------------------------------------------------------------------
-- Base Questie
---------------------------------------------------------------------------
local questCache = {}
local function GetQuest(id)
    if not id then return nil end
    if questCache[id] ~= nil then return questCache[id] or nil end
    local db = Questie()
    if not db or not db.GetQuest then return nil end
    -- QuestieDB.GetQuest(id) (point) ; repli db:GetQuest(id) (deux-points)
    local ok, q = pcall(db.GetQuest, id)
    if not (ok and type(q) == "table") then ok, q = pcall(db.GetQuest, db, id) end
    q = (ok and type(q) == "table") and q or nil
    questCache[id] = q or false
    return q
end

local function QuestName(id)
    local q = GetQuest(id)
    return q and q.name or ("#" .. tostring(id))
end

local function QuestLevel(id)
    local q = GetQuest(id)
    if not q then return nil end
    local l = tonumber(q.level)
    if not l or l <= 0 then l = tonumber(q.requiredLevel) end
    if l and l > 0 then return l end
end

local bandFn = bit and bit.band or function(a, b)
    local r, m = 0, 1
    while a > 0 and b > 0 do
        if a % 2 == 1 and b % 2 == 1 then r = r + m end
        a, b, m = floor(a / 2), floor(b / 2), m * 2
    end
    return r
end

-- quete faisable par ma race / ma classe ?
local function Eligible(q)
    if not q then return false end
    local races = tonumber(q.requiredRaces) or 0
    if races > 0 then
        local raceId = select(3, UnitRace("player"))
        if raceId and bandFn(races, 2 ^ (raceId - 1)) == 0 then return false end
    end
    local classes = tonumber(q.requiredClasses) or 0
    if classes > 0 then
        local classId = select(3, UnitClass("player"))
        if classId and bandFn(classes, 2 ^ (classId - 1)) == 0 then return false end
    end
    return true
end
prereq.Eligible = Eligible

---------------------------------------------------------------------------
-- Prerequis manquants
---------------------------------------------------------------------------
-- assume : nil, table {qid=true} ou fonction(qid) -> true si la quete sera rendue avant
local function MakeOk(assume)
    if type(assume) == "function" then
        return function(p) return Done(p) or assume(p) end
    end
    assume = assume or {}
    return function(p) return Done(p) or assume[p] end
end

-- prerequis directs manquants de q ("fait" = rendue ou rendue par le guide avant ; une
-- quete deja dans le journal reste manquante : ses objectifs et son rendu sont utiles)
local function DirectMissing(q, Ok)
    local res = {}
    if not q then return res end
    -- preQuestSingle : UNE de ces quetes suffit
    if type(q.preQuestSingle) == "table" and #q.preQuestSingle > 0 then
        local satisfied = false
        for _, p in ipairs(q.preQuestSingle) do
            if Ok(p) then satisfied = true break end
        end
        if not satisfied then
            -- celle deja dans le journal, sinon la premiere faisable par ma race/classe
            local pick
            for _, p in ipairs(q.preQuestSingle) do
                if IsOnQuest(p) then pick = p break end
            end
            if not pick then
                for _, p in ipairs(q.preQuestSingle) do
                    if Eligible(GetQuest(p)) then pick = p break end
                end
            end
            if pick then table.insert(res, pick) end
        end
    end
    -- preQuestGroup : TOUTES ces quetes
    if type(q.preQuestGroup) == "table" then
        for _, p in ipairs(q.preQuestGroup) do
            if not Ok(p) then table.insert(res, p) end
        end
    end
    return res
end

-- liste ordonnee des quetes a faire AVANT de pouvoir prendre `id` (les plus anciennes d'abord)
local function MissingChain(id, assume)
    local Ok = MakeOk(assume)
    local order, seen = {}, {}
    local function visit(qid, depth)
        if seen[qid] or depth > MAX_DEPTH then return end
        seen[qid] = true
        for _, p in ipairs(DirectMissing(GetQuest(qid), Ok)) do
            visit(p, depth + 1)
            table.insert(order, p)
        end
    end
    visit(id, 0)
    local res, added = {}, {}
    for _, qid in ipairs(order) do
        if not added[qid] then added[qid] = true; table.insert(res, qid) end
    end
    return res
end
prereq.MissingChain = MissingChain

-- arbre des prerequis manquants, aplati (ordre de lecture : prerequis direct puis ses
-- propres prerequis en retrait). Entrees : {id=, depth=1.., parent=, dup=true si deja listee}
local function MissingTree(id, Ok)
    local out, seen = {}, {[id] = true}
    local function visit(qid, depth)
        for _, p in ipairs(DirectMissing(GetQuest(qid), Ok)) do
            if seen[p] then
                table.insert(out, {id = p, depth = depth, parent = qid, dup = true})
            else
                seen[p] = true
                table.insert(out, {id = p, depth = depth, parent = qid})
                if depth < MAX_DEPTH then visit(p, depth + 1) end
            end
        end
    end
    visit(id, 1)
    return out
end

---------------------------------------------------------------------------
-- Couleur de niveau et XP
---------------------------------------------------------------------------
local function GrayLevel(pl)
    if pl <= 5 then return 0 end
    if pl <= 39 then return pl - 5 - floor(pl / 10) end
    if pl <= 59 then return pl - 1 - floor(pl / 5) end
    return pl - 9
end

-- couleur WoW de difficulte de quete (rouge / orange / jaune / vert / gris)
local function LevelColor(level)
    if not level then return 0.6, 0.6, 0.6 end
    local f = _G.GetQuestDifficultyColor
    if f then
        local ok, c = pcall(f, level)
        if ok and type(c) == "table" and c.r then return c.r, c.g, c.b end
    end
    local pl = UnitLevel("player") or 1
    local diff = level - pl
    if diff >= 5 then return 1, 0.1, 0.1 end
    if diff >= 3 then return 1, 0.5, 0.25 end
    if diff >= -2 then return 1, 0.82, 0 end
    local green
    if _G.GetQuestGreenRange then
        local ok, r = pcall(_G.GetQuestGreenRange)
        if ok and tonumber(r) then green = tonumber(r) end
    end
    if green then
        if -diff <= green then return 0.25, 0.75, 0.25 end
    elseif level > GrayLevel(pl) then
        return 0.25, 0.75, 0.25
    end
    return 0.5, 0.5, 0.5
end

local function Hex(r, g, b) return fmt("ff%02x%02x%02x", floor(r * 255), floor(g * 255), floor(b * 255)) end

local questXPModule
local function QuestXPModule()
    if questXPModule ~= nil then return questXPModule or nil end
    local loader = _G.QuestieLoader
    if not loader then return nil end
    local ok, m = pcall(loader.ImportModule, loader, "QuestXP")
    if ok and type(m) == "table" and m.GetQuestLogRewardXP then
        questXPModule = m
        return m
    end
    questXPModule = false
    return nil
end

local function RoundXP(xp)
    if xp <= 100 then return 5 * floor((xp + 2) / 5)
    elseif xp <= 500 then return 10 * floor((xp + 5) / 10)
    elseif xp <= 1000 then return 25 * floor((xp + 12) / 25) end
    return 50 * floor((xp + 25) / 50)
end

-- XP de la quete pour moi : valeur, estime (true si estimation)
local xpCache, xpCacheLevel = {}, nil
local function QuestXP(id)
    local pl = UnitLevel("player") or 1
    if xpCacheLevel ~= pl then xpCache, xpCacheLevel = {}, pl end
    local c = xpCache[id]
    if c then return c[1], c[2] end
    local xp, est
    local maxLevel = _G.GetMaxPlayerLevel and _G.GetMaxPlayerLevel() or 60
    local m = QuestXPModule()
    if m and type(m.db) == "table" and m.db[id] then
        local ok, v = pcall(m.GetQuestLogRewardXP, m, id, false)
        v = ok and tonumber(v) or nil
        -- 0 sans etre au niveau max = donnee absente (quete d'evenement...) : on estime
        if v and (v > 0 or pl >= maxLevel) then xp, est = v, false end
    end
    if not xp then
        -- estimation : XP de base classique approchee selon le niveau de la quete,
        -- puis la regle de reduction classique (2 x ecart de niveau + 20, entre 1 et 10, /10)
        local ql = QuestLevel(id)
        if ql then
            if pl >= maxLevel then
                xp = 0
            else
                local base = 2 * ql * ql + 30 * ql
                local mult = min(10, max(1, 2 * (ql - pl) + 20))
                xp = RoundXP(base * mult / 10)
            end
            est = true
        end
    end
    xpCache[id] = {xp, est}
    return xp, est
end

local function FormatXP(xp, est)
    if not xp then return "|cff808080? XP|r" end
    local s = tostring(xp)
    if xp >= 1000 then s = fmt("%d %03d", floor(xp / 1000), xp % 1000) end
    return (est and "|cff9a9a9a~|r" or "") .. "|cff8080ff" .. s .. "|r|cff9a9ab8 XP|r"
end

---------------------------------------------------------------------------
-- Positions (PNJ / objets) : spawn le plus proche du joueur
---------------------------------------------------------------------------
local HBD = _G.LibStub and _G.LibStub("HereBeDragons-2.0", true)

local function NearestSpawn(spawns)
    if type(spawns) ~= "table" then return nil end
    local zdb = ZoneDB()
    local px, py, pinst
    if HBD then px, py, pinst = HBD:GetPlayerWorldPosition() end
    local best, bestD
    for areaId, coords in pairs(spawns) do
        local uiMap
        if zdb and zdb.GetUiMapIdByAreaId then
            local ok, u = pcall(zdb.GetUiMapIdByAreaId, zdb, areaId)
            uiMap = ok and u or nil
        end
        if uiMap and type(coords) == "table" then
            for _, c in ipairs(coords) do
                local x, y = c[1], c[2]
                if x and y and x >= 0 and y >= 0 then
                    local d = 1e12
                    if HBD and px then
                        local wx, wy, inst = HBD:GetWorldCoordinatesFromZone(x / 100, y / 100, uiMap)
                        if wx and inst == pinst then
                            d = (wx - px) ^ 2 + (wy - py) ^ 2
                        elseif wx then
                            d = 1e11
                        end
                    end
                    if not bestD or d < bestD then
                        best, bestD = {uiMap = uiMap, x = x, y = y}, d
                    end
                end
            end
        end
    end
    return best
end

local function GotoLine(spawn)
    if not spawn then return nil end
    return fmt("    .goto %d,%.2f,%.2f", spawn.uiMap, spawn.x, spawn.y)
end

local function Clean(s)
    s = tostring(s or "?")
    s = s:gsub("[%[%]\r\n]", " "):gsub("|", "/"):gsub(">>", ">"):gsub("<<", "<")
    return s
end

local function GetNPC(id)
    local db = Questie()
    if not db or not db.GetNPC then return nil end
    local ok, n = pcall(db.GetNPC, db, id)
    return ok and n or nil
end

local function GetObject(id)
    local db = Questie()
    if not db or not db.GetObject then return nil end
    local ok, o = pcall(db.GetObject, db, id)
    return ok and o or nil
end

local function GetItem(id)
    local db = Questie()
    if not db or not db.GetItem then return nil end
    local ok, i = pcall(db.GetItem, db, id)
    return ok and i or nil
end

-- nom pour .target / .mob : syntaxe RXP "Nom::id" (functions.lua CheckNpcIds) ; sur un client
-- non anglais RXP remplace par le nom localise via l'id, donc la macro de ciblage marche.
-- Le separateur de ces balises est ";" : on le retire du nom, rien d'autre (apostrophes gardees).
local function UnitRef(name, id)
    local s = tostring(name or ""):gsub("[;|\r\n]", " "):gsub("::", ":"):gsub("^%s+", ""):gsub("%s+$", "")
    id = tonumber(id)
    if s == "" then return id and tostring(id) or nil end
    if id then return s .. "::" .. id end
    return s
end

-- premier PNJ/objet de la liste avec une position connue
local function FirstLocated(npcIds, objIds)
    for _, id in ipairs(npcIds or {}) do
        local n = GetNPC(id)
        if n then
            local sp = NearestSpawn(n.spawns)
            if sp then return {kind = "npc", name = n.name, id = id, spawn = sp} end
        end
    end
    for _, id in ipairs(objIds or {}) do
        local o = GetObject(id)
        if o then
            local sp = NearestSpawn(o.spawns)
            if sp then return {kind = "object", name = o.name, spawn = sp} end
        end
    end
    -- pas de position : on garde au moins le nom
    for _, id in ipairs(npcIds or {}) do
        local n = GetNPC(id)
        if n then return {kind = "npc", name = n.name, id = id} end
    end
    for _, id in ipairs(objIds or {}) do
        local o = GetObject(id)
        if o then return {kind = "object", name = o.name} end
    end
end

---------------------------------------------------------------------------
-- Generation du texte de guide (taches + planificateur de trajets)
---------------------------------------------------------------------------
-- chaque fonction renvoie les lignes de l'etape (sans "step") et la position principale
local function AcceptLines(q, gateTurnedIn)
    local lines, loc = {}, nil
    local qid, name = q.Id, Clean(q.name)
    local s = q.Starts or {}
    local who = FirstLocated(s.NPC, s.GameObject)
    if who and who.spawn then loc = who.spawn; table.insert(lines, GotoLine(who.spawn)) end
    if who and who.kind == "npc" then
        table.insert(lines, fmt("    >>%s |cRXP_FRIENDLY_%s|r", L["Talk to"], Clean(who.name)))
        local ref = UnitRef(who.name, who.id)
        if ref then table.insert(lines, "    .target " .. ref) end
    elseif who and who.kind == "object" then
        table.insert(lines, fmt("    >>%s |cRXP_PICK_%s|r", L["Click the"], Clean(who.name)))
    elseif s.Item and s.Item[1] then
        local it = GetItem(s.Item[1])
        table.insert(lines, fmt("    >>|cRXP_WARN_%s|r |cRXP_LOOT_%s|r", L["This quest starts from the item"], Clean(it and it.name or s.Item[1])))
        if it and it.npcDrops and it.npcDrops[1] then
            local n = GetNPC(it.npcDrops[1])
            if n then
                local sp = NearestSpawn(n.spawns)
                if sp then loc = sp; table.insert(lines, GotoLine(sp)) end
                table.insert(lines, fmt("    >>%s |cRXP_ENEMY_%s|r", L["Dropped by"], Clean(n.name)))
                local ref = UnitRef(n.name, it.npcDrops[1])
                if ref then table.insert(lines, "    .mob " .. ref) end
            end
        end
        table.insert(lines, fmt("    .use %d", s.Item[1]))
    end
    if q.requiredLevel and q.requiredLevel > (UnitLevel("player") or 1) then
        table.insert(lines, "    >>|cRXP_WARN_" .. fmt(L["Required level: %d"], q.requiredLevel) .. "|r")
    end
    -- quete visee : n'est proposee que si ses prerequis sont rendus (.isQuestTurnedIn saute
    -- l'etape sinon, functions.lua) ; groupe = toutes, single = une seule suffit
    if gateTurnedIn then
        if type(q.preQuestGroup) == "table" then
            for _, p in ipairs(q.preQuestGroup) do
                if GetQuest(p) then table.insert(lines, fmt("    .isQuestTurnedIn %d", p)) end
            end
        end
        if type(q.preQuestSingle) == "table" and #q.preQuestSingle > 0 then
            local ids = {}
            for _, p in ipairs(q.preQuestSingle) do
                if Eligible(GetQuest(p)) then table.insert(ids, tostring(p)) end
            end
            if #ids > 0 then table.insert(lines, "    .isQuestTurnedIn " .. table.concat(ids, ",")) end
        end
    end
    table.insert(lines, fmt("    .accept %d >> %s", qid, fmt(L["Accept %s"], name)))
    return lines, loc
end

local function ObjectiveTarget(o, q)
    -- renvoie nom, type(ENEMY/PICK/LOOT/WARN), spawn, mob, objet, id du mob
    local t = o.Type
    if t == "monster" or t == "killcredit" then
        local id = o.Id
        if t == "killcredit" and type(o.IdList) == "table" then id = o.IdList[1] end
        local n = GetNPC(id)
        if n then return n.name, "ENEMY", NearestSpawn(n.spawns), n.name, nil, id end
    elseif t == "object" then
        local ob = GetObject(o.Id)
        if ob then return ob.name, "PICK", NearestSpawn(ob.spawns) end
    elseif t == "item" then
        local it = GetItem(o.Id)
        if it then
            if it.npcDrops and it.npcDrops[1] then
                for _, nid in ipairs(it.npcDrops) do
                    local n = GetNPC(nid)
                    if n then
                        local sp = NearestSpawn(n.spawns)
                        if sp then return it.name, "LOOT", sp, n.name, nil, nid end
                    end
                end
            end
            if it.objectDrops and it.objectDrops[1] then
                for _, oid in ipairs(it.objectDrops) do
                    local ob = GetObject(oid)
                    if ob then
                        local sp = NearestSpawn(ob.spawns)
                        if sp then return it.name, "LOOT", sp, nil, ob.name end
                    end
                end
            end
            return it.name, "LOOT", nil
        end
    elseif t == "event" then
        local te = q.triggerEnd
        if type(te) == "table" then
            return te[1] or o.Text or "Objective", "WARN", NearestSpawn(te[2])
        end
    end
    return o.Text, "WARN", nil
end

-- nombre d'objectifs connus de Questie quand ObjectiveData est vide (q.objectives :
-- creatures, objets, items, reputation, kill credit, sort...)
local function CountRawObjectives(q)
    local n = 0
    if type(q.objectives) == "table" then
        for _, part in pairs(q.objectives) do
            if type(part) == "table" then
                if type(part[1]) == "table" then n = n + #part
                elseif part[1] ~= nil then n = n + 1 end
            end
        end
    end
    if n == 0 and type(q.triggerEnd) == "table" then n = 1 end
    return n
end

-- Pas de ".isOnQuest" ici : cette condition fait SAUTER l'etape des qu'elle devient active
-- sans la quete dans le journal (functions.lua isOnQuest), ce qui laissait passer la chaine
-- sans faire les objectifs. Un .complete reste en attente tant que la quete n'est pas faite.
local function CompleteLines(q)
    local objs = q.ObjectiveData
    local lines, loc, mobs = {}, nil, {}
    if type(objs) ~= "table" or #objs == 0 then
        -- repli : Questie connait des objectifs mais pas leur detail
        local n = CountRawObjectives(q)
        if n == 0 then return nil end   -- quete sans objectif (livraison, discussion) : rendu direct
        local txt = type(q.objectivesText) == "table" and q.objectivesText[1] or nil
        table.insert(lines, fmt("    >>|cRXP_WARN_%s|r", Clean(txt or L["Complete the quest objectives"])))
        for i = 1, n do table.insert(lines, fmt("    .complete %d,%d", q.Id, i)) end
        return lines, nil
    end
    for i, o in ipairs(objs) do
        local name, kind, spawn, mob, object, mobId = ObjectiveTarget(o, q)
        if spawn then
            loc = loc or spawn
            table.insert(lines, GotoLine(spawn))
        end
        if kind == "ENEMY" then
            table.insert(lines, fmt("    >>%s |cRXP_ENEMY_%s|r", L["Kill"], Clean(name)))
        elseif kind == "LOOT" and mob then
            table.insert(lines, "    >>" .. fmt(L["Kill %s. Loot them for %s"], "|cRXP_ENEMY_" .. Clean(mob) .. "|r", "|cRXP_LOOT_" .. Clean(name) .. "|r"))
        elseif kind == "LOOT" and object then
            table.insert(lines, "    >>" .. fmt(L["Loot %s from the %s"], "|cRXP_LOOT_" .. Clean(name) .. "|r", "|cRXP_PICK_" .. Clean(object) .. "|r"))
        elseif kind == "LOOT" then
            table.insert(lines, fmt("    >>%s |cRXP_LOOT_%s|r", L["Collect"], Clean(name)))
        elseif kind == "PICK" then
            table.insert(lines, fmt("    >>%s |cRXP_PICK_%s|r", L["Use the"], Clean(name)))
        elseif name then
            table.insert(lines, fmt("    >>%s", Clean(name)))
        end
        if mob then
            local ref = UnitRef(mob, mobId)
            if ref and not mobs[ref] then mobs[ref] = true; table.insert(mobs, ref) end
        end
        table.insert(lines, fmt("    .complete %d,%d", q.Id, i))
    end
    for _, ref in ipairs(mobs) do table.insert(lines, "    .mob " .. ref) end
    return lines, loc
end

local function TurninLines(q)
    local lines, loc = {}, nil
    local f = q.Finisher or {}
    local who = FirstLocated(f.NPC, f.GameObject)
    if who and who.spawn then loc = who.spawn; table.insert(lines, GotoLine(who.spawn)) end
    if who and who.kind == "npc" then
        table.insert(lines, fmt("    >>%s |cRXP_FRIENDLY_%s|r", L["Talk to"], Clean(who.name)))
        local ref = UnitRef(who.name, who.id)
        if ref then table.insert(lines, "    .target " .. ref) end
    elseif who and who.kind == "object" then
        table.insert(lines, fmt("    >>%s |cRXP_PICK_%s|r", L["Click the"], Clean(who.name)))
    end
    table.insert(lines, fmt("    .turnin %d >> %s", q.Id, fmt(L["Turn in %s"], Clean(q.name))))
    return lines, loc
end

local function NewTask(id, lines, loc, after, kind, qid)
    return {
        id = id, lines = lines, after = after or {},
        uiMap = loc and loc.uiMap or nil, x = loc and loc.x or nil, y = loc and loc.y or nil,
        kind = kind, questId = qid,
    }
end

-- taches dans l'ordre naturel (deja compatible avec les precedences)
local function BuildTasks(targetId, chain)
    local tasks, inChain = {}, {}
    for _, qid in ipairs(chain) do inChain[qid] = true end
    local Ok = MakeOk(nil)
    local turnins = {}
    for _, qid in ipairs(chain) do
        local q = GetQuest(qid)
        if q then
            -- accepter une quete apres le rendu de ses prerequis presents dans la chaine
            local after = {}
            for _, p in ipairs(DirectMissing(q, Ok)) do
                if inChain[p] and GetQuest(p) then table.insert(after, "t" .. p) end
            end
            -- deja dans le journal : pas d'etape "prendre" (ni de trajet vers le donneur) ;
            -- objectifs deja faits : pas d'etape "objectifs". Les dependances vers une tache
            -- absente sont ignorees a l'emission (Ready).
            local inLog = IsOnQuest(qid)
            if not inLog then
                local l, loc = AcceptLines(q)
                table.insert(tasks, NewTask("a" .. qid, l, loc, after, "accept", qid))
            end
            local prev = "a" .. qid
            local cl, cloc = CompleteLines(q)
            if cl and inLog and IsObjComplete(qid) then cl = nil end
            if cl then
                table.insert(tasks, NewTask("c" .. qid, cl, cloc, {prev}, "complete", qid))
                prev = "c" .. qid
            end
            local tl, tloc = TurninLines(q)
            table.insert(tasks, NewTask("t" .. qid, tl, tloc, {prev}, "turnin", qid))
            table.insert(turnins, "t" .. qid)
        end
    end
    local target = GetQuest(targetId)
    if target and not IsOnQuest(targetId) then
        local l, loc = AcceptLines(target, true)
        local after = {}
        for _, t in ipairs(turnins) do table.insert(after, t) end
        table.insert(tasks, NewTask("a" .. targetId .. "_target", l, loc, after, "target", targetId))
    end
    return tasks
end

local function BuildGuideText(targetId, chain, returnTo, ret, combo)
    local target = not combo and GetQuest(targetId) or nil
    local guideName = combo and combo.name or fmt(L["Prerequisites %d - %s"], targetId, Clean(target and target.name or targetId))
    local lines = {
        "#forever",
        fmt("#version %d", (_G.GetServerTime and _G.GetServerTime() or time()) % 100000000),
        "#group " .. GROUP,
        "#subgroup Quests",
        "#name " .. guideName,
    }
    if returnTo then table.insert(lines, "#next " .. returnTo) end
    table.insert(lines, "step")
    if combo then
        table.insert(lines, "    +|cRXP_WARN_" .. combo.intro .. "|r")
    else
        table.insert(lines, "    +|cRXP_WARN_" .. fmt(L["Prerequisites for %s. When this guide is done you go back to your guide."],
                                "|r|cRXP_FRIENDLY_" .. Clean(target and target.name or targetId) .. "|r|cRXP_WARN_") .. "|r")
    end

    local tasks = combo and combo.tasks or BuildTasks(targetId, chain)
    -- achats facultatifs a l'hotel des ventes pour les objets a ramasser
    local okAH, errAH = pcall(prereq.AddAHTasks, tasks, chain)
    if not okAH then prereq.lastAHError = errAH end
    -- derniere tache : revenir a l'etape ou reprend le guide d'origine (trajet planifie avec le
    -- reste : vols, foyer, bateaux...), fleche dessus, puis #next ramene au guide
    if type(ret) == "table" and ret.uiMap and ret.x and ret.y then
        local after = {}
        for _, t in ipairs(tasks) do after[#after + 1] = t.id end
        local rl = {
            fmt("    .goto %d,%.2f,%.2f,25", ret.uiMap, ret.x, ret.y),
            "    >>" .. fmt(L["Back to your guide: %s"], ret.text or ""),
        }
        if addon.functions and addon.functions.bestroute then rl[#rl + 1] = "    .bestroute" end
        tasks[#tasks + 1] = NewTask("return", rl, {uiMap = ret.uiMap, x = ret.x, y = ret.y}, after, "return")
    end
    local plan
    local travel = addon.travel
    if travel and type(travel.Plan) == "function" and #tasks > 0 then
        local ok, res = pcall(travel.Plan, tasks)
        if ok and type(res) == "table" and #res > 0 then
            plan = res
        elseif not ok then
            Print("travel planner error (using simple order): %s", tostring(res))
        end
    end
    plan = plan or tasks

    -- Emission avec controle des precedences : une tache n'est ecrite que lorsque toutes
    -- ses taches "after" (prendre < objectifs < rendre < quete visee) l'ont ete ; sinon elle
    -- est mise en attente et ecrite des que possible. Les taches oubliees par le planificateur
    -- sont reinjectees de la meme facon (et non plus simplement ajoutees a la fin, ce qui
    -- pouvait placer le rendu d'un prerequis APRES la quete visee).
    local byId = {}
    for _, t in ipairs(tasks) do byId[t.id] = t end
    local emitted, deferred = {}, {}
    local repaired = 0
    -- etape 1 = introduction ; on retient pour chaque etape de trajet ses points monde
    local stepNo, travelSteps = 1, {}
    local function P(pt)
        if type(pt) ~= "table" or not (tonumber(pt.wx) and tonumber(pt.wy)) then return nil end
        return {wx = tonumber(pt.wx), wy = tonumber(pt.wy), inst = tonumber(pt.inst), uiMap = tonumber(pt.uiMap or pt.map)}
    end
    local function Ready(e)
        local t = byId[e.id] or e
        for _, d in ipairs(t.after or {}) do
            if byId[d] and not emitted[d] then return false end
        end
        return true
    end
    local function Write(e)
        if emitted[e.id] then return end
        local tl = type(e.lines) == "table" and e.lines or (byId[e.id] and byId[e.id].lines) or {}
        emitted[e.id] = true
        stepNo = stepNo + 1
        table.insert(lines, "step")
        for _, l in ipairs(tl) do table.insert(lines, l) end
    end
    local function Flush()
        local progress = true
        while progress do
            progress = false
            for i, e in ipairs(deferred) do
                if emitted[e.id] then
                    table.remove(deferred, i)
                    progress = true
                    break
                elseif Ready(e) then
                    table.remove(deferred, i)
                    Write(e)
                    progress = true
                    break
                end
            end
        end
    end
    for _, entry in ipairs(plan) do
        if type(entry) == "table" then
            if entry.travel then
                local tl = type(entry.lines) == "table" and entry.lines or {}
                if #tl == 0 and entry.text then tl = {"    +" .. Clean(entry.text)} end
                if #tl > 0 then
                    stepNo = stepNo + 1
                    travelSteps[stepNo] = {from = P(entry.from), to = P(entry.to), target = P(entry.target),
                                           eta = tonumber(entry.eta)}
                    table.insert(lines, "step")
                    for _, l in ipairs(tl) do table.insert(lines, l) end
                end
            elseif entry.id and byId[entry.id] and not emitted[entry.id] then
                if Ready(entry) then
                    Write(entry)
                    Flush()
                else
                    repaired = repaired + 1
                    table.insert(deferred, entry)
                end
            end
        end
    end
    for _, t in ipairs(tasks) do
        if not emitted[t.id] then
            local queued = false
            for _, e in ipairs(deferred) do if e.id == t.id then queued = true break end end
            if not queued then repaired = repaired + 1; table.insert(deferred, t) end
        end
    end
    Flush()
    -- cycle impossible a resoudre (ne devrait pas arriver) : ordre naturel
    for _, t in ipairs(tasks) do Write(t) end
    prereq.lastRepaired = repaired
    prereq.lastTravelSteps = travelSteps
    return table.concat(lines, "\n"), guideName
end

-- couleurs des balises de texte de guide RXP (|cRXP_FRIENDLY_ etc.), reglables dans RXP
function prereq.Col(tag)
    local g = addon.guideTextColors
    local key = "RXP_" .. tag .. "_"
    local v = type(g) == "table" and (g[key] or (type(g.default) == "table" and g.default[key])) or nil
    if type(v) == "string" and v:match("^%x%x%x%x%x%x%x%x$") then return "|c" .. v end
    return ({FRIENDLY = "|cff00ff25", ENEMY = "|cffff5722", LOOT = "|cff00bcd4",
             PICK = "|cffdb2eef", WARN = "|cfffcdc00"})[tag] or "|cffffffff"
end

-- Effort d'une chaine (fenetre) : distance a pied/monture depuis la position actuelle a
-- travers les lieux de toutes les taches dans l'ordre du planificateur, vols/bateaux comptes
-- a part, temps estime, et resume des objectifs (tuer / ramasser, avec taux de butin Questie).
function prereq.Effort(targetId, kind)
    local chain = MissingChain(targetId)
    local tasks = BuildTasks(targetId, chain)
    local plan, cost = tasks, nil
    local tr = addon.travel
    if tr and type(tr.Plan) == "function" and #tasks > 0 then
        local ok, res = pcall(tr.Plan, tasks)
        if ok and type(res) == "table" and #res > 0 then
            plan = res
            cost = type(tr.last) == "table" and tonumber(tr.last.cost) or nil
        end
    end
    local D = prereq.WorldDist
    local prev = prereq.PlayerWorldPos()
    local yards, flights, boats = 0, 0, 0
    local firstPt, d0, started = nil, 0, false
    local per, firstQ, pY, pF, pB = {}, nil, 0, 0, 0
    local function Walk(pt)
        if type(pt) ~= "table" then return end
        local d = prev and D(prev, pt)
        if not started then
            started, firstPt = true, pt
            d0 = (d and d < 1e8) and d or 0
        elseif d and d < 1e8 then
            yards = yards + d
            pY = pY + d
        end
        prev = pt
    end
    local function Attribute(q)
        if not q then return end
        local p = per[q]
        if not p then p = {y = 0, f = 0, b = 0}; per[q] = p end
        p.y, p.f, p.b = p.y + pY, p.f + pF, p.b + pB
        pY, pF, pB = 0, 0, 0
        if firstQ == nil then firstQ = q end
    end
    for _, e in ipairs(plan) do
        if type(e) == "table" then
            if e.travel then
                if e.kind == "fly" then
                    flights = flights + 1; pF = pF + 1; Walk(e.board); prev = e.to or prev
                elseif e.kind == "hearth" then
                    started = true
                    prev = e.to or prev
                elseif e.kind == "fp" then
                    Walk(e.to)
                elseif e.to then
                    boats = boats + 1; pB = pB + 1; Walk(e.board); prev = e.to or prev
                end
            else
                if e.uiMap and e.x and e.y and HBD then
                    local ok, wx, wy, inst = pcall(HBD.GetWorldCoordinatesFromZone, HBD, e.x / 100, e.y / 100, e.uiMap)
                    if ok and wx then Walk({wx = wx, wy = wy, inst = inst}) end
                end
                Attribute(e.questId)
            end
        end
    end
    local secs = (cost and cost > 0 and cost < 1e7) and cost or (yards / 7)

    -- objectifs : tuer / ramasser, agreges sur la chaine (quantites restantes si connues)
    local kills, loots, idx = {}, {}, {}
    local db = Questie()
    local qids = {}
    for _, q in ipairs(chain) do qids[#qids + 1] = q end
    if kind == "missing" then qids[#qids + 1] = targetId end
    for _, qid in ipairs(qids) do
        local q = GetQuest(qid)
        local inLog = IsOnQuest(qid)
        if q and type(q.ObjectiveData) == "table" and not (inLog and IsObjComplete(qid)) then
            local game
            if inLog and _G.C_QuestLog and _G.C_QuestLog.GetQuestObjectives then
                local ok, g = pcall(_G.C_QuestLog.GetQuestObjectives, qid)
                if ok and type(g) == "table" then game = g end
            end
            for _, o in ipairs(q.ObjectiveData) do
                local name, list, itemId
                if o.Type == "monster" or o.Type == "killcredit" then
                    local id = o.Id
                    if o.Type == "killcredit" and type(o.IdList) == "table" then id = o.IdList[1] end
                    local n = GetNPC(id)
                    name, list = n and n.name, kills
                elseif o.Type == "item" then
                    local it = GetItem(o.Id)
                    name, list, itemId = it and it.name, loots, o.Id
                end
                if name and list then
                    local cnt, skip
                    for _, go in ipairs(game or {}) do
                        if type(go.text) == "string" and go.text:find(name, 1, true) then
                            local req, got = tonumber(go.numRequired), tonumber(go.numFulfilled)
                            if req then cnt = max(0, req - (got or 0)) end
                            skip = go.finished or cnt == 0
                            break
                        end
                    end
                    if not cnt and not skip then
                        for _, txt in ipairs(type(q.objectivesText) == "table" and q.objectivesText or {}) do
                            if type(txt) == "string" and txt:find(name, 1, true) then
                                cnt = tonumber(txt:match("(%d+)%s+" .. name:gsub("%p", "%%%0"))) or tonumber(txt:match("(%d+)"))
                                break
                            end
                        end
                    end
                    if not skip then
                        local key = (list == kills and "k" or "l") .. name
                        local e = idx[key]
                        if not e then e = {name = name}; idx[key] = e; list[#list + 1] = e end
                        if cnt then e.n = (e.n or 0) + cnt end
                        -- taux de butin (Questie : corrections, serveur prive, wowhead)
                        if itemId and not e.rates and db and type(db.GetItemDroprate) == "function" then
                            local it = GetItem(itemId)
                            e.rates = {}
                            for _, nid in ipairs((it and it.npcDrops) or {}) do
                                local ok, r = pcall(db.GetItemDroprate, itemId, nid)
                                local rate = ok and type(r) == "table" and tonumber(r[1]) or nil
                                if rate and rate > 0 then
                                    local n = GetNPC(nid)
                                    e.rates[#e.rates + 1] = {name = n and n.name or ("#" .. nid), rate = rate, src = r[2]}
                                    if not e.rate or rate > e.rate then
                                        e.rate = rate
                                        -- objet de quete + wowhead : taux par victime sous-estime -> "~"
                                        local cls = _G.GetItemInfo and select(12, _G.GetItemInfo(itemId))
                                        e.approx = (r[2] == "wowhead") and (cls == nil or cls == 12)
                                    end
                                end
                            end
                            table.sort(e.rates, function(a, b) return a.rate > b.rate end)
                        end
                    end
                end
            end
        end
    end

    return {firstPt = firstPt, d0 = d0, rest = yards, secs = secs, flights = flights, boats = boats,
            per = per, firstQ = firstQ,
            kills = kills, loots = loots}
end

-- "Que faire" pour une quete (ligne grise sous son nom) : court (1 ligne) + complet (infobulle).
-- Parler / livrer, tuer, ramasser (avec taux et monstre), utiliser un objet, aller quelque part,
-- et la zone de l'objectif si elle differe de celle du donneur. En cache (vide a l'actualisation).
function prereq.QuestDesc(qid)
    local cache = prereq.descCache
    if not cache then cache = {}; prereq.descCache = cache end
    if cache[qid] then return cache[qid][1], cache[qid][2], cache[qid][3] end
    local q = GetQuest(qid)
    if not q then cache[qid] = {"", nil}; return "", nil end
    local db = Questie()
    local function NpcName(list)
        if type(list) == "table" and list[1] then
            local n = GetNPC(list[1])
            return n and n.name, n
        end
    end
    local function ZoneOf(spawn)
        if not (spawn and spawn.uiMap and _G.C_Map and _G.C_Map.GetMapInfo) then return nil end
        local ok, info = pcall(_G.C_Map.GetMapInfo, spawn.uiMap)
        return ok and info and info.name or nil
    end
    local st, fi = q.Starts or {}, q.Finisher or {}
    local giver, giverNpc = NpcName(st.NPC)
    local finisher = NpcName(fi.NPC)
    local giverZone = giverNpc and ZoneOf(NearestSpawn(giverNpc.spawns))
    local inLog = IsOnQuest(qid)
    local game
    if inLog and _G.C_QuestLog and _G.C_QuestLog.GetQuestObjectives then
        local ok, g = pcall(_G.C_QuestLog.GetQuestObjectives, qid)
        if ok and type(g) == "table" then game = g end
    end
    local function Count(name)
        for _, go in ipairs(game or {}) do
            if type(go.text) == "string" and go.text:find(name, 1, true) then
                local req, got = tonumber(go.numRequired), tonumber(go.numFulfilled)
                if req then return max(0, req - (got or 0)) end
            end
        end
        for _, txt in ipairs(type(q.objectivesText) == "table" and q.objectivesText or {}) do
            if type(txt) == "string" and txt:find(name, 1, true) then
                return tonumber(txt:match("(%d+)%s+" .. name:gsub("%p", "%%%0"))) or tonumber(txt:match("(%d+)"))
            end
        end
    end
    local FR, EN, LO, PK, WA = prereq.Col("FRIENDLY"), prereq.Col("ENEMY"), prereq.Col("LOOT"), prereq.Col("PICK"), prereq.Col("WARN")
    local function N(n, name, col)
        local nm = (col or "") .. name .. (col and "|r" or "")
        return (n and n > 0) and ("|cffffffff" .. n .. "|r " .. nm) or nm
    end
    local parts, objZone = {}, nil
    local kills, loots, uses = {}, {}, {}
    for _, o in ipairs(type(q.ObjectiveData) == "table" and q.ObjectiveData or {}) do
        local t = o.Type
        if t == "monster" or t == "killcredit" then
            local id = o.Id
            if t == "killcredit" and type(o.IdList) == "table" then id = o.IdList[1] end
            local n = GetNPC(id)
            if n and n.name then
                kills[#kills + 1] = N(Count(n.name), n.name, EN)
                objZone = objZone or ZoneOf(NearestSpawn(n.spawns))
            end
        elseif t == "item" then
            local it = GetItem(o.Id)
            if it and it.name then
                local best, bestName, bestSrc, bestNpc
                for _, nid in ipairs(it.npcDrops or {}) do
                    local rate, src
                    if db and type(db.GetItemDroprate) == "function" then
                        local ok, r = pcall(db.GetItemDroprate, o.Id, nid)
                        if ok and type(r) == "table" then rate, src = tonumber(r[1]), r[2] end
                    end
                    if not bestNpc or (rate and (not best or rate > best)) then
                        local n = GetNPC(nid)
                        if n then best, bestName, bestSrc, bestNpc = rate, n.name, src, n end
                    end
                end
                local s = N(Count(it.name), it.name, LO)
                if best then
                    local cls = _G.GetItemInfo and select(12, _G.GetItemInfo(o.Id))
                    local approx = bestSrc == "wowhead" and (cls == nil or cls == 12)
                    s = s .. " |cff8a8a8a(" .. (approx and "~" or "") .. (best >= 10 and fmt("%d%%", floor(best + 0.5)) or fmt("%.1f%%", best)) .. ")|r"
                end
                if bestName then
                    s = s .. " " .. fmt(L["from %s"], EN .. bestName .. "|r")
                    objZone = objZone or ZoneOf(NearestSpawn(bestNpc.spawns))
                elseif it.objectDrops and it.objectDrops[1] then
                    local ob = GetObject(it.objectDrops[1])
                    if ob and ob.name then
                        s = s .. " " .. fmt(L["from %s"], PK .. ob.name .. "|r")
                        objZone = objZone or ZoneOf(NearestSpawn(ob.spawns))
                    end
                end
                loots[#loots + 1] = s
            end
        elseif t == "object" then
            local ob = GetObject(o.Id)
            if ob and ob.name then
                uses[#uses + 1] = N(Count(ob.name), ob.name, PK)
                objZone = objZone or ZoneOf(NearestSpawn(ob.spawns))
            end
        elseif t == "event" then
            local te = q.triggerEnd
            local place = type(te) == "table" and te[1] or o.Text
            local sp = type(te) == "table" and NearestSpawn(te[2]) or nil
            objZone = objZone or ZoneOf(sp)
            if place then parts[#parts + 1] = fmt(L["Go to %s"], WA .. place .. "|r") end
        end
    end
    -- segments : {sep, text} ; un segment n'est jamais coupe (compte + nom, distance...)
    local pieces = {}
    local function Group(fmtKey, list)
        for i, v in ipairs(list) do
            pieces[#pieces + 1] = {sep = (i == 1) and "  -  " or ", ", text = (i == 1) and fmt(L[fmtKey], v) or v}
        end
    end
    Group("Kill %s", kills)
    for _, ptxt in ipairs(parts) do pieces[#pieces + 1] = {sep = "  -  ", text = ptxt} end
    Group("Loot %s", loots)
    Group("Use/collect %s", uses)
    if #kills > 0 then table.insert(parts, 1, fmt(L["Kill %s"], table.concat(kills, ", "))) end
    if #loots > 0 then parts[#parts + 1] = fmt(L["Loot %s"], table.concat(loots, ", ")) end
    if #uses > 0 then parts[#parts + 1] = fmt(L["Use/collect %s"], table.concat(uses, ", ")) end
    if #parts == 0 then
        -- discussion / livraison
        if type(st.Item) == "table" and st.Item[1] and finisher then
            local it = GetItem(st.Item[1])
            parts[1] = fmt(L["Deliver %s to %s"], LO .. (it and it.name or "?") .. "|r", FR .. finisher .. "|r")
        elseif giver and finisher and giver ~= finisher then
            parts[1] = fmt(L["Talk to %s"], FR .. giver .. "|r > " .. FR .. finisher .. "|r")
        elseif giver or finisher then
            parts[1] = fmt(L["Talk to %s"], FR .. (giver or finisher) .. "|r")
        else
            parts[1] = L["Talk to NPCs"]
        end
        local fz = finisher and NpcName(fi.NPC) and select(2, NpcName(fi.NPC))
        objZone = fz and ZoneOf(NearestSpawn(fz.spawns)) or nil
        pieces[#pieces + 1] = {sep = "  -  ", text = parts[1]}
    end
    local text = table.concat(parts, "  -  ")
    if objZone and objZone ~= giverZone then
        text = text .. "  " .. fmt(L["in %s"], objZone)
        pieces[#pieces + 1] = {sep = "  ", text = fmt(L["in %s"], objZone)}
    end
    cache[qid] = {text, text, pieces}
    return text, text, pieces
end

-- Quantite restante d'un objectif (journal si la quete y est, sinon texte d'objectif Questie)
function prereq.ObjCount(q, qid, name)
    if not (q and name) then return nil end
    if IsOnQuest(qid) and _G.C_QuestLog and _G.C_QuestLog.GetQuestObjectives then
        local ok, g = pcall(_G.C_QuestLog.GetQuestObjectives, qid)
        for _, go in ipairs(ok and type(g) == "table" and g or {}) do
            if type(go.text) == "string" and go.text:find(name, 1, true) then
                local req, got = tonumber(go.numRequired), tonumber(go.numFulfilled)
                if req then return max(0, req - (got or 0)) end
            end
        end
    end
    for _, txt in ipairs(type(q.objectivesText) == "table" and q.objectivesText or {}) do
        if type(txt) == "string" and txt:find(name, 1, true) then
            return tonumber(txt:match("(%d+)%s+" .. name:gsub("%p", "%%%0"))) or tonumber(txt:match("(%d+)"))
        end
    end
end

-- Hotels des ventes accessibles (commissaires-priseurs Questie Townsfolk, amicaux), un par carte
function prereq.AuctionPoints()
    if prereq.ahPoints then return prereq.ahPoints end
    local pts = {}
    local loader = _G.QuestieLoader
    local ok, tf = false, nil
    if loader then ok, tf = pcall(loader.ImportModule, loader, "Townsfolk") end
    local ids = ok and type(tf) == "table" and type(tf.townsfolk) == "table" and tf.townsfolk["Auctioneer"] or {}
    for _, id in ipairs(ids) do
        local n = GetNPC(id)
        if n and n.friendly ~= false then
            local sp = NearestSpawn(n.spawns)
            if sp then
                local dup = false
                for _, p in ipairs(pts) do if p.uiMap == sp.uiMap then dup = true break end end
                if not dup then pts[#pts + 1] = {uiMap = sp.uiMap, x = sp.x, y = sp.y, name = n.name, id = id} end
            end
        end
    end
    if #pts > 0 then prereq.ahPoints = pts end
    return pts
end

-- Achat facultatif a l'HV pour les objets a ramasser : objet echangeable (lie quand equipe ou
-- pas lie, pas objet de quete), quantite connue, et trajet jusqu'a l'HV le plus proche plus court
-- que la duree de farm estimee (quantite / taux x 30 s). Avec Auctionator, seulement si un prix
-- est connu (affiche). L'etape d'achat se valide quand les objets sont dans les sacs (.collect),
-- et l'etape "objectifs" de la quete passe ensuite toute seule.
function prereq.AddAHTasks(tasks, qids)
    local tr = addon.travel
    if not (tr and type(tr.TimeTo) == "function") then return end
    local GII = (_G.C_Item and _G.C_Item.GetItemInfo) or _G.GetItemInfo
    if not GII then return end
    local pts = prereq.AuctionPoints()
    if #pts == 0 then return end
    local best, bestT
    for _, p in ipairs(pts) do
        local ok, t = pcall(tr.TimeTo, p.uiMap, p.x, p.y)
        t = ok and tonumber(t) or nil
        if t and (not bestT or t < bestT) then best, bestT = p, t end
    end
    if not best then return end
    local db = Questie()
    local api = _G.Auctionator and _G.Auctionator.API and _G.Auctionator.API.v1
    local byId = {}
    for _, t in ipairs(tasks) do byId[t.id] = t end
    for _, qid in ipairs(qids or {}) do
        local q = GetQuest(qid)
        for _, o in ipairs(q and type(q.ObjectiveData) == "table" and q.ObjectiveData or {}) do
            local it = o.Type == "item" and GetItem(o.Id) or nil
            local cnt = it and prereq.ObjCount(q, qid, it.name)
            local tid = "ah" .. tostring(o.Id) .. "_" .. tostring(qid)
            if it and cnt and cnt > 0 and not byId[tid] then
                local r = {pcall(GII, o.Id)}
                local cls, bind = r[13], r[15]
                if r[1] and r[2] and cls ~= 12 and (bind == 0 or bind == 2) then
                    local rate
                    for _, nid in ipairs(it.npcDrops or {}) do
                        if db and type(db.GetItemDroprate) == "function" then
                            local ok2, rr = pcall(db.GetItemDroprate, o.Id, nid)
                            local v = ok2 and type(rr) == "table" and tonumber(rr[1]) or nil
                            if v and v > 0 and (not rate or v > rate) then rate = v end
                        end
                    end
                    local farm = rate and (cnt / (rate / 100) * 30) or nil
                    local price
                    if api and type(api.GetAuctionPriceByItemID) == "function" then
                        local ok3, p = pcall(api.GetAuctionPriceByItemID, "RXPGuides", o.Id)
                        price = ok3 and tonumber(p) or nil
                    end
                    if farm and bestT < farm and (price or not api) then
                        local txt = fmt(L["Buy %s at the Auction House"],
                                        "|r|cffffffff" .. cnt .. "|r |cRXP_LOOT_" .. Clean(it.name) .. "|r|cRXP_WARN_")
                        if price and _G.GetCoinTextureString then
                            local ok4, money = pcall(_G.GetCoinTextureString, price)
                            if ok4 and money then txt = txt .. " - " .. fmt(L["last price %s"], money) end
                        end
                        local lines = {GotoLine(best), "    >>|cRXP_WARN_" .. txt .. " " .. L["(optional)"] .. "|r"}
                        local ref = UnitRef(best.name, best.id)
                        if ref then lines[#lines + 1] = "    .target " .. ref end
                        lines[#lines + 1] = fmt("    .collect %d,%d,%d", o.Id, cnt, qid)
                        lines[#lines + 1] = fmt("    .isQuestNotComplete %d", qid)
                        local t = NewTask(tid, lines, best, {}, "ah", qid)
                        tasks[#tasks + 1] = t
                        byId[tid] = t
                        local ct = byId["c" .. qid]
                        if ct then ct.after[#ct.after + 1] = tid end
                    end
                end
            end
        end
    end
end

-- Taches fusionnees de plusieurs chaines (une seule liste pour le planificateur) : doublons
-- retires, precedences de chaque chaine gardees ; la quete visee d'une chaine qui est aussi un
-- prerequis d'une autre n'est prise qu'une fois.
function prereq.MergedTasks(targets)
    local tasks, seen, chainAll, inChain = {}, {}, {}, {}
    for _, tid in ipairs(targets) do
        local ch = MissingChain(tid)
        for _, q in ipairs(ch) do
            if not inChain[q] then inChain[q] = true; chainAll[#chainAll + 1] = q end
        end
        for _, t in ipairs(BuildTasks(tid, ch)) do
            if not seen[t.id] then seen[t.id] = true; tasks[#tasks + 1] = t end
        end
    end
    local out = {}
    for _, t in ipairs(tasks) do
        if not (t.kind == "target" and (seen["a" .. t.questId] or inChain[t.questId])) then out[#out + 1] = t end
    end
    return out, chainAll
end

-- Distance d'une quete dans l'ordre prevu : depuis le point precedent du trajet (la position
-- actuelle du joueur pour la 1re), marche + ses vols / bateaux. Pas de temps estime.
function prereq.QuestDist(ef, qid)
    if type(ef) ~= "table" or type(ef.per) ~= "table" then return "" end
    local p = ef.per[qid]
    if not p then return "" end
    local y = p.y
    if qid == ef.firstQ then
        local dNow = ef.d0 or 0
        local me = prereq.PlayerWorldPos()
        if ef.firstPt and me then
            local d = prereq.WorldDist(me, ef.firstPt)
            if d and d < 1e8 then dNow = d end
        end
        y = y + dNow
    end
    y = floor(y + 0.5)
    local ys = y >= 1000 and fmt("%d,%03d", floor(y / 1000), y % 1000) or tostring(y)
    local parts = {}
    if y >= 20 then parts[1] = "|cff7fc8ff" .. fmt(L["%s yd"], ys) .. "|r" end
    if p.f > 0 then parts[#parts + 1] = "|cffc8a0ff" .. fmt(L["%d flight(s)"], p.f) .. "|r" end
    if p.b > 0 then parts[#parts + 1] = "|cffc8a0ff" .. fmt(L["%d boat(s)"], p.b) .. "|r" end
    return table.concat(parts, "  -  "), parts
end

-- Deplacement total d'une chaine : metres (1re jambe recalculee depuis la position actuelle),
-- vols et bateaux ; pas de temps. Valeurs insecables (milliers separes par ",").
function prereq.CardMove(ef)
    if type(ef) ~= "table" or not ef.rest then return "" end
    local dNow = ef.d0 or 0
    local me = prereq.PlayerWorldPos()
    if ef.firstPt and me then
        local d = prereq.WorldDist(me, ef.firstPt)
        if d and d < 1e8 then dNow = d end
    end
    local y = floor(ef.rest + dNow + 0.5)
    local parts = {}
    if y >= 20 then
        parts[#parts + 1] = "|cff7fc8ff" .. fmt(L["%s yd"], y >= 1000 and fmt("%d,%03d", floor(y / 1000), y % 1000) or tostring(y)) .. "|r"
    end
    if (ef.flights or 0) > 0 then parts[#parts + 1] = "|cffc8a0ff" .. fmt(L["%d flight(s)"], ef.flights) .. "|r" end
    if (ef.boats or 0) > 0 then parts[#parts + 1] = "|cffc8a0ff" .. fmt(L["%d boat(s)"], ef.boats) .. "|r" end
    return table.concat(parts, "  -  ")
end

-- Ligne d'effort mise en forme, avec la distance du joueur au 1er lieu recalculee a l'instant
-- (le reste du trajet est fixe) : ligne courte, lignes de l'infobulle, secondes estimees.
function prereq.EffortLine(e)
    if type(e) ~= "table" or not e.rest then return (type(e) == "table" and e.line) or "", {}, 0 end
    local dNow = e.d0 or 0
    local me = prereq.PlayerWorldPos()
    if e.firstPt and me then
        local d = prereq.WorldDist(me, e.firstPt)
        if d and d < 1e8 then dNow = d end
    end
    local yards = e.rest + dNow
    local secs = max(0, (e.secs or 0) + (dNow - (e.d0 or 0)) / 7)
    local CY, CF, W, G = "|cff7fc8ff", "|cffc8a0ff", "|cffffffff", "|cff8a8a8a"
    local function Num(v)
        v = floor(v + 0.5)
        if v >= 1000 then return fmt("%d %03d", floor(v / 1000), v % 1000) end
        return tostring(v)
    end
    local function Rate(x)
        if not x.rate then return "" end
        local r = x.rate >= 10 and fmt("%d%%", floor(x.rate + 0.5)) or fmt("%.1f%%", x.rate)
        return " " .. G .. "(" .. (x.approx and "~" or "") .. r .. ")|r"
    end
    local function List(list, col, withRate)
        local parts = {}
        for _, x in ipairs(list) do
            parts[#parts + 1] = (x.n and (W .. x.n .. "|r ") or "") .. col .. x.name .. "|r" .. (withRate and Rate(x) or "")
        end
        return table.concat(parts, ", ")
    end
    local SEPD = "  -  "
    local head = {CY .. fmt(L["%s yd"], Num(yards)) .. "|r", CY .. "~" .. fmt(L["%d min"], max(1, floor(secs / 60 + 0.5))) .. "|r"}
    if (e.flights or 0) > 0 then head[#head + 1] = CF .. fmt(L["%d flight(s)"], e.flights) .. "|r" end
    if (e.boats or 0) > 0 then head[#head + 1] = CF .. fmt(L["%d boat(s)"], e.boats) .. "|r" end
    local ENEMY, LOOT = prereq.Col("ENEMY"), prereq.Col("LOOT")
    local parts = {table.concat(head, SEPD)}
    if #(e.kills or {}) > 0 then parts[#parts + 1] = L["Kill:"] .. " " .. List(e.kills, ENEMY) end
    if #(e.loots or {}) > 0 then parts[#parts + 1] = L["Loot:"] .. " " .. List(e.loots, LOOT, true) end
    local full = {table.concat(head, SEPD)}
    if #(e.kills or {}) > 0 then full[#full + 1] = L["Kill:"] .. " " .. List(e.kills, ENEMY) end
    for _, x in ipairs(e.loots or {}) do
        full[#full + 1] = L["Loot:"] .. " " .. (x.n and (W .. x.n .. "|r ") or "") .. LOOT .. x.name .. "|r" .. Rate(x)
        for i, m in ipairs(x.rates or {}) do
            if i > 5 then break end
            local line = fmt("   %s%s|r: %s%.1f%%", ENEMY, m.name, (m.src == "wowhead") and "~" or "", m.rate)
            if x.n and m.rate > 0 then line = line .. "  " .. fmt(L["~%d kills"], math.ceil(x.n * 100 / m.rate)) end
            full[#full + 1] = line
        end
    end
    return table.concat(parts, SEPD), full, secs, yards
end

-- Etape ou le joueur reprendra le guide d'origine apres le guide genere : etape sauvegardee,
-- en sautant celles deja satisfaites (en comptant la chaine comme rendue et la quete visee
-- comme prise), puis son lieu principal (1er .goto avec rayon, sinon le dernier .goto).
function prereq.ReturnPoint(rg, targetId, chain)
    if type(rg) ~= "table" then return nil end
    if not rg.steps and addon.FetchGuide then
        local ok, g = pcall(addon.FetchGuide, addon, rg)
        if ok and type(g) == "table" and g.steps then rg = g end
    end
    if type(rg.steps) ~= "table" then return nil end
    local s = 1
    if addon.GetGuideProgress then
        local ok, v = pcall(addon.GetGuideProgress, rg)
        s = ok and tonumber(v) or 1
    end
    local willDone = {}
    for _, q in ipairs(chain or {}) do willDone[q] = true end
    local isTarget = type(targetId) == "table" and targetId or {[targetId or -1] = true}
    local function Sat(el)
        local q = el.questId
        if not q then return nil end
        if el.tag == "accept" then return IsOnQuest(q) or Done(q) or willDone[q] or isTarget[q] or false end
        if el.tag == "turnin" then return Done(q) or willDone[q] or false end
        if el.tag == "complete" then return Done(q) or willDone[q] or (IsOnQuest(q) and IsObjComplete(q)) or false end
        return nil
    end
    local step
    for i = max(1, s), min(#rg.steps, s + 40) do
        local st = rg.steps[i]
        local any, all = false, true
        for _, el in ipairs(st and st.elements or {}) do
            local r = Sat(el)
            if r ~= nil then
                any = true
                if not r then all = false end
            elseif el.tag and not el.textOnly then
                all = false   -- autre objectif (vol, foyer, xp...) : on ne sait pas, on s'arrete la
            end
        end
        if not (any and all) then step = st break end
    end
    if not step then return nil end
    local first, last
    for _, el in ipairs(step.elements or {}) do
        if el.tag == "goto" and tonumber(el.zone) and tonumber(el.x) and tonumber(el.y) then
            if el.radius and not first then first = el end
            last = el
        end
    end
    local g = first or last
    if not g then return nil end
    local text
    for _, el in ipairs(step.elements) do
        local t = el.text or el.title
        if el.tag ~= "goto" and type(t) == "string" and t:find("%S") then
            text = t:gsub("%*quest%*", el.questId and QuestName(el.questId) or "")
            break
        end
    end
    text = tostring(text or rg.displayName or rg.name or "")
    text = text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("|T.-|t", ""):gsub("\n", " "):gsub("\n", " ")
    if #text > 60 then text = text:sub(1, 60):gsub("[\192-\255][\128-\191]*$", "") .. "..." end
    return {uiMap = tonumber(g.zone), x = tonumber(g.x), y = tonumber(g.y), text = Clean(text)}
end

---------------------------------------------------------------------------
-- Lancement d'un guide de prerequis
---------------------------------------------------------------------------
function prereq:Guide(questId, regen)
    if not Questie() then
        Print("Questie is required (quest database): install the Questie addon, then /reload.")
        return
    end
    if InCombatLockdown() then
        Print("not possible in combat, try again afterwards.")
        return
    end
    -- questId == "all" : un seul guide pour toutes les chaines bloquees du guide actuel
    local all = questId == "all"
    local q, chain, targets
    if all then
        targets = {}
        local plan0 = DB().plan
        if regen and type(plan0) == "table" and type(plan0.targets) == "table" then
            for _, id in ipairs(plan0.targets) do
                if not Done(id) and not IsOnQuest(id) then targets[#targets + 1] = id end
            end
        else
            for _, t in ipairs(prereq.BlockedList()) do targets[#targets + 1] = t.id end
        end
        if #targets == 0 then
            if regen then DB().plan = nil; return end
            Print("Nothing blocked.")
            return
        end
    else
        q = GetQuest(questId)
        if not q then
            Print("quest %s is unknown to Questie.", tostring(questId))
            return
        end
        chain = MissingChain(questId)
        if #chain == 0 and (IsOnQuest(questId) or Done(questId)) then
            if regen then DB().plan = nil; return end
            Print("nothing to do: \"%s\" is already in your quest log or turned in.", q.name or questId)
            return
        end
    end
    local cur = addon.currentGuide
    local returnTo
    if cur and not cur.empty and cur.group ~= GROUP then
        returnTo = cur.group .. "\\" .. cur.name
    elseif cur and cur.group == GROUP and type(DB().plan) == "table" then
        -- re-calcul depuis le guide genere : on garde le guide de retour d'origine
        returnTo = DB().plan.returnTo
    end
    -- guide d'origine (objet) pour savoir ou le joueur reprendra
    local rg
    if cur and not cur.empty and cur.group ~= GROUP then
        rg = cur
    elseif type(returnTo) == "string" and addon.GetGuideTable then
        local grp, nm = returnTo:match("^(.-)\\(.*)$")
        if grp then
            local ok, g = pcall(addon.GetGuideTable, grp, nm)
            if ok then rg = g end
        end
    end
    local combo, tset
    if all then
        local mtasks, chainAll = prereq.MergedTasks(targets)
        chain = chainAll
        tset = {}
        for _, id in ipairs(targets) do tset[id] = true end
        local src = rg or cur
        local title = src and (src.displayName or src.name) or "?"
        combo = {
            tasks = mtasks,
            name = fmt(L["All prerequisites - %s"], Clean(title)),
            intro = fmt(L["All prerequisites for %d blocked quests. When this guide is done you go back to your guide."], #targets),
        }
    end
    -- Guide me / Do all sur une chaine : ses quetes ne sont plus ignorees (le joueur les veut maintenant)
    do
        local ign = DB().ignored
        if not all and ign[questId] then ign[questId] = nil end
        for _, id in ipairs(targets or {}) do ign[id] = nil end
        for _, c in ipairs(chain or {}) do
            local id = type(c) == "table" and (c.id or c.questId) or c
            if id then ign[id] = nil end
        end
    end
    local okR, ret = pcall(prereq.ReturnPoint, rg, tset or questId, chain)
    local text, guideName = BuildGuideText(questId, chain, returnTo, okR and ret or nil, combo)
    -- diagnostic : dernier guide genere (/prereq dernier)
    DB().lastGuide = text
    DB().lastGuideInfo = fmt(L["quest %d, %d prerequisite(s), %d step(s) reordered"],
                             tonumber(questId) or 0, #chain, prereq.lastRepaired or 0)
    local ok, err = pcall(addon.RegisterGuide, text)
    if not ok then
        Print("guide generation error: %s", tostring(err))
        return
    end
    if addon.SaveGuideProgress and cur then addon.SaveGuideProgress(cur, addon.GetGuideProgress(cur)) end
    -- repart de la 1re etape du guide genere
    local key = addon.BuildGuideKey and addon.BuildGuideKey(GROUP, "Quests", guideName)
    if key and _G.RXPCData and _G.RXPCData.guideProgress then _G.RXPCData.guideProgress[key] = nil end
    -- plan memorise : sert a verifier en route que le trajet est encore le bon (CheckRoute)
    DB().plan = {
        targetId = questId, guideName = guideName, returnTo = returnTo, made = time(),
        pos = prereq.PlayerWorldPos(), steps = prereq.lastTravelSteps or {}, targets = targets,
    }
    prereq.lastSeenGuide = GROUP .. "||" .. guideName
    prereq.lastReplan = GetTime()
    addon:LoadGuideTable(GROUP, guideName)
    prereq.guideStarted = true
    if regen then
        Print("Route recalculated from your position.")
    elseif all then
        Print("guide created: %d chain(s), %d quest(s) to do.", #targets, #chain)
    elseif #chain > 0 then
        Print("guide created: %d quest(s) to do before \"%s\".", #chain, q.name or questId)
    else
        Print("guide created: accept \"%s\", then back to your guide.", q.name or questId)
    end
    prereq.dirty = true
end

-- position du joueur en coordonnees monde {wx, wy, inst} (Travel.lua si dispo, sinon HBD)
function prereq.PlayerWorldPos()
    local tr = addon.travel
    if tr and type(tr.PlayerPos) == "function" then
        local ok, a, b, c = pcall(tr.PlayerPos)
        if ok then
            if type(a) == "table" and tonumber(a.wx or a[1]) then
                return {wx = tonumber(a.wx or a[1]), wy = tonumber(a.wy or a[2]), inst = tonumber(a.inst or a[3])}
            elseif tonumber(a) and tonumber(b) then
                return {wx = tonumber(a), wy = tonumber(b), inst = tonumber(c)}
            end
        end
    end
    if HBD then
        local ok, x, y, inst = pcall(HBD.GetPlayerWorldPosition, HBD)
        if ok and tonumber(x) and tonumber(y) then return {wx = x, wy = y, inst = inst} end
    end
end

-- distance en metres/yards monde (1e9 si autre continent, nil si inconnue)
function prereq.WorldDist(a, b)
    if type(a) ~= "table" or type(b) ~= "table" then return nil end
    local ax, ay, bx, by = tonumber(a.wx), tonumber(a.wy), tonumber(b.wx), tonumber(b.wy)
    if not (ax and ay and bx and by) then return nil end
    if a.inst and b.inst and a.inst ~= b.inst then return 1e9 end
    return math.sqrt((ax - bx) ^ 2 + (ay - by) ^ 2)
end

-- Verifie que le trajet du guide genere correspond encore a la position du joueur ;
-- sinon re-genere le guide depuis l'etat actuel (hors combat, au plus toutes les 20 s).
-- Appelee par le ticker, au changement de zone / chargement, et au (re)chargement du guide.
function prereq:CheckRoute()
    local g = addon.currentGuide
    local key = (g and not g.empty) and ((g.group or "") .. "||" .. (g.name or "")) or nil
    local justLoaded = key ~= prereq.lastSeenGuide
    prereq.lastSeenGuide = key
    local plan = DB().plan
    if not (g and g.group == GROUP and type(plan) == "table" and plan.targetId and plan.guideName == g.name) then return end
    if InCombatLockdown() or not Questie() then return end
    local now = GetTime()
    if prereq.lastReplan and now - prereq.lastReplan < 20 then return end
    local me = prereq.PlayerWorldPos()
    if not me then return end
    local D = prereq.WorldDist
    local why
    if justLoaded then
        -- guide repris a la main / apres connexion : plan trop vieux ou fait ailleurs
        local d = D(me, plan.pos)
        if time() - (tonumber(plan.made) or 0) > 120 or (d and d > 250) then why = "load" end
    end
    if not why then
        local step = tonumber(_G.RXPCData and _G.RXPCData.currentStep)
        local e = step and type(plan.steps) == "table" and plan.steps[step]
        if type(e) == "table" then
            local dest = e.target or e.to
            local dFrom, dTo, dDest = D(me, e.from), D(me, e.to), D(me, e.target)
            -- loin du depart de l'etape, sans s'etre rapproche de la destination
            local progress = dest and e.from and (D(me, dest) or 1e9) < (D(e.from, dest) or 0) - 50
            if dFrom and dFrom > 250 and not progress then
                why = "far"
            elseif ((dTo and dTo < 150) or (dDest and dDest < 150)) and (D(e.from, dest) or 0) > 300 then
                -- deja arrive au bout d'un vrai trajet (pas un court deplacement) sans que l'etape avance
                why = "arrived"
            elseif dest and tonumber(e.eta) and e.eta > 0 and addon.travel
                   and type(addon.travel.WorldTimeFromPlayer) == "function" then
                local ok, t = pcall(addon.travel.WorldTimeFromPlayer, dest.wx, dest.wy, dest.inst)
                if ok and tonumber(t) and tonumber(t) < 0.7 * e.eta then why = "faster" end
            end
        end
    end
    if why then
        prereq.lastReplan = now
        prereq.lastReplanWhy = why
        prereq:Guide(plan.targetId, true)
    end
end

---------------------------------------------------------------------------
-- Analyse des guides (actuel + suivants)
---------------------------------------------------------------------------
local function GuideKey(g)
    return g and (g.key or ((g.group or "") .. "||" .. (g.name or ""))) or "?"
end

local function GuideTitle(g)
    if not g then return "?" end
    return g.displayName or g.name or "?"
end

-- structure statique d'un guide (une fois par guide)
local staticCache = setmetatable({}, {__mode = "k"})
local function ScanStatic(guide)
    local c = staticCache[guide]
    if c then return c end
    c = {accepts = {}, turnins = {}, needs = {}}
    for i, step in ipairs(guide.steps or {}) do
        -- etape conditionnelle (.isOnQuest, .isQuestTurnedIn...) : pas de detection "absente"
        local conditional = step.optional
        for _, el in ipairs(step.elements or {}) do
            if type(el.tag) == "string" and el.tag:find("^is") then conditional = true break end
        end
        for _, el in ipairs(step.elements or {}) do
            local qid = el.questId
            if qid then
                if el.tag == "accept" then
                    table.insert(c.accepts, {id = qid, step = i})
                    table.insert(c.needs, {id = qid, step = i, kind = "accept"})
                elseif el.tag == "turnin" then
                    table.insert(c.turnins, {id = qid, step = i})
                end
                if (el.tag == "complete" or el.tag == "turnin") and not conditional and not el.skipIfMissing then
                    table.insert(c.needs, {id = qid, step = i, kind = "missing"})
                end
            end
        end
    end
    staticCache[guide] = c
    return c
end

-- guide suivant (#next) sans le charger : premier actif, sinon le dernier trouve
local function FetchFull(stub)
    if not stub then return nil end
    if stub.steps then return stub end
    if not addon.FetchGuide then return nil end
    local ok, g = pcall(addon.FetchGuide, addon, stub)
    if ok and type(g) == "table" and g.steps then return g end
end

local function ResolveNext(guide)
    local nxt = guide and guide.next
    if type(nxt) ~= "string" or nxt == "" or not addon.GetGuideTable then return nil end
    local found
    for entry in nxt:gmatch("[^;]+") do
        entry = entry:gsub("^%s+", ""):gsub("%s+$", "")
        local group, name = guide.group, entry
        local g2, n2 = entry:match("^(.*)\\%s*(.-)$")
        if g2 and n2 and n2 ~= "" then group, name = (g2:gsub("%s+$", "")), n2 end
        local stub = addon.GetGuideTable(group, name)
        if not stub and addon.affix then
            local ok, alt = pcall(string.gsub, name, "^(%d)-(%d%d?)", addon.affix)
            if ok and alt and alt ~= name then stub = addon.GetGuideTable(group, alt) end
        end
        if not stub and addon.groupAlias and addon.groupAlias[group] then
            stub = addon.GetGuideTable(addon.groupAlias[group], name)
        end
        if stub then
            found = stub
            local active = true
            if addon.IsGuideActive then
                local ok, a = pcall(addon.IsGuideActive, stub)
                active = not ok or a
            end
            if active then break end
        end
    end
    return FetchFull(found)
end

-- liste des segments a analyser : {guide=, start=, current=bool}
local function Segments()
    local guide = addon.currentGuide
    if not guide or guide.empty or not guide.steps then return {} end
    local start = tonumber(_G.RXPCData and _G.RXPCData.currentStep) or 1
    local segs = {{guide = guide, start = start, current = true}}
    local seen = {[GuideKey(guide)] = true}
    local g = guide
    for _ = 1, NEXT_GUIDES do
        g = ResolveNext(g)
        if not g or seen[GuideKey(g)] then break end
        seen[GuideKey(g)] = true
        table.insert(segs, {guide = g, start = 1})
    end
    return segs
end

-- tous les prerequis non rendus d'une quete (toutes les alternatives faisables, recursif)
local function AllPrereqs(qid)
    local out, seen = {}, {[qid] = true}
    local function visit(id, depth)
        local q = GetQuest(id)
        if not q or depth > MAX_DEPTH then return end
        for _, list in ipairs({q.preQuestSingle, q.preQuestGroup}) do
            if type(list) == "table" then
                for _, p in ipairs(list) do
                    if not seen[p] then
                        seen[p] = true
                        if not Done(p) and Eligible(GetQuest(p)) then
                            table.insert(out, p)
                            visit(p, depth + 1)
                        end
                    end
                end
            end
        end
    end
    visit(qid, 0)
    return out
end

-- qid -> liste {guide=, quest=, step=, self=} : quetes des guides suivants qui en ont besoin
-- (self = la quete elle-meme est poursuivie/rendue dans un guide suivant sans y etre prise)
local function BuildFuture(segs)
    local future, keyed, memo, firstAccept = {}, {}, {}, {}
    local function add(x, entry)
        local k = x .. ":" .. entry.guide .. ":" .. entry.quest
        if keyed[k] then return end
        keyed[k] = true
        future[x] = future[x] or {}
        table.insert(future[x], entry)
    end
    for si = 2, #segs do
        for _, a in ipairs(ScanStatic(segs[si].guide).accepts) do
            local pos = si * 100000 + a.step
            if not firstAccept[a.id] or pos < firstAccept[a.id] then firstAccept[a.id] = pos end
        end
    end
    for si = 2, #segs do
        local seg = segs[si]
        local title = GuideTitle(seg.guide)
        for _, need in ipairs(ScanStatic(seg.guide).needs) do
            local y = need.id
            local q = GetQuest(y)
            if q and Eligible(q) and not Done(y) then
                local pos = si * 100000 + need.step
                local selfNeed = need.kind == "missing" and not (firstAccept[y] and firstAccept[y] < pos)
                if need.kind == "accept" or selfNeed then
                    local entry = {guide = title, quest = y, step = need.step, self = selfNeed}
                    if selfNeed then add(y, entry) end
                    memo[y] = memo[y] or AllPrereqs(y)
                    for _, p in ipairs(memo[y]) do add(p, entry) end
                end
            end
        end
    end
    return future
end

-- donnees de la fenetre : { sections = { {title=, current=, targets={ {id, kind, step, tree} } } },
--   future = {qid -> besoins des guides suivants} }
local function BuildData()
    local data = {sections = {}, ids = {}, questie = Questie() ~= nil}
    if not data.questie then return data end
    local segs = Segments()
    -- positions globales : segment * 100000 + etape
    local turnPos, acceptPos = {}, {}
    for si, seg in ipairs(segs) do
        local c = ScanStatic(seg.guide)
        for _, t in ipairs(c.turnins) do
            if t.step >= seg.start then
                local pos = si * 100000 + t.step
                if not turnPos[t.id] or pos < turnPos[t.id] then turnPos[t.id] = pos end
            end
        end
        for _, a in ipairs(c.accepts) do
            if a.step >= seg.start then
                local pos = si * 100000 + a.step
                if not acceptPos[a.id] or pos < acceptPos[a.id] then acceptPos[a.id] = pos end
            end
        end
    end
    local ignored = DB().ignored
    local listed = {}
    -- seul le guide actuel est analyse pour les quetes bloquees ; les suivants servent
    -- uniquement a savoir ce qui est utile ensuite (BuildFuture)
    for si, seg in ipairs(segs) do if si > 1 then break end
        local section = {title = GuideTitle(seg.guide), current = seg.current, targets = {}, start = seg.start}
        local c = ScanStatic(seg.guide)
        for _, need in ipairs(c.needs) do
            local qid = need.id
            if need.step >= seg.start and not listed[qid] and not ignored[qid] then
                local pos = si * 100000 + need.step
                local Ok = function(p) return Done(p) or (turnPos[p] and turnPos[p] <= pos) end
                local q = GetQuest(qid)
                if q and Eligible(q) and not Done(qid) and not IsOnQuest(qid) then
                    if need.kind == "accept" then
                        local tree = MissingTree(qid, Ok)
                        if #tree > 0 then
                            listed[qid] = true
                            table.insert(section.targets, {id = qid, kind = "accept", step = need.step, tree = tree})
                        end
                    elseif not (acceptPos[qid] and acceptPos[qid] <= pos + 3) then
                        -- etape d'objectifs / de rendu pour une quete que je n'ai pas
                        listed[qid] = true
                        table.insert(section.targets, {id = qid, kind = "missing", step = need.step, tree = MissingTree(qid, Ok)})
                    end
                end
            end
        end
        table.insert(data.sections, section)
    end
    -- utile pour la suite : prerequis (directs ou en chaine) des quetes des guides suivants
    data.future = BuildFuture(segs)
    for _, s in ipairs(data.sections) do
        for _, t in ipairs(s.targets) do
            data.ids[t.id] = true
            for _, n in ipairs(t.tree) do data.ids[n.id] = true end
        end
    end
    return data
end

---------------------------------------------------------------------------
-- Groupe : etats des membres (messages caches via Duo.lua)
---------------------------------------------------------------------------
local memberStates = {}      -- nom en minuscules -> {[qid] = etat}
local watchedByOthers = {}   -- qid -> true (demande par un membre)
local watchedCount = 0
local lastPushed = {}        -- qid -> dernier etat envoye

local function HasGroup() return addon.duo and addon.duo.SendAll and addon.duo.Members and true or false end

local function GroupMembers()
    if not HasGroup() then return {} end
    local ok, m = pcall(addon.duo.Members)
    if ok and type(m) == "table" then return m end
    return {}
end

local function MKey(name) return strlower(tostring(name or "")) end

local function Initial(name)
    name = tostring(name or "?")
    return name:match("^[%z\1-\127\194-\244][\128-\191]*") or "?"
end

-- envoie une liste d'elements en plusieurs messages (taille limitee)
local function SendList(fn, list)
    local CHUNK = 70
    for i = 1, #list, CHUNK do
        local part = {}
        for j = i, min(#list, i + CHUNK - 1) do table.insert(part, list[j]) end
        pcall(fn, table.concat(part, ","))
    end
end

local function EncodeStates(ids)
    local out = {}
    for _, id in ipairs(ids) do
        local st = StateOf(id)
        lastPushed[id] = st
        table.insert(out, id .. ":" .. st)
    end
    return out
end

local function Watch(id)
    if not watchedByOthers[id] then
        if watchedCount > 1500 then watchedByOthers, watchedCount = {}, 0 end
        watchedByOthers[id] = true
        watchedCount = watchedCount + 1
    end
end

local currentData
local function QueryGroup()
    if not HasGroup() or not currentData then return end
    if #GroupMembers() == 0 then return end
    local ids = {}
    for id in pairs(currentData.ids) do table.insert(ids, tostring(id)) end
    if #ids == 0 then return end
    table.sort(ids)
    SendList(function(s) addon.duo.SendAll("PQQ", s) end, ids)
end

-- push des changements pour les quetes surveillees (les miennes et celles demandees)
local function PushChanges()
    if not HasGroup() or #GroupMembers() == 0 then return end
    local changed = {}
    local function check(id)
        local st = StateOf(id)
        if lastPushed[id] ~= st then
            lastPushed[id] = st
            table.insert(changed, id .. ":" .. st)
        end
    end
    local done = {}
    if currentData then
        for id in pairs(currentData.ids) do done[id] = true; check(id) end
    end
    for id in pairs(watchedByOthers) do if not done[id] then check(id) end end
    if #changed > 0 then
        SendList(function(s) addon.duo.SendAll("PQR", s) end, changed)
    end
end

local RenderSoon -- defini plus bas
local handlersRegistered = false
local function RegisterHandlers()
    if handlersRegistered or not (addon.duo and addon.duo.SendAll and addon.duo.On) then return end
    handlersRegistered = true
    addon.duo.On("PQQ", function(fields, sender)
        if type(fields) ~= "table" or not sender then return end
        local ids = {}
        for s in tostring(fields[3] or ""):gmatch("%d+") do
            local id = tonumber(s)
            if id then table.insert(ids, id); Watch(id) end
        end
        if #ids == 0 then return end
        local list = EncodeStates(ids)
        SendList(function(s) addon.duo.Send(sender, "PQR", s) end, list)
    end)
    addon.duo.On("PQR", function(fields, sender)
        if type(fields) ~= "table" or not sender then return end
        local key = MKey(sender)
        local t = memberStates[key] or {}
        memberStates[key] = t
        for id, st in tostring(fields[3] or ""):gmatch("(%d+):(%a)") do
            id = tonumber(id)
            if id and (st == "n" or st == "l" or st == "c" or st == "t") then t[id] = st end
        end
        if RenderSoon then RenderSoon() end
    end)
end
RegisterHandlers()

local STATE_TEXT = {
    n = L["not taken"], l = L["in progress"], c = L["ready to turn in"], t = L["done"],
}
local STATE_COLOR = {
    n = {0.75, 0.15, 0.15}, l = {0.95, 0.75, 0.1}, c = {0.6, 0.85, 0.2}, t = {0.15, 0.75, 0.25},
}

---------------------------------------------------------------------------
-- Fenetre : habillage RXP (memes textures, bordures, couleurs de theme et police
-- que la fenetre de guide RXP ; suit le theme choisi dans les options RXP)
-- Mise en page en "cartes" : une carte par quete bloquee, ses prerequis en retrait.
---------------------------------------------------------------------------
local TEX = "Interface/AddOns/" .. addonName .. "/Textures/"
local WHITE = "Interface/BUTTONS/WHITE8X8"
-- icones de quete deja utilisees par RXP (addon.icons dans functions.lua)
local ICON_AVAIL = "Interface/GossipFrame/AvailableQuestIcon"
local ICON_INCOMP = "Interface/GossipFrame/IncompleteQuestIcon"
local ICON_ACTIVE = "Interface/GossipFrame/ActiveQuestIcon"
local ICON_DONE = _G.READY_CHECK_READY_TEXTURE or "Interface/RaidFrame/ReadyCheck-Ready"
local ICON_NOT = _G.READY_CHECK_NOT_READY_TEXTURE or "Interface/RaidFrame/ReadyCheck-NotReady"
local ICON_NEXT = "Interface/Tooltips/ReforgeGreenArrow"
-- cadenas Blizzard (utilise tel quel, avec ce recadrage, par Details! sur ce client)
local ICON_LOCK = "Interface/PetBattles/PetBattle-LockIcon"        -- addon.icons.clicknext
local ICON_CLOSE = TEX .. "v2/rxp-btn-close"
local ICON_HELP = TEX .. "v2/icon-btn-help"
local ICON_REFRESH = "Interface/Buttons/UI-RefreshButton"
local ICON_PLUS = "Interface/Buttons/UI-PlusButton-Up"
local ICON_MINUS = "Interface/Buttons/UI-MinusButton-Up"
local ICON_GRIP = "Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up"
local ICON_GRIP_HL = "Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight"
local CLASS_TEX = {
    DEATHKNIGHT = true, DRUID = true, HUNTER = true, MAGE = true, PALADIN = true,
    PRIEST = true, ROGUE = true, SHAMAN = true, WARLOCK = true, WARRIOR = true,
}

local MY_ICON = {n = ICON_AVAIL, l = ICON_INCOMP, c = ICON_ACTIVE, t = ICON_DONE}

local MUTED = {0.62, 0.62, 0.68}
local USEFUL = {0.4, 0.9, 0.5}
local USEFUL_NAME = {0.65, 0.85, 0.68}
local NEXTNAME_W = 190
local SEP = "  >  "

local W0, H0 = 620, 300
local MIN_W, MIN_H = 460, 220
local MAX_MEMBERS = 4
local MEMBER_S = 20
local TARGET_H, PRE_H, HEAD_H = 40, 36, 32
local BTN_H = 24
local GUIDE_W, IGNORE_W = 96, 20
local XP_W = 80
local INDENT = 20

local BackdropTmpl = _G.BackdropTemplateMixin and "BackdropTemplate" or nil

local frame, scroll, content, slider, emptyText, groupText
local body, header, footer
local rows, heads = {}, {}

-- couleurs du theme RXP actif (Themes.lua : background, bottomFrameBG, bottomFrameHighlight,
-- textColor), avec repli sur RXP Blue si une valeur manque
local DEFAULT_COLORS = {
    background = {12 / 255, 12 / 255, 27 / 255, 1},
    bottomFrameBG = {18 / 255, 18 / 255, 40 / 255, 1},
    bottomFrameHighlight = {54 / 255, 62 / 255, 109 / 255, 1},
    textColor = {1, 1, 1, 1},
}
-- theme de l'interface V2 de RXP si elle est activee (sinon nil : theme V1 addon.colors)
function prereq.V2Theme()
    local v2 = addon.v2
    if not (v2 and type(v2.IsGuideWindowEnabled) == "function" and type(v2.GetTheme) == "function") then return nil end
    local ok, on = pcall(v2.IsGuideWindowEnabled, v2)
    if not (ok and on) then return nil end
    local ok2, th = pcall(v2.GetTheme, v2)
    if ok2 and type(th) == "table" and type(th.backgroundColors) == "table" and type(th.borderColors) == "table" then
        return th
    end
end

local function ThemeColor(key)
    -- V2 : memes couleurs que la fenetre de guide V2 (fond guideWindow, cadres common, bord, texte)
    local th = prereq.V2Theme()
    if th then
        local c
        if key == "background" then c = th.backgroundColors.guideWindow or th.backgroundColors.common
        elseif key == "bottomFrameBG" then c = th.backgroundColors.common
        elseif key == "bottomFrameHighlight" then c = th.borderColors.common
        elseif key == "textColor" then c = type(th.textColor) == "table" and th.textColor.common end
        if type(c) == "table" and tonumber(c[1]) then return c[1], c[2], c[3], tonumber(c[4]) or 1 end
    end
    local src = addon.colors or addon.activeTheme
    local c = type(src) == "table" and src[key] or nil
    if type(c) == "table" and type(c.common) == "table" then c = c.common end
    if type(c) == "table" and tonumber(c[1]) and tonumber(c[2]) and tonumber(c[3]) then
        return c[1], c[2], c[3], tonumber(c[4]) or 1
    end
    c = DEFAULT_COLORS[key] or DEFAULT_COLORS.textColor
    return c[1], c[2], c[3], c[4]
end

local function Lighten(r, g, b, k)
    return min(1, r + k), min(1, g + k), min(1, b + k)
end

-- couleur d'accent du theme (champ tooltip "|cAARRGGBB" des themes RXP)
local function Accent()
    local th = prereq.V2Theme()
    local tc = th and type(th.textColor) == "table" and th.textColor.title
    if type(tc) == "table" and tonumber(tc[1]) then
        return fmt("|cff%02x%02x%02x", floor(tc[1] * 255), floor(tc[2] * 255), floor(tc[3] * 255))
    end
    local t = addon.activeTheme
    local s = t and t.tooltip
    if type(s) == "string" and s:match("^|c%x%x%x%x%x%x%x%x$") then return s end
    return "|cffce7bff"
end

local function FontPath()
    local f = addon.font or (addon.activeTheme and addon.activeTheme.font)
    if type(f) == "string" and f ~= "" then return f end
    local gf = _G.GameFontNormal
    local p = gf and gf:GetFont()
    return p or "Fonts\\FRIZQT__.TTF"
end

-- tailles : basees sur la taille de police du guide RXP (option guideFontSize, 9 par defaut),
-- avec des minimums pour rester lisible d'un coup d'oeil
local function FontSize(role)
    local p = addon.settings and addon.settings.profile
    local base = max(8, min(15, p and tonumber(p.guideFontSize) or 9))
    if role == "title" then return max(17, base + 8) end
    if role == "name" then return max(14, base + 5) end
    if role == "head" then return max(14, base + 5) end
    if role == "big" then return max(15, base + 6) end
    if role == "small" then return max(11, base + 2) end
    if role == "btn" then return max(13, base + 4) end
    return max(12, base + 3)   -- "sub" : textes secondaires, boutons
end

-- texture du theme RXP (addon.GetV1Texture) ; allowNil : le theme peut ne pas en avoir
local function V1Tex(name, allowNil)
    if addon.GetV1Texture then
        local ok, p = pcall(addon.GetV1Texture, name)
        if ok and p then return p end
        if ok and allowNil then return nil end
    end
    return TEX .. name
end

local FALLBACK_BACKDROP = {
    edge = {
        bgFile = WHITE, edgeFile = TEX .. "rxp-borders", tile = true, edgeSize = 8, tileSize = 8,
        insets = {left = 4, right = 2, top = 2, bottom = 4},
    },
    guideName = {
        edgeFile = TEX .. "rxp-borders", edgeSize = 8,
        insets = {left = 4, right = 2, top = 2, bottom = 4},
    },
}
-- memes tables de bordure que la fenetre de guide (RXPFrame.backdrop, mises a jour par le theme)
local function RXPBackdrop(kind)
    local rf = addon.RXPFrame
    local b = rf and type(rf.backdrop) == "table" and rf.backdrop[kind] or nil
    if type(b) == "table" and (b.edgeFile or b.bgFile) then return b end
    return FALLBACK_BACKDROP[kind]
end

local function ApplyBackdrop(f, kind, colorKey)
    if not f then return end
    local th = prereq.V2Theme()
    local ui = addon.ui and addon.ui.v2
    if th and ui and type(ui.ApplyFrameBackdrop) == "function" and type(th.edge) == "table" then
        pcall(function()
            if f.ClearBackdrop then f:ClearBackdrop() end
            local bg = (kind == "guideName" and th.backgroundColors.guideName) or {ThemeColor(colorKey)}
            local border = (kind == "edge" and th.borderColors.commonEdge) or th.borderColors.common
            ui:ApplyFrameBackdrop(f, th.edge, bg, border)
            ui:SetFrameBackdropShown(f, true)
        end)
        return
    end
    if f.rxpBackground and ui and type(ui.SetFrameBackdropShown) == "function" then
        pcall(ui.SetFrameBackdropShown, ui, f, false)
    end
    if not f.SetBackdrop then return end
    pcall(function()
        if f.ClearBackdrop then f:ClearBackdrop() end
        f:SetBackdrop(RXPBackdrop(kind == "card" and "edge" or kind))
        f:SetBackdropColor(ThemeColor(colorKey))
    end)
end

-- textes : police du theme RXP, re-appliquee a chaque ouverture
local texts = {}
local function StyleText(e)
    pcall(e.fs.SetFont, e.fs, FontPath(), FontSize(e.role), "")
    if e.color then
        e.fs:SetTextColor(e.color[1], e.color[2], e.color[3])
    else
        local r, g, b = ThemeColor("textColor")
        e.fs:SetTextColor(r, g, b)
    end
end
local function NewText(parent, role, color, justify, wrap)
    local fs = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    fs:SetJustifyH(justify or "LEFT")
    fs:SetWordWrap(wrap and true or false)
    local e = {fs = fs, role = role or "sub", color = color}
    texts[#texts + 1] = e
    StyleText(e)
    return fs
end

local function Tip(owner, fn)
    local tt = _G.GameTooltip
    if not tt then return end
    tt:SetOwner(owner, "ANCHOR_RIGHT")
    fn(tt)
    tt:Show()
end
local function HideTip() if _G.GameTooltip then _G.GameTooltip:Hide() end end

-- boutons facon RXP : couleurs du theme ; "primary" = rempli (couleur d'accent du theme),
-- sinon contour discret ; survol plus clair (comme les etapes de la fenetre de guide)
local BTN_BACKDROP = {bgFile = WHITE, edgeFile = WHITE, edgeSize = 1, insets = {left = 1, right = 1, top = 1, bottom = 1}}
local buttons = {}
local function PaintButton(b)
    if not b.SetBackdrop then return end
    pcall(function()
        if not b.hasBackdrop then b:SetBackdrop(BTN_BACKDROP); b.hasBackdrop = true end
        local acc = Accent()
        local ar = (tonumber(acc:sub(5, 6), 16) or 206) / 255
        local ag = (tonumber(acc:sub(7, 8), 16) or 123) / 255
        local ab = (tonumber(acc:sub(9, 10), 16) or 255) / 255
        local r, g, bl = ThemeColor("background")
        if b.primary then
            r, g, bl = Lighten(r, g, bl, 0.10)
            b:SetBackdropColor(r, g, bl, 1)
            b:SetBackdropBorderColor(ar, ag, ab, b.hover and 1 or 0.55)
            if b.text then
                if b.hover then b.text:SetTextColor(1, 0.9, 0.4) else b.text:SetTextColor(1, 0.82, 0) end
            end
        else
            b:SetBackdropColor(r, g, bl, b.hover and 0.9 or 0)
            b:SetBackdropBorderColor(ar, ag, ab, b.hover and 0.6 or 0.2)
            if b.text then
                if b.hover then b.text:SetTextColor(1, 1, 1) else b.text:SetTextColor(0.6, 0.6, 0.65) end
            end
        end
        if b.icon then
            local v = b.hover and 1 or 0.8
            b.icon:SetVertexColor(v, v, v)
        end
    end)
end
local function ButtonScripts(b)
    b:SetScript("OnEnter", function(self)
        self.hover = true
        PaintButton(self)
        if self.tipTitle then
            Tip(self, function(tt)
                tt:AddLine(self.tipTitle, 1, 1, 1)
                if self.tipText then tt:AddLine(self.tipText, 0.85, 0.85, 0.85, true) end
            end)
        end
    end)
    b:SetScript("OnLeave", function(self)
        self.hover = false
        PaintButton(self)
        HideTip()
    end)
    b:SetScript("OnMouseDown", function(self)
        local inner = self.text or self.icon
        if inner then inner:SetPoint("CENTER", 1, -1) end
    end)
    b:SetScript("OnMouseUp", function(self)
        local inner = self.text or self.icon
        if inner then inner:SetPoint("CENTER", 0, 0) end
    end)
end
local function NewButton(parent, w, h, label, primary, tipTitle, tipText)
    local b = CreateFrame("Button", nil, parent, BackdropTmpl)
    b:SetSize(w, h)
    b.primary = primary
    b.text = NewText(b, primary and "btn" or "sub", nil, "CENTER")
    b.text:SetPoint("CENTER", 0, 0)
    b.text:SetText(label)
    b.tipTitle, b.tipText = tipTitle, tipText
    ButtonScripts(b)
    buttons[#buttons + 1] = b
    PaintButton(b)
    return b
end
local function NewIconButton(parent, size, texture, tipTitle, tipText)
    local b = CreateFrame("Button", nil, parent, BackdropTmpl)
    b:SetSize(size, size)
    b.icon = b:CreateTexture(nil, "ARTWORK")
    b.icon:SetSize(size - 8, size - 8)
    b.icon:SetPoint("CENTER", 0, 0)
    b.icon:SetTexture(texture)
    b.tipTitle, b.tipText = tipTitle, tipText
    ButtonScripts(b)
    buttons[#buttons + 1] = b
    PaintButton(b)
    return b
end

-- bandeau : meme rendu que le bandeau du nom de guide (GuideName)
local function StyleBanner(f)
    ApplyBackdrop(f, "guideName", "background")
    local th = prereq.V2Theme()
    local ht = th and th.headerTexture
    local banner, coords
    if th then
        banner = type(ht) == "table" and ht.path or (type(ht) == "string" and ht or nil)
        coords = type(ht) == "table" and ht.texCoords or nil
    else
        banner = V1Tex("rxp-banner", true)
    end
    if banner then
        f.bg:SetTexture(banner)
        if coords then f.bg:SetTexCoord(unpack(coords)) else f.bg:SetTexCoord(0, 1, 0, 1) end
        f.bg:Show()
    else
        f.bg:Hide()
    end
end

-- "35-36 Desolace" -> "35-36" (sinon premier mot, court)
local function GuideShort(title)
    title = tostring(title or "?")
    local r = title:match("(%d+%s*%-%s*%d+)")
    if r then return (r:gsub("%s", "")) end
    local w = title:match("^(%S+)") or "?"
    if #w > 10 then w = w:sub(1, 10):gsub("[\192-\255][\128-\191]*$", "") end
    return w
end

-- badge "-> 35-36 +1" : guides suivants qui ont besoin de la quete
local function FutureBadge(list)
    if type(list) ~= "table" or #list == 0 then return nil end
    local guides, order = {}, {}
    for _, e in ipairs(list) do
        if not guides[e.guide] then guides[e.guide] = true; table.insert(order, e.guide) end
    end
    local s = GuideShort(order[1])
    if #order > 1 then s = s .. fmt(" +%d", #order - 1) end
    return s
end

-- nom du guide suivant sans sa tranche de niveaux (deja dans le badge), "+N" si plusieurs
local function FutureName(list)
    if type(list) ~= "table" or #list == 0 then return nil end
    local guides, order = {}, {}
    for _, e in ipairs(list) do
        if not guides[e.guide] then guides[e.guide] = true; table.insert(order, e.guide) end
    end
    local t = tostring(order[1] or "")
    local stripped = t:gsub("^%s*%d+%s*%-%s*%d+%s*", "")
    if stripped == "" then stripped = t end
    if #order > 1 then stripped = stripped .. fmt(" +%d", #order - 1) end
    return stripped
end

local function MemberIcon(parent)
    local m = CreateFrame("Frame", nil, parent)
    m:SetSize(MEMBER_S, MEMBER_S)
    m.bg = m:CreateTexture(nil, "BACKGROUND")
    m.bg:SetAllPoints()
    m.txt = NewText(m, "small", {1, 1, 1}, "CENTER")
    m.txt:SetPoint("CENTER", 0, 0)
    m:EnableMouse(true)
    m:SetScript("OnEnter", function(self)
        Tip(self, function(tt)
            tt:AddLine(self.tipName or "?", 1, 1, 1)
            tt:AddLine(self.tipText or "", 0.9, 0.9, 0.9)
        end)
    end)
    m:SetScript("OnLeave", HideTip)
    return m
end

local function RowTooltip(row)
    local id = row.questId
    if not id then return end
    Tip(row, function(tt)
        local lvl = QuestLevel(id)
        local r, g, b = LevelColor(lvl)
        tt:AddLine(fmt("[%s] %s", lvl or "?", QuestName(id)), r, g, b)
        if row.descFull then tt:AddLine(row.descFull, 0.85, 0.85, 0.85, true) end
        if row.kind == "target" then
            if row.chainCount and row.chainCount > 0 then
                tt:AddLine(L["Blocked: you are missing the quests listed above it."], 1, 0.82, 0, true)
            end
            if row.targetKind == "missing" then
                tt:AddLine(L["Your guide progresses this quest, but it is not in your quest log."], 1, 0.5, 0.25, true)
                -- ou la prendre
                local sq = GetQuest(id)
                local st0 = sq and sq.Starts or {}
                local who
                if type(st0.NPC) == "table" and st0.NPC[1] then
                    local n = GetNPC(st0.NPC[1]); who = n and n.name
                end
                if not who and type(st0.GameObject) == "table" and st0.GameObject[1] then
                    local o = GetObject(st0.GameObject[1]); who = o and o.name
                end
                if not who and type(st0.Item) == "table" and st0.Item[1] then
                    local it = GetItem(st0.Item[1]); who = it and it.name
                end
                if who then tt:AddLine(fmt(L["Quest giver: %s"], who), 1, 1, 1, true) end
            end
            tt:AddLine(fmt(L["Guide step %d"], row.stepNum or 0), 0.8, 0.8, 0.8)
        elseif row.dup then
            tt:AddLine(L["Already listed higher up in this chain."], 0.6, 0.6, 0.6, true)
        end
        local xp, est = QuestXP(id)
        tt:AddLine(FormatXP(xp, est) .. (est and ("  " .. L["(estimate)"]) or ""), 0.8, 0.8, 1)
        if row.kind == "target" and row.chainCount and row.chainCount > 0 then
            tt:AddLine(fmt(L["Chain: %d prerequisite(s), %s in total"], row.chainCount,
                           FormatXP(row.chainXP, row.chainEst)), 0.8, 0.8, 1)
        end
        local q = GetQuest(id)
        if q and q.requiredLevel and q.requiredLevel > (UnitLevel("player") or 1) then
            tt:AddLine(fmt(L["Required level: %d"], q.requiredLevel), 1, 0.3, 0.3)
        end
        if row.lockText then tt:AddLine(row.lockText, 0.75, 0.75, 0.75, true) end
        if row.chainFull then
            tt:AddLine(" ")
            tt:AddLine(row.chainLabel .. row.chainFull, MUTED[1], MUTED[2], MUTED[3], true)
        end
        local fl = row.future
        tt:AddLine(" ")
        if fl and #fl > 0 then
            tt:AddLine(L["Needed later (don't skip):"], USEFUL[1], USEFUL[2], USEFUL[3])
            for i, e in ipairs(fl) do
                if i > 8 then
                    tt:AddLine("   " .. fmt(L["... and %d more"], #fl - 8), 0.7, 0.7, 0.7)
                    break
                end
                local what = e.self and L["continued"] or L["accepted"]
                local qn = (e.quest == id) and L["this quest"] or QuestName(e.quest)
                tt:AddLine("   " .. fmt(L["%s: %s (%s, step %d)"], e.guide, qn, what, e.step), 0.8, 0.9, 0.8, true)
            end
        else
            tt:AddLine(L["Not used by the next guides."], 0.55, 0.55, 0.55)
        end
        local st = StateOf(id)
        tt:AddLine(" ")
        tt:AddLine(L["Me"] .. ": " .. (STATE_TEXT[st] or "?"), 1, 1, 1)
        for _, name in ipairs(GroupMembers()) do
            local ms = memberStates[MKey(name)]
            local s2 = ms and ms[id]
            tt:AddLine(fmt("%s: %s", name, s2 and STATE_TEXT[s2] or L["unknown"]), 0.8, 0.8, 0.8)
        end
        tt:AddLine(fmt("ID %d", id), 0.5, 0.5, 0.5)
    end)
end

-- aide (bouton "?") : legende des icones et des badges
local function HelpTooltip(owner)
    Tip(owner, function(tt)
        local function T(path, extra) return fmt("|T%s:18:18%s|t", path, extra or "") end
        tt:AddLine(L["How to read this window"], 1, 0.82, 0)
        tt:AddLine(L["Each card is a quest from your guide that you cannot accept yet."], 1, 1, 1, true)
        tt:AddLine(L["Rows are numbered in the order to do them; the locked quest comes last."], 1, 1, 1, true)
        tt:AddLine(" ")
        tt:AddLine(T(ICON_LOCK, ":0:0:64:64:4:60:3:60") .. "  " .. L["blocked quest"], 0.9, 0.9, 0.9)
        tt:AddLine(T(ICON_NOT) .. "  " .. L["not in log (your guide progresses it, but you don't have it)"], 0.9, 0.9, 0.9, true)
        tt:AddLine(T(ICON_AVAIL) .. "  " .. L["to accept"], 0.9, 0.9, 0.9)
        tt:AddLine(T(ICON_INCOMP) .. "  " .. L["in progress"], 0.9, 0.9, 0.9)
        tt:AddLine(T(ICON_ACTIVE) .. "  " .. L["ready to turn in"], 0.9, 0.9, 0.9)
        tt:AddLine(T(ICON_DONE) .. "  " .. L["done"], 0.9, 0.9, 0.9)
        tt:AddLine(" ")
        tt:AddLine(L["35-36: needed by the next guide (35-36), don't skip it"], USEFUL[1], USEFUL[2], USEFUL[3], true)
        tt:AddLine(L["[37]: quest level (colour = difficulty)"], 0.9, 0.9, 0.9, true)
        tt:AddLine(L["~ before the XP: estimate"], 0.9, 0.9, 0.9)
        tt:AddLine(L["Squares on the right: quest state for each group member"], 0.9, 0.9, 0.9, true)
        tt:AddLine(" ")
        tt:AddLine(L["Guide me: creates a guide for the whole chain, then takes you back to your guide."], 0.8, 0.8, 0.8, true)
        tt:AddLine(L["Ignore: stop showing it (/prereq reset to undo)."], 0.8, 0.8, 0.8, true)
        tt:AddLine(L["Hover a row for full details."], 0.6, 0.6, 0.6, true)
        tt:AddLine(L["/prereq resetsize: default window size"], 0.6, 0.6, 0.6, true)
    end)
end

-- ligne "que faire" (grise, 12 px) sous le nom ; numero, icone, nom et XP remontent d'un cran
-- (retour a la ligne, 3 lignes max ; la ligne s'agrandit et la fonction renvoie le supplement
-- de hauteur pour decaler les lignes suivantes)
function prereq.SetRowDesc(row, width, short, full, pieces)
    if not row.desc then
        row.desc = NewText(row, "sub", MUTED, "LEFT", true)
        row.desc:SetJustifyV("TOP")
        if row.desc.SetMaxLines then pcall(row.desc.SetMaxLines, row.desc, 3) end
        row.desc:SetPoint("TOPLEFT", row.name, "BOTTOMLEFT", 0, -3)
    end
    local has = type(short) == "string" and short ~= ""
    local extra = 0
    if has then
        local w = max(60, width or 300)
        if type(pieces) == "table" and #pieces > 0 then
            local lines, cur = {}, ""
            row.desc:SetWidth(0)
            for _, p in ipairs(pieces) do
                local cand = (cur == "") and p.text or (cur .. p.sep .. p.text)
                row.desc:SetText(cand)
                if cur ~= "" and (row.desc:GetStringWidth() or 0) > w - 6 and #lines < 2 then
                    lines[#lines + 1] = cur .. ((p.sep == ", ") and "," or "")
                    cur = p.text
                else
                    cur = cand
                end
            end
            if cur ~= "" then lines[#lines + 1] = cur end
            short = table.concat(lines, "\n")
        end
        row.desc:SetWidth(w)
        row.desc:SetText("Ag")
        local lineH = row.desc:GetStringHeight() or 12
        row.desc:SetText(short)
        extra = max(0, floor((row.desc:GetStringHeight() or lineH) - lineH + 0.5))
        row.desc:Show()
    else
        row.desc:Hide()
    end
    row:SetHeight((row.baseH or row:GetHeight()) + extra)
    local dy = has and (7 + extra / 2) or 0
    for _, r in ipairs({row.num, row.icon, row.name, row.xp}) do
        local p, rel, rp, x = r:GetPoint(1)
        if p then r:ClearAllPoints(); r:SetPoint(p, rel, rp, x, dy) end
    end
    row.descFull = has and full or nil
    row.descExtra = extra
    return extra
end

-- ligne de description d'une quete + sa distance (mise a jour en direct pour la 1re de la carte)
function prereq.SetRowDescQ(row, width, qid, ef)
    local short, full, dpieces = prereq.QuestDesc(qid)
    local pieces = {}
    for _, p in ipairs(dpieces or {}) do pieces[#pieces + 1] = p end
    row.effQ, row.effEf, row.effW = qid, ef, width
    return prereq.SetRowDesc(row, width, short, full, pieces)
end

-- bouton facon RXP V2 (GuideImporter.lua importButton) : icone RXP + libelle, surbrillance
-- configurator-option-hover, fond/bord du theme (prereq.SkinAllButton), re-habille au changement de theme
function prereq.NewV2Button(parent, w, h, icon, label)
    local b = CreateFrame("Button", nil, parent)
    b:SetSize(w, h)
    b.icon = b:CreateTexture(nil, "ARTWORK")
    b.icon:SetSize(h - 8, h - 8)
    b.icon:SetPoint("LEFT", b, "LEFT", 6, 0)
    b.icon:SetTexture(icon)
    b.text = NewText(b, "sub", nil, "LEFT")
    b.text:SetPoint("LEFT", b.icon, "RIGHT", 4, 0)
    b.text:SetText(label)
    b:SetHighlightTexture(TEX .. "v2/configurator-option-hover", "ADD")
    local hl = b:GetHighlightTexture()
    if hl then
        hl:ClearAllPoints()
        hl:SetPoint("TOPLEFT", b, "TOPLEFT", 2, -2)
        hl:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -2, 2)
    end
    prereq.v2Buttons = prereq.v2Buttons or {}
    table.insert(prereq.v2Buttons, b)
    pcall(prereq.SkinAllButton, b)
    return b
end

-- colonnes alignees a droite (distances depuis le bord droit d'une ligne) : boutons | groupe | XP.
-- A gauche, colonnes fixes identiques dans toutes les cartes : numero (0-18), icone (22), nom (42).
local function Columns(nMembers)
    local c = {}
    c.btnW = GUIDE_W + 6 + IGNORE_W
    c.membersW = nMembers > 0 and (nMembers * (MEMBER_S + 3) + 8) or 0
    c.membersR = c.btnW + 6
    c.xpR = c.btnW + 12 + c.membersW
    return c
end

local function CreateRow()
    local row = CreateFrame("Button", nil, content)
    row:SetFrameLevel(content:GetFrameLevel() + 5)
    row.hl = row:CreateTexture(nil, "HIGHLIGHT")
    row.hl:SetAllPoints()
    row.hl:SetColorTexture(1, 1, 1, 0.05)
    row.num = NewText(row, "sub", MUTED, "RIGHT")
    row.num:SetWidth(18)
    row.num:SetPoint("LEFT", row, "LEFT", 0, 0)
    row.icon = row:CreateTexture(nil, "ARTWORK")
    row.icon:SetSize(14, 14)
    row.icon:SetPoint("LEFT", row, "LEFT", 22, 0)
    row.name = NewText(row, "name", nil, "LEFT")
    row.name:SetPoint("LEFT", row, "LEFT", 42, 0)
    row.level = NewText(row, "sub", nil, "LEFT")
    row.level:SetPoint("LEFT", row.name, "RIGHT", 6, 0)
    row.note = NewText(row, "sub", nil, "LEFT")
    row.note:SetPoint("LEFT", row.level, "RIGHT", 8, 0)
    row.xp = NewText(row, "sub", MUTED, "RIGHT")
    row.xp:SetWidth(XP_W)
    row.nextText = NewText(row, "sub", USEFUL_NAME, "RIGHT")
    row.nextText:SetPoint("RIGHT", row.xp, "LEFT", -12, 0)
    row.members = {}
    for i = 1, MAX_MEMBERS do row.members[i] = MemberIcon(row) end
    -- "x" : meme bouton de fermeture RXP que la barre de titre (rxp-btn-close), en petit
    row.ignore = CreateFrame("Button", nil, row)
    row.ignore:SetSize(IGNORE_W, IGNORE_W)
    row.ignore:SetNormalTexture(ICON_CLOSE)
    row.ignore:SetPushedTexture(ICON_CLOSE)
    row.ignore:SetHighlightTexture(ICON_CLOSE, "ADD")
    row.ignore:SetPoint("RIGHT", row, "RIGHT", 0, 0)
    row.ignore:SetScript("OnEnter", function(self)
        Tip(self, function(tt)
            tt:AddLine(L["Ignore this quest"], 1, 1, 1)
            tt:AddLine(L["It won't be shown again. /prereq reset to undo."], 0.85, 0.85, 0.85, true)
        end)
    end)
    row.ignore:SetScript("OnLeave", HideTip)
    row.guide = prereq.NewV2Button(row, GUIDE_W, BTN_H, TEX .. "v2/rxp_navigation_arrow-1", L["Guide me"])
    row.guide:SetPoint("RIGHT", row.ignore, "LEFT", -6, 0)
    row.guide:SetScript("OnEnter", function(self)
        Tip(self, function(tt)
            tt:AddLine(L["Guide me"], 1, 1, 1)
            tt:AddLine(L["Creates an RXP guide for the missing quests in order, then takes you back to your guide."], 0.85, 0.85, 0.85, true)
        end)
    end)
    row.guide:SetScript("OnLeave", HideTip)
    row.guide:SetScript("OnClick", function(self)
        local id = self:GetParent().questId
        if id then
            prereq.guideStarted = false
            prereq:Guide(id)
            if prereq.guideStarted and frame then frame:Hide() end
        end
    end)
    row.ignore:SetScript("OnClick", function(self)
        local id = self:GetParent().questId
        if id then
            DB().ignored[id] = true
            Print("\"%s\" ignored (/prereq reset to undo).", QuestName(id))
            prereq.dirty = true
            prereq:Refresh(true)
            pcall(prereq.ApplyGuideSkips)
        end
    end)
    row:SetScript("OnEnter", RowTooltip)
    row:SetScript("OnLeave", HideTip)
    return row
end

local function GetRow(i, h)
    local row = rows[i]
    if not row then row = CreateRow(); rows[i] = row end
    row:ClearAllPoints()
    row:SetHeight(h)
    row.baseH = h
    row:Show()
    row.icon:Show()
    row.name:ClearAllPoints()
    row.name:SetPoint("LEFT", row, "LEFT", 42, 0)
    if row.sep then row.sep:Hide() end
    row.icon:SetTexCoord(0, 1, 0, 1)
    row.icon:SetDesaturated(false)
    row.icon:SetVertexColor(1, 1, 1)
    row.num:SetText("")
    row.note:SetText("")
    row.note:Hide()
    row.nextText:Hide()
    row.guide:Hide(); row.ignore:Hide()
    for _, m in ipairs(row.members) do m:Hide() end
    row.questId, row.kind, row.targetKind, row.dup, row.keepKind, row.stepNum = nil, nil, nil, nil, nil, nil
    row.chainFull, row.chainLabel, row.future, row.chainCount, row.lockText = nil, nil, nil, nil, nil
    row.effQ, row.effEf, row.moveEf, row.moveFS = nil, nil, nil, nil
    if row.moveText then row.moveText:Hide() end
    return row
end

local function CreateHead()
    local h = CreateFrame("Button", nil, content, BackdropTmpl)
    h:SetHeight(HEAD_H)
    h.bg = h:CreateTexture(nil, "BACKGROUND")
    h.bg:SetPoint("TOPLEFT", 4, -2)
    h.bg:SetPoint("BOTTOMRIGHT", -2, 4)
    h.toggle = h:CreateTexture(nil, "ARTWORK")
    h.toggle:SetSize(18, 18)
    h.toggle:SetPoint("RIGHT", -12, 1)
    h.count = NewText(h, "sub", MUTED, "RIGHT")
    h.title = NewText(h, "head", nil, "LEFT")
    h.title:SetPoint("LEFT", 12, 1)
    h.title:SetPoint("RIGHT", h.count, "LEFT", -12, 0)
    h:SetScript("OnClick", function(self) if self.onClick then self.onClick() end end)
    StyleBanner(h)
    return h
end

local function GetHead(i)
    local h = heads[i]
    if not h then h = CreateHead(); heads[i] = h end
    h:ClearAllPoints()
    h:Show()
    h.onClick = nil
    h.toggle:Hide()
    h:EnableMouse(false)
    return h
end

local function SetMembers(row, id, members, c)
    local n = min(#members, MAX_MEMBERS)
    for i = 1, MAX_MEMBERS do
        local m = row.members[i]
        if i <= n then
            local name = members[i]
            local ms = memberStates[MKey(name)]
            local st = ms and ms[id]
            local col = st and STATE_COLOR[st] or {0.3, 0.3, 0.3}
            m.bg:SetColorTexture(col[1], col[2], col[3], 0.9)
            m.txt:SetText(Initial(name))
            m.tipName = name
            m.tipText = st and STATE_TEXT[st] or L["unknown (no reply)"]
            m:ClearAllPoints()
            m:SetPoint("RIGHT", row, "RIGHT", -(c.membersR + 4 + (n - i) * (MEMBER_S + 3)), 0)
            m:Show()
        else
            m:Hide()
        end
    end
end

-- texte commun d'une ligne : nom (couleur donnee) | niveau (couleur de difficulte, sans crochets) | XP
local function LayoutQuest(row, c, id, nameColor, font)
    row.questId = id
    pcall(row.name.SetFont, row.name, FontPath(), FontSize(font or "name"), "")
    row.name:SetText((nameColor or "|cffffffff") .. QuestName(id) .. "|r")
    local lvl = QuestLevel(id)
    local r, g, b = LevelColor(lvl)
    row.level:SetText(lvl and fmt("|c%s%d|r", Hex(r, g, b), lvl) or "")
    row.xp:ClearAllPoints()
    row.xp:SetPoint("RIGHT", row, "RIGHT", -c.xpR, 0)
    local xp, est = QuestXP(id)
    row.xp:SetText(FormatXP(xp, est))
end

-- en-tete de carte : "Demande par ton guide - ..." + quete (or) + niveau | etape N | XP totale |
-- initiales du groupe | Me guider | x ; fin trait de separation dessous
function prereq.CardHeader(row, c, t, missing, xpTotal, est, members, rowW, ar, ag, ab, ef)
    row.kind, row.targetKind, row.stepNum, row.questId = "target", t.kind, t.step, t.id
    row.icon:Hide()
    row.num:SetText("")
    row.name:ClearAllPoints()
    row.name:SetPoint("LEFT", row, "LEFT", 0, 0)
    pcall(row.name.SetFont, row.name, FontPath(), FontSize("btn"), "")
    local label = missing and L["Asked to do in your guide - not in your quest log:"]
                  or L["Asked to do in your guide - missing prerequisites:"]
    row.name:SetText("|cff8a8a8a" .. label .. "|r  |cffffd100" .. QuestName(t.id) .. "|r")
    local lvl = QuestLevel(t.id)
    local r, g, b = LevelColor(lvl)
    row.level:SetText(lvl and fmt("|c%s%d|r", Hex(r, g, b), lvl) or "")
    row.xp:ClearAllPoints()
    row.xp:SetPoint("RIGHT", row, "RIGHT", -c.xpR, 0)
    row.xp:SetText(FormatXP(xpTotal, est))
    row.nextText:SetWidth(0)
    row.nextText:SetText("|cff8a8a8a" .. fmt(L["step %d"], t.step or 0) .. "|r")
    local w = min(120, (row.nextText:GetStringWidth() or 0) + 2)
    row.nextText:SetWidth(w)
    row.nextText:Show()
    if not row.moveText then row.moveText = NewText(row, "sub", nil, "RIGHT") end
    row.moveText:Hide()
    row.moveEf, row.moveFS = ef, nil
    local mv = prereq.CardMove(ef)
    local mw = 0
    if mv ~= "" then
        row.moveText:SetWidth(0)
        row.moveText:SetText(mv)
        mw = (row.moveText:GetStringWidth() or 0) + 2
    end
    row.name:SetWidth(0)
    local nw = row.name:GetStringWidth() or 0
    local lw = 6 + (row.level:GetStringWidth() or 0) + 12
    local avail = rowW - (c.xpR + XP_W) - w - 12 - lw - (mw > 0 and (mw + 12) or 0)
    local below
    if mw > 0 and nw > avail then
        -- pas la place sur la ligne : le deplacement passe sous la carte
        below, mw = mv, 0
        avail = rowW - (c.xpR + XP_W) - w - 12 - lw
    end
    if nw > avail then
        -- etroit : libelle court
        label = missing and L["Not in your log:"] or L["Missing prereqs:"]
        row.name:SetText("|cff8a8a8a" .. label .. "|r  |cffffd100" .. QuestName(t.id) .. "|r")
        nw = row.name:GetStringWidth() or 0
    end
    if nw > avail and avail < 160 then
        -- encore etroit : on masque "etape N"
        row.nextText:Hide()
        avail = rowW - (c.xpR + XP_W) - lw - (mw > 0 and (mw + 12) or 0)
    end
    row.name:SetWidth(max(40, min(nw + 2, avail)))
    if mw > 0 then
        row.moveText:SetWidth(mw)
        row.moveText:ClearAllPoints()
        row.moveText:SetPoint("RIGHT", row.nextText:IsShown() and row.nextText or row.xp, "LEFT", -12, 0)
        row.moveText:Show()
        row.moveFS = row.moveText
    end
    SetMembers(row, t.id, members, c)
    row.guide:Show(); row.ignore:Show()
    if not row.sep then
        row.sep = row:CreateTexture(nil, "ARTWORK")
        row.sep:SetHeight(1)
        row.sep:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 0, 0)
        row.sep:SetPoint("BOTTOMRIGHT", row, "BOTTOMRIGHT", 0, 0)
    end
    row.sep:SetColorTexture(ar, ag, ab, 0.25)
    row.sep:Show()
    return below
end

-- bouton "Tout faire" : fond / bord du theme V2 de RXP (theme actif, sinon RXP Blue V2), police,
-- couleur de texte ; grise quand il n'y a rien a faire
function prereq.SkinAllButton(b)
    local th = prereq.V2Theme() or (addon.v2 and addon.v2.themes and addon.v2.themes["RXP Blue V2"])
    local ui = addon.ui and addon.ui.v2
    if th and ui and type(ui.ApplyFrameBackdrop) == "function" and type(th.edge) == "table" then
        ui:ApplyFrameBackdrop(b, th.edge, th.backgroundColors.inactivePartyTab or th.backgroundColors.common,
                              th.borderColors.commonEdge or th.borderColors.common)
        if ui.SetFrameBackdropShown then ui:SetFrameBackdropShown(b, true) end
    end
    local tc = th and type(th.textColor) == "table" and th.textColor.common
    if type(tc) == "table" and tonumber(tc[1]) then b.text:SetTextColor(tc[1], tc[2], tc[3]) end
    if th and type(th.font) == "string" then pcall(b.text.SetFont, b.text, th.font, FontSize("sub"), "") end
    if b.autoWidth then b:SetWidth(7 + 18 + 5 + (b.text:GetStringWidth() or 40) + 10) end
end

-- Bouton sur le bandeau du nom de guide RXP (addon.RXPFrame.GuideName), coin haut droit :
-- ouvre / ferme la fenetre. Enfant du bandeau : suit l'affichage, le deplacement et l'echelle
-- de la fenetre RXP (cache avec lui). Icone RXP V2 teintee par le theme, surbrillance ADD comme
-- les boutons d'icone de RXP, pastille du nombre de quetes bloquees (couleur d'accent).
function prereq.CreateBannerButton()
    if prereq.bannerBtn then return prereq.bannerBtn end
    local rf = addon.RXPFrame
    local gn = rf and rf.GuideName
    if not gn then return nil end
    local b = CreateFrame("Button", nil, gn)
    b:SetSize(20, 20)
    b:SetPoint("TOPRIGHT", gn, "TOPRIGHT", -6, -6)
    b:SetFrameLevel(gn:GetFrameLevel() + 3)
    local icon = TEX .. "v2/rxp-icon-quest_stack"
    b:SetNormalTexture(icon)
    b:SetHighlightTexture(icon, "ADD")
    b.badge = CreateFrame("Frame", nil, b)
    b.badge:SetSize(13, 13)
    b.badge:SetPoint("CENTER", b, "BOTTOMRIGHT", -1, 2)
    b.badge:SetFrameLevel(b:GetFrameLevel() + 2)
    b.badge.bg = b.badge:CreateTexture(nil, "ARTWORK")
    b.badge.bg:SetAllPoints()
    b.badge.bg:SetTexture(TEX .. "white_circle")
    b.badge.text = b.badge:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    b.badge.text:SetPoint("CENTER", 0, 0)
    pcall(b.badge.text.SetFont, b.badge.text, FontPath(), 9, "")
    b:SetScript("OnClick", function() prereq:Toggle() end)
    b:SetScript("OnEnter", function(self)
        Tip(self, function(tt)
            tt:AddLine(L["Quest Prerequisites"], 1, 1, 1)
            local n = #prereq.BlockedList()
            if n > 0 then
                tt:AddLine(fmt(n > 1 and L["%d blocked quests"] or L["%d blocked quest"], n), 1, 0.82, 0)
            else
                tt:AddLine(L["Nothing blocked."], 0.6, 0.6, 0.6)
            end
        end)
    end)
    b:SetScript("OnLeave", HideTip)
    prereq.bannerBtn = b
    for _, fn in ipairs({"RenderFrame", "ReloadTheme"}) do
        if type(addon[fn]) == "function" then
            pcall(hooksecurefunc, addon, fn, function() pcall(prereq.UpdateBannerButton) end)
        end
    end
    prereq.UpdateBannerButton()
    return b
end

function prereq.UpdateBannerButton()
    local b = prereq.bannerBtn
    if not b then return end
    local tex = b:GetNormalTexture()
    if tex then tex:SetVertexColor(ThemeColor("textColor")) end
    local acc = Accent()
    local ar = (tonumber(acc:sub(5, 6), 16) or 206) / 255
    local ag = (tonumber(acc:sub(7, 8), 16) or 123) / 255
    local ab = (tonumber(acc:sub(9, 10), 16) or 255) / 255
    b.badge.bg:SetVertexColor(ar, ag, ab)
    local d = prereq.data
    local sec = d and d.sections and d.sections[1]
    local n = sec and #sec.targets or 0
    if n > 0 then
        b.badge.text:SetText(n > 9 and "9+" or tostring(n))
        b.badge:Show()
    else
        b.badge:Hide()
    end
end

function prereq.SetAllEnabled(on)
    local b = prereq.allBtn
    if not b then return end
    b:SetEnabled(on and true or false)
    b:SetAlpha(on and 1 or 0.45)
    b.icon:SetDesaturated(not on)
end

-- cartes affichees (meme liste que la fenetre), sinon les donnees calculees
function prereq.BlockedList()
    if type(prereq.visibleTargets) == "table" and #prereq.visibleTargets > 0 then return prereq.visibleTargets end
    local d = prereq.data
    local sec = d and d.sections and d.sections[1]
    return sec and sec.targets or {}
end

-- infobulle du bouton "Faire tous les prerequis" : chaines, distance/temps (somme des cartes), XP
function prereq.AllSummary(tt)
    tt:AddLine(L["Do all prerequisites"], 1, 1, 1)
    local list = prereq.BlockedList()
    if #list == 0 then
        tt:AddLine(L["Nothing blocked."], 0.6, 0.6, 0.6)
        return
    end
    tt:AddLine(L["One guide for every blocked chain of this guide, in the shortest order, then back to your guide."], 0.85, 0.85, 0.85, true)
    local yards, secs, xp = 0, 0, 0
    local cache = prereq.effortCache
    if not cache then cache = {}; prereq.effortCache = cache end
    local budget = 6
    for _, t in ipairs(list) do
        local e = cache[t.id]
        if not e and budget > 0 then
            -- pas encore calcule (carte hors ecran) : on le calcule maintenant (limite)
            budget = budget - 1
            local ok, res = pcall(prereq.Effort, t.id, t.kind)
            if ok and type(res) == "table" then e = res; cache[t.id] = res end
        end
        if e then
            local _, _, sc, yd = prereq.EffortLine(e)
            secs, yards = secs + (sc or 0), yards + (yd or 0)
        end
        xp = xp + (QuestXP(t.id) or 0)
        for _, nd in ipairs(t.tree or {}) do
            if not nd.dup then xp = xp + (QuestXP(nd.id) or 0) end
        end
    end
    local y = floor(yards + 0.5)
    local ys = y >= 1000 and fmt("%d %03d", floor(y / 1000), y % 1000) or tostring(y)
    tt:AddLine(fmt(L["%d chain(s)"], #list) .. "  -  " .. fmt(L["%s yd"], ys), 0.5, 0.78, 1)
    tt:AddLine(fmt(L["Total XP: %s"], FormatXP(xp)), 0.7, 0.7, 1)
end

-- hauteur de la fenetre ajustee au contenu (entre 220 px et 70 % de l'ecran), sauf si le joueur
-- l'a redimensionnee a la main (/prereq resetsize pour revenir a l'auto)
function prereq.AutoFit(contentH, empty)
    if not (frame and scroll) then return end
    if empty then
        if math.abs(frame:GetHeight() - MIN_H) > 2 then frame:SetHeight(MIN_H) end
        prereq.emptyShrunk = true
        return
    end
    if DB().userSized then
        local sz = DB().size
        if prereq.emptyShrunk and type(sz) == "table" and tonumber(sz[2]) then frame:SetHeight(max(MIN_H, sz[2])) end
        prereq.emptyShrunk = false
        return
    end
    prereq.emptyShrunk = false
    local chrome = frame:GetHeight() - (scroll:GetHeight() or 0)
    local maxH = floor((UIParent:GetHeight() or 800) * 0.7)
    local want = max(MIN_H, min(maxH, (tonumber(contentH) or 0) + chrome + 4))
    if math.abs(frame:GetHeight() - want) > 2 then frame:SetHeight(want) end
end

function prereq.ResetSize()
    local db = DB()
    db.userSized, db.size = nil, nil
    if frame then
        frame:SetWidth(W0)
        RenderSoon()
    end
end

local function UpdateGroupText(members)
    if not groupText then return end
    local lvl = "|cffffffff" .. fmt(L["Level %d"], UnitLevel("player") or 1) .. "|r"
    if HasGroup() and #members > 0 then
        local parts = {}
        for i, name in ipairs(members) do
            if i > MAX_MEMBERS then break end
            table.insert(parts, fmt("|cffffffff%s|r", name))
        end
        groupText:SetText(fmt("%s     |cff999999%s|r %s", lvl, L["Group:"], table.concat(parts, ", ")))
    else
        groupText:SetText(fmt("%s     |cff999999%s|r", lvl, L["solo (no group status)"]))
    end
end

local function Render()
    if not frame or not frame:IsShown() then return end
    local data = currentData or {sections = {}, ids = {}}
    local future = data.future or {}
    local members = GroupMembers()
    local nM = min(#members, MAX_MEMBERS)
    local c = Columns(nM)
    local y, nr, nh, nc = 0, 0, 0, 0
    local myState = {}
    local function St(id)
        local s = myState[id]
        if not s then s = StateOf(id); myState[id] = s end
        return s
    end

    local sw = scroll:GetWidth()
    if sw and sw > 50 then content:SetWidth(sw) end
    local rowW = (content:GetWidth() or 600) - 16
    UpdateGroupText(members)

    -- couleur d'accent du theme ("|cAARRGGBB")
    local acc = Accent()
    local ar = (tonumber(acc:sub(5, 6), 16) or 206) / 255
    local ag = (tonumber(acc:sub(7, 8), 16) or 123) / 255
    local ab = (tonumber(acc:sub(9, 10), 16) or 255) / 255

    local function Head(title, count)
        nh = nh + 1
        local h = GetHead(nh)
        h:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -y)
        h:SetPoint("RIGHT", content, "RIGHT", 0, 0)
        h.title:SetText(title)
        h.count:ClearAllPoints()
        h.count:SetPoint("RIGHT", h, "RIGHT", -12, 1)
        h.count:SetText(count or "")
        y = y + HEAD_H + 6
        return h
    end
    -- fond de carte : bottomFrameBG un peu plus clair, liseré 1 px de la couleur d'accent
    local function Card(top, height, ef, effTop, totalXP)
        nc = nc + 1
        local pool = prereq.cardPool
        if not pool then pool = {}; prereq.cardPool = pool end
        local f = pool[nc]
        if not f then
            f = CreateFrame("Frame", nil, content, BackdropTmpl)
            f:SetFrameLevel(content:GetFrameLevel() + 1)
            f.effort = NewText(f, "sub", MUTED, "LEFT", true)
            if f.effort.SetMaxLines then pcall(f.effort.SetMaxLines, f.effort, 2) end
            f:EnableMouse(true)
            f:SetScript("OnEnter", function(self)
                if not self.ef then return end
                local _, efull, esecs = prereq.EffortLine(self.ef)
                Tip(self, function(tt)
                    for i, l in ipairs(efull) do
                        tt:AddLine(l, i == 1 and 1 or 0.85, i == 1 and 1 or 0.85, i == 1 and 1 or 0.85, true)
                    end
                    local mins = (esecs or 0) / 60
                    if self.totalXP and self.totalXP > 0 and mins > 0 then
                        tt:AddLine(fmt(L["XP per minute: %s"], floor(self.totalXP / max(1, mins) + 0.5)), 0.7, 0.7, 1)
                    end
                end)
            end)
            f:SetScript("OnLeave", HideTip)
            pool[nc] = f
        end
        f.ef, f.totalXP = nil, nil
        f.effort:ClearAllPoints()
        f.effort:SetPoint("TOPLEFT", f, "TOPLEFT", 8 + 42, -(effTop or 0))
        f.effort:SetWidth(max(60, rowW - 42))
        f.effort:SetText("")
        f.effort:Hide()
        f:ClearAllPoints()
        f:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -top)
        f:SetPoint("RIGHT", content, "RIGHT", 0, 0)
        f:SetHeight(height)
        ApplyBackdrop(f, "card", "bottomFrameBG")
        f:Show()
        return f
    end
    local function Row(height)
        nr = nr + 1
        local row = GetRow(nr, height)
        row:SetPoint("TOPLEFT", content, "TOPLEFT", 8, -y)
        row:SetPoint("RIGHT", content, "RIGHT", -8, 0)
        y = y + height
        return row
    end
    local function Lock(tex)
        tex:SetTexture(ICON_LOCK)
        tex:SetTexCoord(0.0703125, 0.9453125, 0.0546875, 0.9453125)
        tex:SetDesaturated(true)
    end
    -- largeur du nom : on le tronque pour que niveau et mention restent visibles
    local function Fit(r, rightUsed)
        r.name:SetWidth(0)
        local nw = r.name:GetStringWidth() or 0
        local extra = 6 + (r.level:GetStringWidth() or 0)
        if r.note:IsShown() then extra = extra + 8 + (r.note:GetStringWidth() or 0) end
        r.name:SetWidth(max(40, min(nw + 2, rowW - 42 - rightUsed - extra - 12)))
    end

    -- effort par carte : en cache ; au plus 3 calculs par rendu (le reste au rendu suivant)
    local effCache = prereq.effortCache
    if not effCache then effCache = {}; prereq.effortCache = effCache end
    local effBudget, effPending = 3, false
    local function EffortFor(t)
        local e = effCache[t.id]
        if e then return e end
        if effBudget <= 0 then effPending = true; return nil end
        effBudget = effBudget - 1
        local ok, res = pcall(prereq.Effort, t.id, t.kind)
        e = (ok and type(res) == "table") and res or {line = "", full = {}}
        effCache[t.id] = e
        return e
    end

    local total = 0
    local cur = data.sections and data.sections[1]
    local hasGuide = addon.currentGuide and not addon.currentGuide.empty
    if data.questie and hasGuide and cur then
        local n = #cur.targets
        Head(L["Current guide"] .. "   " .. cur.title,
             n > 0 and fmt(n > 1 and L["%d blocked quests"] or L["%d blocked quest"], n) or L["nothing blocked"])
        for _, t in ipairs(cur.targets) do
            total = total + 1
            -- ordre de la chaine : du premier prerequis a faire jusqu'a la quete bloquee (en dernier)
            local kids, parentOf = {}, {}
            for _, nd in ipairs(t.tree) do
                if not nd.dup then
                    parentOf[nd.id] = nd.parent
                    kids[nd.parent] = kids[nd.parent] or {}
                    table.insert(kids[nd.parent], nd.id)
                end
            end
            local order, seen = {}, {}
            local function Post(id, depth)
                if depth > MAX_DEPTH + 1 then return end
                for _, k in ipairs(kids[id] or {}) do
                    if not seen[k] then
                        seen[k] = true
                        Post(k, depth + 1)
                        table.insert(order, k)
                    end
                end
            end
            Post(t.id, 0)
            -- "verrouillee - il faut ..." (infobulle seulement)
            local function Needs(id)
                local k = kids[id]
                if not k or #k == 0 then return nil end
                local full = {}
                for _, q in ipairs(k) do table.insert(full, QuestName(q)) end
                return fmt(L["locked - needs %s"], table.concat(full, ", "))
            end
            local fut, futSeen = {}, {}
            local function AddFuture(id)
                for _, e in ipairs(future[id] or {}) do
                    local k = tostring(e.guide) .. ":" .. tostring(e.quest)
                    if not futSeen[k] then futSeen[k] = true; table.insert(fut, e) end
                end
            end
            local ef = EffortFor(t)
            local top = y
            y = y + 4
            local hdr = Row(30)
            y = y + 4
            local chainXP, anyEst, names = 0, false, {}
            for i, qid in ipairs(order) do
                local r2 = Row(PRE_H)
                r2.kind = "pre"
                r2.num:SetText(i .. ".")
                local st = St(qid)
                local col
                if st == "t" then
                    r2.icon:SetTexture(ICON_DONE)
                    col = "|cff808080"
                elseif st == "n" and kids[qid] then
                    Lock(r2.icon)
                    col = "|cff999999"
                    r2.lockText = Needs(qid)
                else
                    r2.icon:SetTexture(MY_ICON[st] or ICON_AVAIL)
                    col = "|cffffffff"
                end
                LayoutQuest(r2, c, qid, col, "name")
                r2.future = future[qid]
                Fit(r2, c.xpR + XP_W)
                y = y + (prereq.SetRowDescQ(r2, rowW - 42 - 4, qid, ef) or 0)
                local path, p, guard = {}, parentOf[qid], 0
                while p and p ~= t.id and guard < MAX_DEPTH + 2 do
                    table.insert(path, QuestName(p))
                    p = parentOf[p]
                    guard = guard + 1
                end
                table.insert(path, QuestName(t.id))
                r2.chainFull = table.concat(path, SEP)
                r2.chainLabel = L["Unlocks: "]
                table.insert(names, QuestName(qid))
                local xp, est = QuestXP(qid)
                chainXP = chainXP + (xp or 0)
                anyEst = anyEst or est
                AddFuture(qid)
            end
            -- quete bloquee : derniere ligne de la carte
            local row = Row(TARGET_H)
            row.kind, row.targetKind, row.stepNum = "target", t.kind, t.step
            AddFuture(t.id)
            if #order == 0 and t.kind == "missing" then
                row.icon:SetTexture(ICON_NOT)
                LayoutQuest(row, c, t.id, "|cffffffff", "big")
                row.note:SetText("|cffc06050" .. L["not in your log"] .. "|r")
                row.note:Show()
            else
                row.num:SetText((#order + 1) .. ".")
                Lock(row.icon)
                LayoutQuest(row, c, t.id, "|cffffd100", "big")
                row.lockText = Needs(t.id)
            end
            local xp, est = QuestXP(t.id)
            row.future = (#fut > 0) and fut or nil
            local rightUsed = c.xpR + XP_W
            local gname = FutureName(row.future)
            if gname then
                row.nextText:SetWidth(0)
                row.nextText:SetText(fmt(L["for %s"], gname))
                local w = min(220, (row.nextText:GetStringWidth() or 0) + 2)
                if rowW - 42 - rightUsed - w - 12 >= 160 then
                    row.nextText:SetWidth(w)
                    row.nextText:Show()
                    rightUsed = rightUsed + w + 12
                end
            end
            Fit(row, rightUsed)
            y = y + (prereq.SetRowDescQ(row, rowW - 42 - 4, t.id, ef) or 0)
            row.chainCount, row.chainXP, row.chainEst = #order, chainXP, anyEst
            if #order > 0 then
                table.insert(names, QuestName(t.id))
                row.chainFull = table.concat(names, SEP)
                row.chainLabel = L["Order: "]
            end
            prereq.SetRowDesc(hdr, 0, nil)
            local below = prereq.CardHeader(hdr, c, t, #order == 0 and t.kind == "missing", chainXP + (xp or 0),
                                            anyEst or est, members, rowW, ar, ag, ab, ef)
            hdr.chainCount, hdr.chainXP, hdr.chainEst = #order, chainXP, anyEst
            hdr.chainFull, hdr.chainLabel, hdr.future = row.chainFull, row.chainLabel, row.future
            local cf = Card(top, 1)
            if below then
                cf.effort:ClearAllPoints()
                cf.effort:SetPoint("TOPLEFT", cf, "TOPLEFT", 8 + 42, -(y - top + 4))
                cf.effort:SetText(below)
                cf.effort:Show()
                y = y + 4 + max(14, min(34, cf.effort:GetStringHeight() or 14))
                hdr.moveFS = cf.effort
            end
            y = y + 8
            cf:SetHeight(y - top)
            y = y + 6
        end
    end
    for i = nr + 1, #rows do rows[i]:Hide() end
    for i = nh + 1, #heads do heads[i]:Hide() end
    prereq.visibleTargets = (data.questie and hasGuide and cur) and cur.targets or {}
    prereq.SetAllEnabled(total > 0)
    local pool = prereq.cardPool or {}
    for i = nc + 1, #pool do pool[i]:Hide() end
    if effPending then RenderSoon() end

    if not data.questie then
        emptyText:SetText("|cffff8040" .. L["Questie is required"] .. "|r\n" .. L["Install the Questie addon, then /reload."])
        emptyText:Show()
    elseif not hasGuide then
        emptyText:SetText(L["No active RXP guide."] .. "\n" .. L["Pick a guide, then run /prereq again."])
        emptyText:Show()
    elseif total == 0 then
        emptyText:SetText("|cff33cc55" .. L["Nothing blocked."] .. "|r\n" .. L["You can follow your guide."])
        emptyText:Show()
    else
        emptyText:Hide()
    end

    content:SetHeight(max(1, y))
    pcall(prereq.AutoFit, y, total == 0)
    local maxScroll = max(0, y - scroll:GetHeight())
    slider:SetMinMaxValues(0, maxScroll)
    if maxScroll <= 0 then
        slider:Hide()
        slider:SetValue(0)
        scroll:SetVerticalScroll(0)
    else
        slider:Show()
        if slider:GetValue() > maxScroll then slider:SetValue(maxScroll) end
    end
end

local renderPending = false
RenderSoon = function()
    if renderPending or not frame or not frame:IsShown() then return end
    renderPending = true
    C_Timer.After(0.3, function()
        renderPending = false
        Render()
    end)
end

-- (re)applique le theme RXP actif a toute la fenetre
local function ApplySkin()
    if not frame then return end
    ApplyBackdrop(body, "edge", "background")
    StyleBanner(header)
    StyleBanner(footer)
    local th = prereq.V2Theme()
    header.icon:SetTexture(th and type(th.guideWindow) == "table" and th.guideWindow.logo or V1Tex("rxp_logo-64"))
    local _, classFile = UnitClass("player")
    if classFile and CLASS_TEX[classFile] then
        header.classIcon:SetTexture(V1Tex(classFile))
        header.classIcon:Show()
    else
        header.classIcon:Hide()
    end
    pcall(slider.SetThumbTexture, slider, V1Tex("Scrollbar/Knob"))
    local thumb = slider:GetThumbTexture()
    if thumb then
        thumb:SetSize(16, 24)
        thumb:SetTexCoord(0.2, 0.8, 0.125, 0.875)
    end
    for _, e in ipairs(texts) do StyleText(e) end
    for _, b in ipairs(buttons) do PaintButton(b) end
    if prereq.allBtn then pcall(prereq.SkinAllButton, prereq.allBtn) end
    for _, b in ipairs(prereq.v2Buttons or {}) do pcall(prereq.SkinAllButton, b) end
    for _, h in ipairs(heads) do StyleBanner(h) end
end

local function SetMinSize(f)
    if addon.SetResizeBounds then
        if pcall(addon.SetResizeBounds, f, MIN_W, MIN_H) then return end
    end
    if f.SetResizeBounds then
        pcall(f.SetResizeBounds, f, MIN_W, MIN_H)
    elseif f.SetMinResize then
        pcall(f.SetMinResize, f, MIN_W, MIN_H)
    end
end

local function CreateWindow()
    if frame then return frame end
    frame = CreateFrame("Frame", "RXPPrereqFrame", UIParent)
    local size = DB().userSized and DB().size or nil
    local w = type(size) == "table" and tonumber(size[1]) or W0
    local h = type(size) == "table" and tonumber(size[2]) or H0
    frame:SetSize(max(MIN_W, w), max(MIN_H, h))
    frame:SetFrameStrata("DIALOG")
    frame:SetToplevel(true)
    frame:SetClampedToScreen(true)
    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:SetResizable(true)
    SetMinSize(frame)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local p, _, rp, x, y = self:GetPoint(1)
        DB().pos = {p, rp, x, y}
    end)
    local pos = DB().pos
    if type(pos) == "table" and pos[1] then
        frame:SetPoint(pos[1], UIParent, pos[2] or pos[1], pos[3] or 0, pos[4] or 0)
    else
        frame:SetPoint("CENTER", UIParent, "CENTER", 0, 40)
    end

    -- corps : comme le BottomFrame de la fenetre de guide (bordure rxp-borders, fond du theme)
    body = CreateFrame("Frame", nil, frame, BackdropTmpl)
    body:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, -32)
    body:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, 16)

    -- bandeau titre : comme GuideName (rxp-banner, logo RXP, icone de classe)
    header = CreateFrame("Frame", nil, frame, BackdropTmpl)
    header:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, 0)
    header:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -3, 0)
    header:SetHeight(41)
    header:SetFrameLevel(body:GetFrameLevel() + 6)
    header.bg = header:CreateTexture(nil, "BACKGROUND")
    header.bg:SetPoint("TOPLEFT", 4, -2)
    header.bg:SetPoint("BOTTOMRIGHT", -2, 4)
    header.icon = header:CreateTexture(nil, "ARTWORK")
    header.icon:SetPoint("CENTER", header, "LEFT", 18, 1)
    header.icon:SetSize(46, 46)
    header.classIcon = header:CreateTexture(nil, "OVERLAY")
    header.classIcon:SetPoint("CENTER", header.icon, "BOTTOMRIGHT", -4, 10)
    header.classIcon:SetSize(24, 24)

    -- boutons du bandeau : fermer (rxp-btn-close), actualiser, aide (icon-btn-help, RXP v2)
    local close = CreateFrame("Button", nil, header)
    close:SetSize(26, 26)
    close:SetPoint("RIGHT", header, "RIGHT", -8, 1)
    close:SetFrameLevel(header:GetFrameLevel() + 2)
    close:SetNormalTexture(ICON_CLOSE)
    close:SetPushedTexture(ICON_CLOSE)
    close:SetHighlightTexture(ICON_CLOSE, "ADD")
    close:SetScript("OnClick", function() frame:Hide() end)
    close:SetScript("OnEnter", function(self) Tip(self, function(tt) tt:AddLine(L["Close"], 1, 1, 1) end) end)
    close:SetScript("OnLeave", HideTip)

    local refresh = NewIconButton(header, 28, ICON_REFRESH, L["Refresh"],
        L["Recalculates prerequisites and asks the group for their quest states again."])
    refresh:SetPoint("RIGHT", close, "LEFT", -8, 0)
    refresh:SetFrameLevel(header:GetFrameLevel() + 2)
    refresh:SetScript("OnClick", function()
        prereq.dirty = true
        prereq:Refresh(true)
        QueryGroup()
    end)

    local help = CreateFrame("Button", nil, header)
    help:SetSize(28, 28)
    help:SetPoint("RIGHT", refresh, "LEFT", -8, 0)
    help:SetFrameLevel(header:GetFrameLevel() + 2)
    help:SetNormalTexture(ICON_HELP)
    help:SetPushedTexture(ICON_HELP)
    help:SetHighlightTexture(ICON_HELP, "ADD")
    help:SetScript("OnEnter", HelpTooltip)
    help:SetScript("OnLeave", HideTip)

    local allBtn = CreateFrame("Button", nil, header)
    allBtn:SetHeight(28)
    allBtn:SetPoint("RIGHT", help, "LEFT", -8, 0)
    allBtn:SetFrameLevel(header:GetFrameLevel() + 2)
    allBtn.icon = allBtn:CreateTexture(nil, "ARTWORK")
    allBtn.icon:SetSize(18, 18)
    allBtn.icon:SetPoint("LEFT", allBtn, "LEFT", 7, 0)
    allBtn.icon:SetTexture(TEX .. "v2/rxp-icon-route")
    allBtn.text = NewText(allBtn, "sub", nil, "LEFT")
    allBtn.text:SetPoint("LEFT", allBtn.icon, "RIGHT", 5, 0)
    allBtn.text:SetText(L["Do all"])
    allBtn:SetWidth(7 + 18 + 5 + (allBtn.text:GetStringWidth() or 40) + 10)
    allBtn:SetHighlightTexture(TEX .. "v2/configurator-option-hover", "ADD")
    local hl = allBtn:GetHighlightTexture()
    if hl then
        hl:ClearAllPoints()
        hl:SetPoint("TOPLEFT", allBtn, "TOPLEFT", 2, -2)
        hl:SetPoint("BOTTOMRIGHT", allBtn, "BOTTOMRIGHT", -2, 2)
    end
    allBtn:SetScript("OnClick", function()
        prereq.guideStarted = false
        prereq:Guide("all")
        if prereq.guideStarted then frame:Hide() end
    end)
    allBtn:SetScript("OnEnter", function(self) Tip(self, function(tt) prereq.AllSummary(tt) end) end)
    allBtn:SetScript("OnLeave", HideTip)
    prereq.allBtn = allBtn
    allBtn.autoWidth = true
    pcall(prereq.SkinAllButton, allBtn)

    local title = NewText(header, "title", nil, "CENTER")
    title:SetPoint("LEFT", header, "LEFT", 48, 1)
    title:SetPoint("RIGHT", allBtn, "LEFT", -10, 0)
    title:SetText(fmt("%sRXP|r  %s", Accent(), L["Quest Prerequisites"]))

    -- pied : comme le Footer de la fenetre de guide, avec la poignee de redimensionnement
    footer = CreateFrame("Frame", nil, frame, BackdropTmpl)
    footer:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 3, 0)
    footer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, 0)
    footer:SetHeight(24)
    footer:SetFrameLevel(body:GetFrameLevel() + 6)
    footer.bg = footer:CreateTexture(nil, "BACKGROUND")
    footer.bg:SetPoint("TOPLEFT", 4, -2)
    footer.bg:SetPoint("BOTTOMRIGHT", -2, 4)
    local hint = NewText(footer, "small", MUTED, "LEFT")
    hint:SetPoint("LEFT", footer, "LEFT", 12, 1)
    hint:SetText(L["Hover a quest for details."] .. "   ? = " .. L["legend"])
    local grip = CreateFrame("Button", nil, footer)
    grip:SetSize(16, 16)
    grip:SetPoint("BOTTOMRIGHT", footer, "BOTTOMRIGHT", -1, 3)
    grip:SetFrameLevel(footer:GetFrameLevel() + 2)
    grip:SetNormalTexture(ICON_GRIP)
    grip:SetHighlightTexture(ICON_GRIP_HL, "ADD")
    grip:SetScript("OnMouseDown", function(_, button)
        if button == "LeftButton" then frame:StartSizing("BOTTOMRIGHT") end
    end)
    grip:SetScript("OnMouseUp", function()
        frame:StopMovingOrSizing()
        DB().size = {floor(frame:GetWidth() + 0.5), floor(frame:GetHeight() + 0.5)}
        DB().userSized = true
        local p, _, rp, x, y = frame:GetPoint(1)
        DB().pos = {p, rp, x, y}
        Render()
    end)

    -- ligne du joueur / groupe
    groupText = NewText(body, "big", nil, "LEFT")
    groupText:SetPoint("TOPLEFT", body, "TOPLEFT", 16, -20)
    groupText:SetPoint("RIGHT", body, "RIGHT", -16, 0)

    scroll = CreateFrame("ScrollFrame", nil, body)
    scroll:SetPoint("TOPLEFT", body, "TOPLEFT", 10, -44)
    scroll:SetPoint("BOTTOMRIGHT", body, "BOTTOMRIGHT", -26, 12)
    content = CreateFrame("Frame", nil, scroll)
    content:SetSize(max(100, frame:GetWidth() - 42), 1)
    scroll:SetScrollChild(content)

    -- barre de defilement : curseur "Scrollbar/Knob" du theme RXP (RXPFrame.UpdateScrollBar)
    slider = CreateFrame("Slider", nil, body)
    slider:SetOrientation("VERTICAL")
    slider:SetPoint("TOPRIGHT", body, "TOPRIGHT", -6, -44)
    slider:SetPoint("BOTTOMRIGHT", body, "BOTTOMRIGHT", -6, 12)
    slider:SetWidth(16)
    local track = slider:CreateTexture(nil, "BACKGROUND")
    track:SetPoint("TOP", 0, 0)
    track:SetPoint("BOTTOM", 0, 0)
    track:SetWidth(6)
    track:SetColorTexture(0, 0, 0, 0.45)
    slider:SetThumbTexture(V1Tex("Scrollbar/Knob"))
    slider:SetMinMaxValues(0, 0)
    slider:SetValueStep(1)
    slider:SetValue(0)
    slider:SetScript("OnValueChanged", function(_, v) scroll:SetVerticalScroll(v) end)
    local function Wheel(_, delta)
        local lo, hi = slider:GetMinMaxValues()
        slider:SetValue(max(lo, min(hi, slider:GetValue() - delta * 60)))
    end
    scroll:EnableMouseWheel(true)
    scroll:SetScript("OnMouseWheel", Wheel)
    body:EnableMouseWheel(true)
    body:SetScript("OnMouseWheel", Wheel)

    emptyText = NewText(body, "big", nil, "CENTER", true)
    emptyText:SetPoint("CENTER", scroll, "CENTER", 0, 0)

    scroll:SetScript("OnSizeChanged", function(self, w)
        if content and tonumber(w) and w > 50 then content:SetWidth(w) end
        RenderSoon()
    end)
    frame:SetScript("OnSizeChanged", function()
        if scroll and content then
            local sw = scroll:GetWidth()
            if sw and sw > 50 then content:SetWidth(sw) end
        end
        RenderSoon()
    end)

    local elapsed = 0
    local effElapsed = 0
    frame:SetScript("OnUpdate", function(_, e)
        effElapsed = effElapsed + e
        if effElapsed >= 1.5 then
            effElapsed = 0
            pcall(prereq.EffortTick, prereq)
        end
        elapsed = elapsed + e
        if elapsed >= QUERY_EVERY then
            elapsed = 0
            QueryGroup()
        end
    end)
    if frame.EnableKeyboard then
        frame:EnableKeyboard(true)
        if frame.SetPropagateKeyboardInput and not InCombatLockdown() then
            pcall(frame.SetPropagateKeyboardInput, frame, true)
        end
        frame:SetScript("OnKeyDown", function(self, key)
            if key == "ESCAPE" then
                if not InCombatLockdown() and self.SetPropagateKeyboardInput then
                    pcall(self.SetPropagateKeyboardInput, self, false)
                end
                self:Hide()
            elseif not InCombatLockdown() and self.SetPropagateKeyboardInput then
                pcall(self.SetPropagateKeyboardInput, self, true)
            end
        end)
    end
    frame:SetScript("OnShow", function()
        if frame.SetPropagateKeyboardInput and not InCombatLockdown() then
            pcall(frame.SetPropagateKeyboardInput, frame, true)
        end
        elapsed = 0
        local ok, err = pcall(ApplySkin)
        if not ok and not prereq.skinErrorShown then
            prereq.skinErrorShown = true
            Print("RXP skin unavailable (%s)", tostring(err))
        end
    end)
    pcall(ApplySkin)
    local function OnThemeChange()
        if frame and frame:IsShown() then
            pcall(ApplySkin)
            RenderSoon()
        end
    end
    for _, fn in ipairs({"RenderFrame", "ReloadTheme"}) do
        if type(addon[fn]) == "function" then pcall(hooksecurefunc, addon, fn, OnThemeChange) end
    end
    frame:Hide()
    return frame
end

---------------------------------------------------------------------------
-- Rafraichissement / detection automatique
---------------------------------------------------------------------------
local offered = {}
local lastSig

local function Signature()
    local g = addon.currentGuide
    return fmt("%s#%s", GuideKey(g), tostring(_G.RXPCData and _G.RXPCData.currentStep or 0))
end

-- recalcule si besoin ; force = toujours
-- fenetre ouverte et joueur deplace de plus de 200 m : on recalcule l'effort des cartes
function prereq:EffortTick()
    if not (frame and frame:IsShown()) then return end
    local me = prereq.PlayerWorldPos()
    if not me then return end
    local d = prereq.WorldDist(me, prereq.effortPos)
    if not prereq.effortPos or (d and d > 200) then
        prereq.effortPos, prereq.effortLivePos = me, me
        prereq.effortCache = nil
        prereq.descCache = nil
        RenderSoon()
        return
    end
    local d2 = prereq.WorldDist(me, prereq.effortLivePos)
    if not prereq.effortLivePos or (d2 and d2 > 50) then
        prereq.effortLivePos = me
        for _, r in ipairs(rows) do
            if r:IsShown() and r.moveEf and r.moveFS then
                local ok, txt = pcall(prereq.CardMove, r.moveEf)
                if ok then r.moveFS:SetText(txt) end
            end
        end
    end
end

function prereq:Refresh(force)
    local sig = Signature()
    if force or prereq.dirty or sig ~= lastSig or not currentData then
        lastSig = sig
        prereq.dirty = false
        prereq.effortCache = nil
        prereq.descCache = nil
        prereq.effortPos = prereq.PlayerWorldPos()
        local ok, res = pcall(BuildData)
        if ok then
            currentData = res
            prereq.data = res
        elseif not prereq.errorShown then
            prereq.errorShown = true
            Print("scan error (shown once): %s", tostring(res))
        end
    end
    Render()
    pcall(prereq.UpdateBannerButton)
    return currentData
end

function prereq:Open()
    CreateWindow()
    frame:Show()
    prereq:Refresh(true)
    QueryGroup()
end

function prereq:Toggle()
    if frame and frame:IsShown() then frame:Hide() else prereq:Open() end
end

-- appelee par le ticker : ouvre la fenetre si une NOUVELLE quete bloquee arrive bientot
function prereq:Check(manual)
    if manual then
        if not Questie() then
            Print("Questie is required (quest database): install the Questie addon, then /reload.")
        end
        prereq:Open()
        return
    end
    if not Questie() then return end
    local g = addon.currentGuide
    if not g or g.empty or not g.steps then return end
    local sig = Signature()
    if not prereq.dirty and sig == lastSig and currentData then
        if prereq.pendingOpen and not InCombatLockdown() then
            prereq.pendingOpen = false
            prereq:Open()
        end
        return
    end
    local data = prereq:Refresh(false)
    if not data or g.group == GROUP then return end
    local cur = data.sections[1]
    if not cur or not cur.current then return end
    local fresh = false
    for _, t in ipairs(cur.targets) do
        if t.step <= cur.start + SOON_STEPS and not offered[t.id] then
            offered[t.id] = true
            fresh = true
        end
    end
    if fresh and not (frame and frame:IsShown()) then
        if InCombatLockdown() then
            prereq.pendingOpen = true
        else
            prereq:Open()
        end
    end
end

---------------------------------------------------------------------------
-- Evenements
---------------------------------------------------------------------------
local pushPending = false
local function SchedulePush(delay)
    if pushPending then return end
    pushPending = true
    C_Timer.After(delay or 1, function()
        pushPending = false
        pcall(PushChanges)
        if frame and frame:IsShown() then RenderSoon() end
    end)
end

---------------------------------------------------------------------------
-- Quetes ignorees (bouton x) : le guide RXP les saute aussi. On saute l'acceptation, les objectifs et le
-- rendu de la quete ignoree, de sa chaine manquante, et des quetes du guide qui en dependent (suite de la
-- chaine). Meme mecanisme que la case a cocher d'une etape (element.skip). Jamais une quete deja dans le
-- journal. Fonctions sur prereq (fichier proche de la limite de 200 locales).
---------------------------------------------------------------------------
function prereq.SkipSet(guide)
    local ign = DB().ignored
    if not next(ign) then return nil end
    local set = {}
    for id in pairs(ign) do
        if not Done(id) then
            set[id] = true
            for _, n in ipairs(MissingTree(id, Done)) do
                if not Done(n.id) then set[n.id] = true end
            end
        end
    end
    -- suite de la chaine : quetes du guide qui ne peuvent plus etre prises sans une quete sautee
    local changed = guide and guide.steps and true
    while changed do
        changed = false
        for _, step in ipairs(guide.steps) do
            for _, e in ipairs(step.elements or {}) do
                local qid = e.questId
                local q = qid and not set[qid] and not Done(qid) and not IsOnQuest(qid) and GetQuest(qid)
                if q then
                    local blocked = false
                    if type(q.preQuestGroup) == "table" then
                        for _, p in ipairs(q.preQuestGroup) do
                            if set[p] then blocked = true break end
                        end
                    end
                    if not blocked and type(q.preQuestSingle) == "table" and #q.preQuestSingle > 0 then
                        blocked = true
                        for _, p in ipairs(q.preQuestSingle) do
                            if not set[p] then blocked = false break end
                        end
                    end
                    if blocked then set[qid] = true; changed = true end
                end
            end
        end
    end
    return set
end

prereq.skipMarked = {}
function prereq.ApplyGuideSkips()
    local guide = addon.currentGuide
    if not (guide and guide.steps) then return end
    -- jamais dans un guide genere par la fenetre : le joueur l'a demande, il en veut toutes les etapes
    local set = guide.group ~= GROUP and next(DB().ignored) and prereq.SkipSet(guide) or nil
    local any = false
    -- elements marques par nous qui ne doivent plus l'etre (/prereq reset, quete prise entre-temps)
    for e in pairs(prereq.skipMarked) do
        if not (set and e.questId and set[e.questId] and not IsOnQuest(e.questId)) then
            prereq.skipMarked[e] = nil
            if e.skip and not e.completed then e.skip = nil; any = true end
        end
    end
    if set then
        for _, step in ipairs(guide.steps) do
            if step.active then
                for _, e in ipairs(step.elements or {}) do
                    local qid = e.questId
                    if qid and set[qid] and not e.skip and not IsOnQuest(qid) then
                        e.skip = true
                        prereq.skipMarked[e] = true
                        any = true
                    end
                end
            end
        end
    end
    if any then
        addon.updateSteps = true
        if addon.UpdateMap then pcall(addon.UpdateMap) end
    end
end

local events = CreateFrame("Frame")
events:RegisterEvent("PLAYER_LOGIN")
events:RegisterEvent("QUEST_ACCEPTED")
events:RegisterEvent("QUEST_TURNED_IN")
events:RegisterEvent("QUEST_REMOVED")
events:RegisterEvent("QUEST_LOG_UPDATE")
events:RegisterEvent("PLAYER_LEVEL_UP")
events:RegisterEvent("PLAYER_REGEN_ENABLED")
events:RegisterEvent("PLAYER_ENTERING_WORLD")
events:RegisterEvent("ZONE_CHANGED_NEW_AREA")
events:SetScript("OnEvent", function(_, event)
    if event == "PLAYER_LOGIN" then
        RegisterHandlers()
        -- bouton sur le bandeau du guide RXP (la fenetre RXP existe deja a la connexion)
        C_Timer.After(2, function() pcall(prereq.CreateBannerButton) end)
        C_Timer.After(8, function()
            C_Timer.NewTicker(3, function()
                local ok, err = pcall(prereq.Check, prereq, false)
                if not ok and not prereq.errorShown then
                    prereq.errorShown = true
                    Print("error (shown once): %s", tostring(err))
                end
                -- trajet du guide genere toujours adapte a la position ? (et reprise du guide)
                pcall(prereq.CheckRoute, prereq)
                pcall(prereq.EffortTick, prereq)
            end)
            -- etapes des quetes ignorees : sautees des qu'elles deviennent actives
            C_Timer.NewTicker(1, function() pcall(prereq.ApplyGuideSkips) end)
        end)
    elseif event == "PLAYER_ENTERING_WORLD" or event == "ZONE_CHANGED_NEW_AREA" then
        -- position changee (chargement, nouvelle zone) : le trajet du guide genere est-il encore bon ?
        C_Timer.After(2, function()
            pcall(prereq.CheckRoute, prereq)
            pcall(prereq.EffortTick, prereq)
        end)
    elseif event == "QUEST_LOG_UPDATE" then
        -- frequent : pas de recalcul, juste un push groupe limite
        SchedulePush(2)
    elseif event == "PLAYER_REGEN_ENABLED" then
        if prereq.pendingOpen then
            prereq.pendingOpen = false
            C_Timer.After(1, function() prereq:Open() end)
        end
    else
        -- quete prise / rendue / abandonnee, niveau : les chaines changent
        prereq.dirty = true
        if event == "PLAYER_LEVEL_UP" then xpCache = {} end
        SchedulePush(1)
        if frame and frame:IsShown() then
            C_Timer.After(1, function() prereq:Refresh(false) end)
        end
    end
end)

-- /prereq dernier : texte du dernier guide genere, dans une fenetre ou on peut le copier
local copyFrame
local function ShowLastGuide()
    local text = DB().lastGuide
    if type(text) ~= "string" or text == "" then
        Print("no guide created yet.")
        return
    end
    local n = select(2, text:gsub("\n", "\n")) + 1
    Print("last created guide (%s), %d lines: window opened, Ctrl+A then Ctrl+C to copy.",
          tostring(DB().lastGuideInfo or "?"), n)
    if not copyFrame then
        local f = CreateFrame("Frame", "RXPPrereqCopyFrame", UIParent, BackdropTmpl)
        f:SetSize(620, 460)
        f:SetPoint("CENTER")
        f:SetFrameStrata("DIALOG")
        f:SetToplevel(true)
        f:SetClampedToScreen(true)
        f:EnableMouse(true)
        f:SetMovable(true)
        f:RegisterForDrag("LeftButton")
        f:SetScript("OnDragStart", f.StartMoving)
        f:SetScript("OnDragStop", f.StopMovingOrSizing)
        local title = NewText(f, "head", nil, "LEFT")
        title:SetPoint("TOPLEFT", 14, -12)
        title:SetText(fmt("%sRXP|r  %s", Accent(), L["Last prerequisite guide"]))
        local close = CreateFrame("Button", nil, f)
        close:SetSize(24, 24)
        close:SetPoint("TOPRIGHT", -8, -8)
        close:SetNormalTexture(ICON_CLOSE)
        close:SetHighlightTexture(ICON_CLOSE, "ADD")
        close:SetScript("OnClick", function() f:Hide() end)
        local sf = CreateFrame("ScrollFrame", "RXPPrereqCopyScroll", f, "UIPanelScrollFrameTemplate")
        sf:SetPoint("TOPLEFT", 14, -40)
        sf:SetPoint("BOTTOMRIGHT", -32, 14)
        local eb = CreateFrame("EditBox", nil, sf)
        eb:SetMultiLine(true)
        eb:SetAutoFocus(false)
        eb:SetFontObject("ChatFontNormal")
        eb:SetWidth(560)
        eb:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
        sf:SetScrollChild(eb)
        f.edit = eb
        copyFrame = f
    end
    ApplyBackdrop(copyFrame, "edge", "background")
    copyFrame.edit:SetText(text)
    copyFrame:Show()
    copyFrame.edit:SetFocus()
    copyFrame.edit:HighlightText()
end

_G.SLASH_RXPPREREQ1 = "/prereq"
_G.SlashCmdList["RXPPREREQ"] = function(input)
    input = (input or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if input == "" then
        prereq:Check(true)
    elseif input == "resetsize" then
        prereq.ResetSize()
    elseif input == "reset" then
        DB().ignored = {}
        offered = {}
        prereq.dirty = true
        Print("ignored quests will be shown again.")
        if frame and frame:IsShown() then prereq:Refresh(true) end
        pcall(prereq.ApplyGuideSkips)
    elseif input == "last" or input == "dernier" or input == L["last"] then
        ShowLastGuide()
    elseif tonumber(input) then
        prereq:Guide(tonumber(input))
    else
        Print("/prereq  -  /prereq <quest id>  -  /prereq reset  -  /prereq last")
    end
end
