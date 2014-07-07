cheatsheet do
  title 'SQLite'
  docset_file_name 'SQLite'
  keyword 'sqlite'
  source_url 'http://cheat.kapeli.com'

  
  category do
      id 'Meta Commands'
      entry do
          command '.backup ?DB? FILE'
          name 'Backup DB (default "­mai­n") to FILE'
      end
      entry do
          command '.bail ON|OFF'
          name 'Stop after hitting an error. Default OFF'
      end
      entry do
          command '.databases'
          name 'List names and files of attached databases'
      end
      entry do
          command '.dump ?TABLE? ...'
          name 'Dump the database in an SQL text format.'
      end
      entry do
          command '.echo ON|OFF'
          name 'Turn command echo on or off'
      end
      entry do
          command '.exit'
          name 'Exit this program'
      end
      entry do
          command '.explain ?ON|OFF?'
          name 'Turn output mode suitable for EXPLAIN on or off.'
      end
      entry do
          command '.header(s) ON|OFF'
          name 'Turn display of headers on or off'
      end
      entry do
          command '.help'
          name 'Shows this inform­ation.'
      end
      entry do
          command '.import FILE TABLE'
          name 'Import data from FILE into TABLE'
      end
      entry do
          command '.indices ?TABLE?'
          name 'Show names of all indices'
      end
      entry do
          command '.load FILE ?ENTRY?'
          name 'Load an extension library'
      end
      entry do
          command '.log FILE|off'
          name 'Turn logging on or off. FILE can be stderr­/stdout'
      end
      entry do
          command '.mode MODE ?TABLE?'
          name 'Set output mode where MODE is one of: csv, column, html, insert, line, list, tabs, tcl'
      end
      entry do
          command '.nullvalue STRING'
          name 'Print STRING in place of NULL values'
      end
      entry do
          command '.output FILENAME'
          name 'Send output to FILENAME'
      end
      entry do
          command '.output stdout'
          name 'Send output to the screen'
      end
      entry do
          command '.prompt MAIN CONTINUE'
          name 'Replace the standard prompts'
      end
      entry do
          command '.quit'
          name 'Exit this program'
      end
      entry do
          command '.read FILENAME'
          name 'Execute SQL in FILENAME'
      end
      entry do
          command '.restore ?DB? FILE'
          name 'Restore content of DB (default "­mai­n") from FILE'
      end
      entry do
          command '.schema ?TABLE?'
          name 'Show the CREATE statements'
      end
      entry do
          command '.separator STRING'
          name 'Change separator used by output mode and .import'
      end
      entry do
          command '.show'
          name 'Show the current values for various settings'
      end
      entry do
          command '.stats ON|OFF'
          name 'Turn stats on or off'
      end
      entry do
          command '.tables ?TABLE?'
          name 'List names of tables'
      end
      entry do
          command '.timeout MS'
          name 'Try opening locked tables for MS millis­econds'
      end
      entry do
          command '.width NUM1 NUM2 ...'
          name 'Set column widths for "­col­umn­" mode'
      end
      entry do
          command '.timer ON|OFF'
          name 'Turn the CPU timer measur­ement on or off'
      end      
  end

  category do
      id 'Options'
      entry do
          command '-init file'
          name 'Read and execute commands from file , which can contain a mix of SQL statements and meta-c­omm­ands.'
      end
      entry do
          command '-echo'
          name 'Print commands before execution.'
      end
      entry do
          command '-[no]h­eader'
          name 'Turn headers on or off.'
      end
      entry do
          command '-bail'
          name 'Stop after hitting an error.'
      end
      entry do
          command '-inter­active'
          name 'Force intera­ctive I/O .'
      end
      entry do
          command '-batch'
          name 'Force batch I/O .'
      end
      entry do
          command '-column'
          name 'Query results will be displayed in a table like form, using whitespace characters to separate the columns and align the output.'
      end
      entry do
          command '-csv'
          name 'Set output mode to CSV (comma separated values).'
      end
      entry do
          command '-html'
          name 'Query results will be output as simple HTML tables.'
      end
      entry do
          command '-line'
          name 'Query results will be displayed with one value per line, rows separated by a blank line. Designed to be easily parsed by scripts or other programs'
      end
      entry do
          command '-list'
          name 'Query results will be displayed with the separator (|, by default) character between each field value. The default.'
      end
      entry do
          command '-separator separator'
          name 'Set output field separator. Default is "|".'
      end
      entry do
          command '-stats'
          name 'Print memory stats before each finalize.'
      end
      entry do
          command '-nullvalue string'
          name 'Set string used to represent NULL values. Default is '' (empty string).'
      end
      entry do
          command '-version'
          name 'Show SQLite version.'
      end
      entry do
          command '-vfs name'
          name 'Use name as the default VFS .'
      end
      entry do
          command '-help'
          name 'Show help on options and exit.'
      end
  end
  
  notes <<-'END'
  * Based on [sqlite3 cheat sheet by richardjh](http://www.cheatography.com/richardjh/cheat-sheets/sqlite3/)
  END
  
end
