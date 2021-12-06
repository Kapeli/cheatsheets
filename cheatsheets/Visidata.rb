require 'yaml'

# Taken directly from github.com/jsvine/visidata-cheat-sheet/blob/master/input/cheat-sheet.yaml
vd_cheatsheet_yaml = <<-'END'
- title:
    de: <i>VisiData-Spickzettel</i>
    en: <i>A VisiData Cheat Sheet</i>
    es: <i>Un "Cheat Sheet" Para VisiData</i>
    it: <i>Un "Cheat Sheet" per VisiData</i>
  commands:
  - cmd:
      de: Version
      en: Version
      es: Versión
      it: Versione
    desc:
      en: VisiData v2.6
  - cmd:
      de: Aktualisiert
      en: Updated
      es: Actualizado
      it: Aggiornato
    desc:
      de: '2021-09-23'
      en: '2021-09-23'
      es: '2021-09-23'
      it: '2021-09-23'
  - cmd:
      de: Weiterführende Informationen
      en: More info
      es: Más info
      it: Maggiori info
    desc:
      en: <a href="https://visidata.org/">visidata.org</a><br/><a href="https://jsvine.github.io/intro-to-visidata/">jsvine.github.io/intro-to-visidata</a>
      it: <a href="https://visidata.org/">visidata.org</a><br/><a href="https://ondata.github.io/guidaVisiData/">ondata.github.io/guidaVisiData/</a><br/><a href="https://jsvine.github.io/intro-to-visidata/">jsvine.github.io/intro-to-visidata</a>
- title:
    de: Hilfe bekommen
    en: Getting help
    es: Obtener ayuda
    it: Ottenere aiuto
  commands:
  - cmd:
      en: <kbd>Ctrl-h</kbd>
    desc:
      de: Das Hilfe-Menü anzeigen
      en: Open the help menu
      es: Abrir el menú de ayuda
      it: Apri il menu di aiuto
  - cmd:
      en: <kbd>z</kbd> + <kbd>Ctrl-h</kbd>
    desc:
      de: Liste der auf dem aktuellen Arbeitsblatt verfügbaren Kommandos anzeigen
      en: Display list of commands available on the current sheet
      es: Mostrar lista de comandos (para la hoja actual)
      it: Mostra la lista dei comandi per il foglio corrente
- title:
    de: Abhilfe bei Schwierigkeiten
    en: Getting out of trouble
    es: Resolver problemas
    it: Risolvere problemi
  commands:
  - cmd:
      en: <kbd>U</kbd>/<kbd>R</kbd>
    desc:
      de: Aktion rückgängig machen/wiederherstellen
      en: Undo/Redo
      es: Deshacer/Rehacer
      it: Annulla/Ripeti
  - cmd:
      en: <kbd>Ctrl-c</kbd>
    desc:
      de: Kommando abbrechen
      en: Abort the current command
      es: Abortar comando actual
      it: Annulla il comando corrente
  - cmd:
      en: <kbd>q</kbd>
    desc:
      de: Aktuelles Arbeitsblatt schließen
      en: Quit the current VisiData "sheet"
      es: Salir de hoja ("sheet") actual
      it: Chiudi il foglio corrente di VisiData
  - cmd:
      en: <kbd>Ctrl-q</kbd>
    desc:
      de: VisiData erzwungen schließen
      en: Force-quit VisiData entirely
      es: Forzar salida de VisiData
      it: Forza la chiusura di VisiData
- title:
    de: Eingabe/Ausgabe
    en: Input / output
    es: Entrada / salida
    it: Input / output
  commands:
  - cmd:
      de: <kbd>o</kbd> + <i>Dateiname</i>
      en: <kbd>o</kbd> + <i>filename</i>
      es: <kbd>o</kbd> + <i>archivo</i>
      it: <kbd>o</kbd> + <i>nomefile</i>
    desc:
      de: Datei öffnen
      en: Open a file
      es: Abrir un archivo
      it: Apri un file
  - cmd:
      de: <kbd>Ctrl-s</kbd> + <i>Dateiname</i>
      en: <kbd>Ctrl-s</kbd> + <i>filename</i>
      es: <kbd>Ctrl-s</kbd> + <i>archivo</i>
      it: <kbd>Ctrl-s</kbd> + <i>nomefile</i>
    desc:
      de: Aktuelles Arbeitsblatt in <i>Dateiname</i> speichern
      en: Save current sheet to <i>filename</i>
      es: Guardar hoja actual a <i>nombre del archivo</i>
      it: Salva il foglio corrente come <i>nomefile</i>
  - cmd:
      en: <kbd>gY</kbd>/<kbd>gzY</kbd>
    desc:
      de: »Ausgewählte Zeilen (aktuelle Spalte) in die Zwischenablage kopieren«
      en: Copy (column for) selected rows to <i>clipboard</i>
      es: Copiar (columna de) filas seleccionadas al <i>portapapeles</i>
      it: Copia (colonna per) righe selezionate negli <i>appunti</i>
- title:
    de: Metaarbeitsblätter
    en: Metasheets
    es: Metahojas
    it: Metasheets
  commands:
  - cmd:
      en: <kbd>S</kbd>
    desc:
      de: Übersicht aller Arbeitsblätter
      en: Sheets Sheet
      es: Hoja de hojas ("Sheets Sheet")
      it: Foglio dei fogli
  - cmd:
      en: <kbd>gS</kbd>
    desc:
      de: Friedhof der Arbeitsblätter
      en: Sheets Graveyard
      es: Cementerio de hojas
      it: Cimitero dei fogli
  - cmd:
      en: <kbd>C</kbd>
    desc:
      de: Arbeitsblatt aller Spalten
      en: Columns Sheet
      es: Hoja de columnas
      it: Foglio delle colonne
  - cmd:
      en: <kbd>O</kbd>
    desc:
      de: Arbeitsblatt der globalen Einstellungen
      en: Global options sheet
      es: Hoja de opciones globales
      it: Foglio delle opzioni globali
  - cmd:
      en: <kbd>zO</kbd>
    desc:
      de: Arbeitsblatt der Einstellungen des aktuellen Arbeitsblattes
      en: This-sheet options sheet
      es: Opciones de hoja actual
      it: Foglio delle opzioni del foglio corrente
- title:
    de: Zeiger bewegen ...
    en: Move cursor ...
    es: Mover el cursor ...
    it: Sposta il cursore ...
  commands:
  - cmd:
      en: <kbd>gj</kbd>
    desc:
      de: in die letzte Zeile
      en: to the last row
      es: a la última fila
      it: all'ultima riga
  - cmd:
      en: <kbd>gk</kbd>
    desc:
      de: in die erste Zeile
      en: to the first row
      es: a la primera fila
      it: alla prima riga
  - cmd:
      en: <kbd>gh</kbd>
    desc:
      de: in die ganz linke Spalte
      en: to the leftmost column
      es: a la última columna de la izquierda
      it: alla colonna più a sinistra
  - cmd:
      en: <kbd>gl</kbd>
    desc:
      de: in die ganz rechte Spalte
      en: to the rightmost column
      es: a la última columna de la derecha
      it: alla colonna più a destra
  - cmd:
      en: <kbd>Ctrl-F</kbd>
    desc:
      de: eine Seite nach unten (vorwärts)
      en: one page down (forward)
      es: una página hacia abajo (adelante)
      it: una pagina in basso (avanti)
  - cmd:
      en: <kbd>Ctrl-B</kbd>
    desc:
      de: eine Seite nach oben (rückwärts)
      en: one page up (backward)
      es: una página hacia arriba (atrás)
      it: una pagina su (indietro)
- title:
    de: Bewegung mittels Suchen
    en: Moving via search
    es: Moverse usando el buscador
    it: Spostamento tramite ricerca
  commands:
  - cmd:
      en: <kbd>/</kbd> + <i>regex</i>
    desc:
      de: Suche vorwärts in der <i>aktuellen</i> Spalte
      en: Search forward in <i>current</i> column
      es: Buscar hacia adelante en la col. <i>actual</i>
      it: Cerca in avanti nella colonna <i>corrente</i>
  - cmd:
      en: <kbd>?</kbd> + <i>regex</i>
    desc:
      de: Suche rückwärts in der <i>aktuellen</i> Spalte
      en: Search backward in <i>current</i> column
      es: Buscar hacia atrás en la col. <i>actual</i>
      it: Cerca indietro nella colonna <i>corrente</i>
  - cmd:
      en: <kbd>g/</kbd> + <i>regex</i>
    desc:
      de: Suche vorwärts in <i>allen</i> Spalten
      en: Search forward in <i>all</i> columns
      es: Buscar hacia adelante en todas las columnas
      it: Cerca in avanti in <i>tutte</i> le colonne
  - cmd:
      en: <kbd>g?</kbd> + <i>regex</i>
    desc:
      de: Suche rückwärts in <i>allen</i> Spalten
      en: Search backward in <i>all</i> columns
      es: Buscar hacia atrás en todas las columnas
      it: Cerca indietro in <i>tutte</i> le colonne
  - cmd:
      en: <kbd>n</kbd>
    desc:
      de: Zur nächsten Zeile mit Treffer springen
      en: Move to next matching row
      es: Ir a la siguiente fila que coincida
      it: Riga corrispondente successiva
  - cmd:
      en: <kbd>N</kbd>
    desc:
      de: Zur letzten Zeile mit Treffer springen
      en: Move to previous matching row
      es: Ir a la anterior fila que coincida
      it: Riga corrispondente precedente
- title:
    de: Zeilen sortieren ...
    en: Sort rows ...
    es: Ordenar las filas ...
    it: Ordina le righe ...
  commands:
  - cmd:
      en: <kbd>[</kbd>
    desc:
      de: aufsteigend nach der <i>aktuellen Spalte</i>
      en: in ascending order of <i>current column</i>
      es: ascendentemente, de acuerdo con <i>columna actual</i>
      it: la <i>colonna corrente</i> in ordine ascendente
  - cmd:
      en: <kbd>]</kbd>
    desc:
      de: absteigend nach der <i>aktuellen Spalte</i>
      en: in descending order of <i>current column</i>
      es: descendentemente, de acuerdo con <i>columna actual</i>
      it: la <i>colonna corrente</i> in ordine decrescente
  - cmd:
      en: <kbd>g[</kbd>
    desc:
      de: aufsteigend nach der <i>Indexspalte</i>
      en: in ascending order of <i>key columns</i>
      es: ascendentemente, de acuerdo con <i>columnas claves</i>
      it: <i>le colonne chiave</i>, in ordine ascendente
  - cmd:
      en: <kbd>g]</kbd>
    desc:
      de: absteigend nach der <i>Indexspalte</i>
      en: in descending order of <i>key columns</i>
      es: descendentemente, de acuerdo con <i>columnas claves</i>
      it: <i>le colonne chiave</i>, in ordine decrescente
- title:
    de: Einfache Zeilenauswahl
    en: Basic row selection
    es: Selección básica de filas
    it: Selezione di base di righe
  commands:
  - cmd:
      en: <kbd>s</kbd>
    desc:
      de: Aktuelle Zeile auswählen
      en: Select the current row
      es: Seleccionar la fila actual
      it: Seleziona la riga corrente
  - cmd:
      en: <kbd>u</kbd>
    desc:
      de: Aktuelle Zeile abwählen
      en: Unselect the current row
      es: Deseleccionar la fila actual
      it: Deseleziona la riga corrente
  - cmd:
      en: <kbd>t</kbd>
    desc:
      de: Aktuelle Zeile zwischen aus-/abgewählt umschalten
      en: Toggle the current row between selected / unselected
      es: Cambiar la fila actual entre seleccionada / deseleccionada
      it: Inverti la riga corrente tra selezionata e non
  - cmd:
      en: <kbd>gs</kbd>
    desc:
      de: Alle Zeilen auswählen
      en: Select all rows
      es: Seleccionar todas las filas
      it: Seleziona tutte le righe
  - cmd:
      en: <kbd>gu</kbd>
    desc:
      de: Alle Zeilen abwählen
      en: Unselect all rows
      es: Deseleccionar todas las filas
      it: Deseleziona tutte le righe
  - cmd:
      en: <kbd>gt</kbd>
    desc:
      de: Alle Zeilen zwischen aus-/abgewählt umschalten
      en: Toggle all rows between selected / unselected
      es: Invertir selección / deselección de todas las filas
      it: Inverti tutte le righe tra selezionate e non
- title:
    de: Fortgeschrittene Zeilenauswahl
    en: Advanced row selection
    es: Selección avanzada de filas
    it: Selezione avanzata delle righe
  commands:
  - cmd:
      en: <kbd>|</kbd> + <i>regex</i>
    desc:
      de: Alle Zeilen auswählen, in denen die <strong>aktuelle Spalte</strong> auf <i>regex</i> matched
      en: Select all rows where <i>regex</i> matches the <strong>current column</strong>
      es: Seleccionar las filas donde <i>regex</i> coincide con la <strong>columna actual</strong>
      it: Le righe con matching della <i>regex</i> nella <strong>colonna corrente</strong>
  - cmd:
      en: <kbd>\</kbd> + <i>regex</i>
    desc:
      de: Alle Zeilen abwählen, in denen die <strong>aktuelle Spalte</strong> auf <i>regex</i> matched
      en: Unselect all rows where <i>regex</i> matches the <strong>current column</strong>
      es: Deseleccionar las filas donde <i>regex</i> coincide con la <strong>columna actual</strong>
      it: Deseleziona le righe  della <i>regex</i> nella <strong>colonna corrente</strong>
  - cmd:
      en: <kbd>g|</kbd> + <i>regex</i>
    desc:
      de: Alle Zeilen auswählen, in denen <strong>irgendeine Spalte</strong> auf <i>regex</i> matched
      en: Select all rows where <i>regex</i> matches <strong>any column</strong>
      es: Seleccionar las filas donde <i>regex</i> coincide con <strong>cualquier columna</strong>
      it: Le righe con matching della <i>regex</i> in <strong>qualsiasi colonna</strong>
  - cmd:
      en: <kbd>g\</kbd> + <i>regex</i>
    desc:
      de: Alle Zeilen abwählen, in denen <strong>irgendeine Spalte</strong> auf <i>regex</i> matched
      en: Unselect all rows where <i>regex</i> matches <strong>any</strong> column
      es: Deseleccionar las filas donde <i>regex</i> coincide con <strong>cualquier columna</strong>
      it: Deseleziona le righe con matching della <i>regex</i> in <strong>qualsiasi colonna</strong>
  - cmd:
      en: <kbd>,</kbd>
    desc:
      de: Alle Zeilen auswählen, in denen die <strong>aktuelle Spalte</strong> gleich der aktuellen Zelle ist
      en: Select all rows where the <strong>current column</strong> matches the current cell
      es: Seleccionar las filas donde la <strong>columna actual</strong> coincide con la celda actual
      it: Le righe in cui la <strong>colonna corrente</strong> corrisponde alla cella corrente
  - cmd:
      en: <kbd>g,</kbd>
    desc:
      de: Alle Zeilen auswählen, in denen <strong>irgendeine Spalte</strong> gleich der aktuellen Zelle ist
      en: Select all rows where <strong>any column</strong> matches the current cell
      es: Seleccionar las filas donde <strong>cualquier columna</strong> coincide con la celda actual
      it: Le righe che corrispondono alla cella corrente in <strong>qualsiasi colonna</strong>
  - cmd:
      en: <kbd>z|</kbd> + <i>expr</i>
    desc:
      de: Alle Zeilen auswählen, bei denen <i>expr</i> zu <code>True</code> evaluiert
      en: Select all rows where <i>expr</i> evaluates to <code>True</code>
      es: Seleccionar las filas donde <i>expr</i> se evalúa como <code>True</code>
      it: Seleziona le righe in cui <i>expr</i> restituisce <code>True</code>
  - cmd:
      en: <kbd>z\</kbd> + <i>expr</i>
    desc:
      de: Alle Zeilen abwählen, bei denen <i>expr</i> zu <code>True</code> evaluiert
      en: Unselect all rows where <i>expr</i> evaluates to <code>True</code>
      es: Deseleccionar las filas donde <i>expr</i> se evalúa como <code>True</code>
      it: Deseleziona le righe in cui <i>expr</i> restituisce <code>True</code>
- title:
    de: Zeilen/Spalten verschieben
    en: Shifting rows / columns
    es: Mover filas y columnas
    it: Spostamento di righe / colonne
  commands:
  - cmd:
      en: <kbd>J</kbd>
    desc:
      de: Zeile nach oben schieben
      en: Move row up
      es: Mover fila hacia arriba
      it: Sposta la riga verso l'alto
  - cmd:
      en: <kbd>K</kbd>
    desc:
      de: Zeile nach unten schieben
      en: Move row down
      es: Mover fila hacia abajo
      it: Sposta la riga verso il basso
  - cmd:
      en: <kbd>H</kbd>
    desc:
      de: Spalte nach links schieben
      en: Move column left
      es: Mover columna hacia la izquierda
      it: Sposta la colonna a sinistra
  - cmd:
      en: <kbd>L</kbd>
    desc:
      de: Spalte nach rechts schieben
      en: Move column right
      es: Mover columna hacia la derecha
      it: Sposta la colonna a destra
- title:
    de: Spaltentypen einstellen
    en: Setting column types
    es: Establecer tipos de columna
    it: Impostazione dei tipi di colonna
  commands:
  - cmd:
      en: <kbd>#</kbd>
    desc:
      de: Ganzzahl
      en: Integer
      es: Entero
      it: Intero
  - cmd:
      en: <kbd>%</kbd>
    desc:
      de: Dezimalzahl
      en: Float
      es: Flotante
      it: Decimale
  - cmd:
      en: <kbd>$</kbd>
    desc:
      de: Währung
      en: Currency
      es: Moneda
      it: Moneta
  - cmd:
      en: <kbd>@</kbd>
    desc:
      de: Datum
      en: Date
      es: Fecha
      it: Data
  - cmd:
      en: <kbd>~</kbd>
    desc:
      de: Text
      en: Text
      es: Texto
      it: Testo
- title:
    de: Spalten umbenennen
    en: Renaming columns
    es: Renombrar columnas
    it: Rinominare le colonne
  commands:
  - cmd:
      en: <kbd>^</kbd>
    desc:
      de: Aktuelle Spalte umbenennen
      en: Rename current column
      es: Renombrar columna actual
      it: Rinomina la colonna corrente
  - cmd:
      en: <kbd>g^</kbd>
    desc:
      de: <i>Unbenannte</i> Spalten nach aktueller oder ausgewählte(n) Zeile(n) benennen
      en: Set names of all <i>unnamed</i> columns to the values in the current or selected row(s)
      es: Establecer como nombres de todas las columnas <i>sin nombre</i> los valores de la fila actual (o selección)
      it: Imposta i nomi delle colonne senza nome, con i valori della riga corrente o selezionta(e)
  - cmd:
      en: <kbd>gz^</kbd>
    desc:
      de: Alle <i>sichtbaren</i> Spalten nach aktueller oder ausgewählte(n) Zeile(n) benennen
      en: Set names of all <i>visible</i> columns to the values in the current or selected row(s)
      es: Establecer como nombres de <i>todas</i> las columnas los valores en la fila actual (o selección)
      it: Imposta i nomi delle colonne visibili con i valori delle riga corrente o selezionta(e)
- title:
    de: Spaltengröße anpassen
    en: Resizing columns
    es: Cambiar tamaño de las columnas
    it: Ridimensionamento delle colonne
  commands:
  - cmd:
      en: <kbd>_</kbd>
    desc:
      de: Breite der <strong>aktuellen Spalte</strong> auf die Breite des sichtbaren Inhalts setzen
      en: Adjust the width of <strong>current column</strong> to fit text in all visible rows
      es: Ajustar <strong>columna actual</strong> para encajar el texto de las filas visibles
      it: Larghezza della <strong>colonna corrente</strong> in base al testo delle righe visibili
  - cmd:
      en: <kbd>g_</kbd>
    desc:
      de: Breite <strong>aller Spalten</strong> auf die Breite des sichtbaren Inhalts setzen
      en: Adjust the width of <strong>all columns</strong> to fit text in all visible rows
      es: Ajustar <strong>todas las columnas</strong> para encajar el texto de las filas visibles
      it: Larghezza di <strong>tutte le colonne</strong> in base al testo delle righe visibili
  - cmd:
      en: <kbd>z_</kbd> + <i>n</i>
    desc:
      de: Breite der aktuellen Spalte auf <i>n</i> Zeichen setzen
      en: Set the current column's width to <i>n</i> characters
      es: Cambiar anchura de la columna actual a <i>n</i> caracteres
      it: Larghezza della colonna corrente pari a <i>n</i> caratteri
  - cmd:
      en: <kbd>z-</kbd>
    desc:
      de: Breite der aktuellen Spalte halbieren
      en: Shrink the current column's width in half
      es: Reducir anchura de la columna actual a la mitad
      it: Riduci della metà la larghezza della colonna corrente
  - cmd:
      en: <kbd>-</kbd>
    desc:
      de: Aktuelle Spalte verdecken, indem die Breite auf <code>0</code> gesetzt wird
      en: Hide the current column by setting its width to <code>0</code>
      es: Ocultar columna actual cambiando su anchura a <code>0</code>
      it: Nascondi la colonna corrente, impostando la sua larghezza a <code>0</code>
  - cmd:
      en: <kbd>gv</kbd>
    desc:
      de: Alle Spalten aufdecken
      en: Unhide all columns
      es: Revelar todas las columnas
      it: Scopri tutte le colonne
- title:
    de: Filtern
    en: Filtering
    es: Filtrar
    it: Filtrare
  commands:
  - cmd:
      en: <kbd>"</kbd>
    desc:
      de: Neues Arbeitsblatt aus den ausgewählten Zeilen erstellen
      en: Create new sheet of selected rows
      es: Crear una hoja nueva con las filas seleccionadas
      it: Crea un nuovo foglio dalle righe selezionate
  - cmd:
      en: <kbd>gz"</kbd>
    desc:
      de: Neues Arbeitsblatt aus »Tiefenkopie« ausgewählter Zeilen erstellen
      en: Create new sheet with "deep copy" of selected rows
      es: Crear nueva hoja con copia "profunda" de las filas seleccionadas
      it: Crea una "deep copy" delle righe selezionate
- title:
    de: Daten zusammenfassen
    en: Summarizing data
    es: Resumir los datos
    it: Riepilogo dei dati
  commands:
  - cmd:
      en: <kbd>F</kbd>
    desc:
      de: Frequenzanalyse der <i>aktuellen Spalte</i>
      en: Create frequency table of <i>current column</i>
      es: Crear tabla de frecuencias de la <i>columna actual</i>
      it: Crea una tabella delle frequenze della <i>colonna corrente</i>
  - cmd:
      en: <kbd>gF</kbd>
    desc:
      de: Frequenzanalyse der <i>Indexspalte(n)</i>
      en: Create frequency table of <i>key columns</i>
      es: Crear tabla de frecuencias de las <i>columnas claves</i>
      it: Crea una tabella delle frequenze delle <i>colonne chiave</i>
  - cmd:
      en: <kbd>+</kbd> + <i>aggr</i>
      es: <kbd>+</kbd> + <i>agr</i>
    desc:
      de: Aggregator zur Spalte hinzufügen
      en: Add aggregator to column
      es: Añadir un agregador a la columna
      it: Aggiungi un aggregatore alla colonna
  - cmd:
      en: <kbd>z+</kbd> + <i>aggr</i>
      es: <kbd>z+</kbd> + <i>agr</i>
    desc:
      de: Aggregation einmalig durchführen
      en: Calculate one-time aggregation of column
      es: Calcular (una vez) el promedio, la suma, etc.
      it: Calcola l'aggregazione della colonna corrente
  - cmd:
      en: <kbd>I</kbd>
    desc:
      de: Zusammenfassende Statistiken für jede Spalte erstellen
      en: Create a "Describe Sheet," with summary stats for each column
      es: Crear "hoja de descripción" con estadísticas básica de cada columna
      it: Crea un foglio con le statistiche di riepilogo di ogni colonna
- title:
    de: Neue Spalten erstellen
    en: Creating new columns
    es: Crear nuevas columnas
    it: Creare nuove colonne
  commands:
  - cmd:
      en: <kbd>za</kbd>
    desc:
      de: Leere Spalte erstellen
      en: Create a blank column
      es: Crear columna vacía
      it: Crea una colonna vuota
  - cmd:
      en: <kbd>i</kbd>
    desc:
      de: Inkrementelle Spalte erstellen (1,2,3…)
      en: Create an increment column (1,2,3…)
      es: Crear columna que incrementa (1,2,3…)
      it: Crea una col. che incrementa (1,2,3…)
  - cmd:
      en: <kbd>=</kbd> + <i>expr</i>
    desc:
      de: Spalte mit dem Python-Ausdruck <i>expr</i> erstellen
      en: Create a new column from a Python <i>expr</i> evaluated against each row
      es: Crear columna nueva con resultado de <i>expr</i> en Python evaluada por cada fila
      it: Crea una nuova col. da una <i>Python expression</i> valutata su ogni riga
  - cmd:
      en: <kbd>:</kbd> + <i>regex</i>
    desc:
      de: Neue Spalte(n) durch Auftrennen der aktuellen Spalte durch <i>regex</i> erstellen
      en: Create new column(s) by splitting current column on <i>regex</i>
      es: Crear columna(s) dividiendo la columna actual de acuerdo con <i>regex</i>
      it: Crea nuova/e colonna/e dividendo la corrente in base a una <i>regex</i>
  - cmd:
      en: <kbd>;</kbd> + <i>regex</i>
    desc:
      de: Neue Spalte(n) mit <i>regex</i>-Gruppen aus der aktuellen Spalte erstellen
      en: Create new column(s) by extracting <i>regex</i> groups from current column
      es: Crear columna(s) extrayendo los grupos <i>regex</i> de la columna actual
      it: Crea nuova/e colonna/e estraendo gruppi di <i>regex</i> dalla colonna corrente
  - cmd:
      en: <kbd>'</kbd>
    desc:
      de: »Fixierte« Kopie der aktuellen Spalte mit evaluierten Zellen erstellen
      en: Create "frozen" copy of current column, with all cells evaluated
      es: Crear una copia "congelada" de la columna actual
      it: Crea una copia "congelata" della colonna corrente
- title:
    de: Daten umformen
    en: Reshaping data
    es: Cambiar la forma de los datos
    it: Rimodellamento dei dati
  commands:
  - cmd:
      en: <kbd>W</kbd>
    desc:
      de: Pivottabelle mit Indexspalte(n) als Zeilen und aktueller Spalte als Werte erzeugen
      en: Create pivot table sheet, with key column(s) as rows and current column as values
      es: Crear una tabla dinámica, con columnas claves como filas y columna actual como valores
      it: Crea una tabella pivot, con le colonna/e chiave come righe e la colonna corrente come valori
  - cmd:
      en: <kbd>M</kbd>
    desc:
      de: Mit Indexspalten als nicht-aufgeschmolzenen Werten »aufschmelzen«
      en: Create "melted" sheet, with key columns as non-melted values
      es: Crear una hoja "fundida" o "larga", respetando las columnas claves
      it: Crea un foglio "melted", trasformando le colonne non chiave in coppie chiave/valore
  - cmd:
      en: <kbd>T</kbd>
    desc:
      de: Arbeitsblatt durch Vertauschen von Zeilen und Spalten transponieren
      en: Create a transposed sheet, where columns become rows and v.v.
      es: Crear un hoja transpuesta, intercambiando las columnas y filas
      it: Crea un foglio trasposto, dove le colonne diventano righe e v.v.
- title:
    de: Zellen bearbeiten
    en: Editing cells
    es: Editar las celdas
    it: Modifica delle celle
  commands:
  - cmd:
      en: <kbd>e</kbd>
    desc:
      de: Aktuelle Zelle bearbeiten
      en: Begin editing current cell
      es: Empezar a editar la celda actual
      it: Modifica la cella corrente
  - cmd:
      en: <kbd>Enter</kbd>
    desc:
      de: Bearbeiten beenden
      en: Finish editing
      es: Terminar la edición
      it: Termina la modifica
  - cmd:
      en: <kbd>Ctrl-c</kbd>
    desc:
      de: Bearbeiten abbrechen
      en: Cancel editing
      es: Cancelar la edición
      it: Annulla la modifica
  - cmd:
      en: <kbd>Ctrl-a</kbd>
    desc:
      de: Zum Zellenanfang springen
      en: Move to beginning of cell
      es: Ir al pricipio de la celda
      it: Sposta a inizio cella
  - cmd:
      en: <kbd>Ctrl-e</kbd>
    desc:
      de: Zum Zellenende springen
      en: Move to end of cell
      es: Ir al final de la celda
      it: Sposta a fine cella
  - cmd:
      en: <kbd>Ctrl-k</kbd>
    desc:
      de: Von Zeiger bis Zeilenende löschen
      en: Clear contents from cursor's position to end of line
      es: Borrar el contenido que sigue al cursor
      it: Cancella dalla posizione attuale sino a fine linea
- title:
    de: Intern kopieren und einfügen
    en: Copying and pasting internally
    es: Copiar y pegar internamente
    it: Copia e incolla internamente
  commands:
  - cmd:
      en: <kbd>y</kbd>/<kbd>gy</kbd>
    desc:
      de: Aktuelle/ausgewählte Zeile(n) kopieren
      en: Copy current/selected row(s)
      es: Copiar la fila actual (o selección)
      it: Copia la riga corrente o selezionta(e)
  - cmd:
      en: <kbd>p</kbd>
    desc:
      de: Vorher kopierte Zeile(n) einfügen
      en: Paste previously copied rows
      es: Pegar filas previamente copiadas
      it: Incolla le righe copiate
  - cmd:
      en: <kbd>zy</kbd>/<kbd>zp</kbd>
    desc:
      de: Aktuelle Zelle kopieren/einfügen
      en: Copy/paste current cell
      es: Copiar/pegar la celda actual
      it: Copia/incolla la cella corrente
  - cmd:
      en: <kbd>gzy</kbd>/<kbd>gzp</kbd>
    desc:
      de: Ausgewählte Zeile(n) kopieren/einfügen
      en: Copy/paste column for selected rows
      es: Copiar/pegar la columna de filas seleccionadas
      it: Copia/incolla la colonna per righe selezionate
  - cmd:
      en: <kbd>zP</kbd>/<kbd>gzP</kbd>
    desc:
      de: <i>Zwischenablage</i> in aktuelle/ausgewählte Zelle(n) einfügen
      en: Paste from <i>clipboard</i> to current/selected cell(s)
      es: Pegar desde <i>portapapeles</i> a la celda actual (o selección)
      it: Incolla dagli appunti nelle celle correnti/selezionate
- title:
    de: Sonstiges
    en: Misc.
    es: Misceláneo
    it: Varie
  commands:
  - cmd:
      en: <kbd>!</kbd>
    desc:
      de: Aktuelle Spalte zur »Indexspalte« machen
      en: Make current column a "key" column
      es: Marcar la columna actual como "clave"
      it: Rendi colonna "chiave" quella attuale
  - cmd:
      en: <kbd>Ctrl-r</kbd>
    desc:
      de: Arbeitsblatt neu laden
      en: Reload sheet
      es: Recargar la hoja
      it: Ricarica il foglio
  - cmd:
      en: <kbd>Ctrl-^</kbd>
    desc:
      de: Aktuelles/vorheriges Arbeitsblatt auswählen
      en: Toggle between current and previous sheet
      es: Saltar entre hoja actual y anterior
      it: Passa dal foglio corrente al precedente
  - cmd:
      en: <kbd>Space</kbd>
    desc:
      de: Eingabe für Kommandos in Langform öffnen
      en: Open long-name command prompt
      es: Abrir entrada para comandos de "nombres largos"
      it: Apri il prompt esteso dei comandi
END

d = YAML.safe_load(vd_cheatsheet_yaml)

html_tags = Regexp.union('<kbd>', '</kbd>', '<i>', '</i>')

cheatsheet do
  title 'Visidata'
  docset_file_name 'Visidata'
  keyword 'vd'
  source_url 'https://cheat.kapeli.com'

  d.each do |e|
    category do
      id e["title"]["en"].gsub(html_tags, '')
      e["commands"].each do |c|
        entry do
          command c["cmd"]["en"].gsub(html_tags, '')
          name c['desc']['en']
        end
      end
    end
  end

  notes <<-'END'
    * Taken from [jsvine's cheat sheet](https://github.com/jsvine/visidata-cheat-sheet) and converted to Dash format.
    * In depth documentation available on [visidata.org](https://visidata.org) and the [Intro to Visidata](https://jsvine.github.io/intro-to-visidata/) tutorial.
  END
end