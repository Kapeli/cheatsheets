# encoding: utf-8
# http://www.postgresql.org/docs/9.3/static/app-psql.html
cheatsheet do
  title 'PostgreSQL CLI'
  docset_file_name 'PostgreSQL_CLI'
  keyword 'postgres'
  source_url 'http://cheat.kapeli.com'

  style '
  div.notes p code, div.td_notes p code {
    color: #00aaff;
    font-weight: 700;
  }
  '

  # Connecting
  # Getting Server & Terminal Information
  # Running Queries
  # Getting Database & Table Information
  # Retrieving Data from Tables
  # Generating Output

  category do
    id 'Connecting to PostgreSQL'

    entry do
      command 'sudo -u postgres psql postgres'
      name 'Change to Postgres user and open psql prompt'
    end

    entry do
      command 'psql -d my_database -U my_username -W'
      name 'Connect to `my_database` with role `my_username` and prompt for password. Requires md5 or password authentication.'
    end
  end

  category do
    id 'Creating, Removing, and Modifying Databases'

    entry do
      command 'CREATE DATABASE <database_name>;'
      name 'Create a database'
      td_notes '`<database_name>` = Name of database to create'
    end

    entry do
      command 'DROP DATABASE <database_name>;'
      name 'Drop a database'
      td_notes '`<database_name>` = Name of database to drop'
    end
  end

  category do
    id 'Retrieving Database Information'
  end

  category do
    id 'Connecting to & Interacting with Databases'

    entry do
      command '\c <database name>'
      name 'Connect to a database'
      td_notes '`<database_name>` = Name of database to connect to'
    end

    entry do
      command 'pg_dump <database name> > <outfile>'
      name 'Backup a database'
      td_notes '`<database_name>` = Name of database to backup'
      td_notes '`<outfile>` = Name of file to create'
    end

    entry do
      command '\c[onnect] {[DBNAME|- USER|- HOST|- PORT|-] | conninfo}'
      name 'Connect to new database (currently "postgres")'
    end
  end

  category do
    id 'Getting Server & Terminal Information'

    entry do
      command '\h <command_name>'
      name 'Help on syntax of SQL commands, * for all commands'
      td_notes '`<command_name>` = Name of command to get help with'
      td_notes 'If `*` or empty, list commands for which help is available'
    end

    entry do
      command '\encoding <encoding>'
      name 'Show or set client encoding'
      td_notes '`<encoding>` = **If set**, set the encoding to this value. **If empty**, show current encoding'
    end

    entry do
      command '\copyright'
      name 'Show PostgreSQL usage and distribution terms'
    end

    entry do
      command '\conninfo'
      name 'Display information about the current connection'
    end

    entry do
      command '\q'
      name 'Quit psql'
    end
  end

  category do
    id 'Variables'

    entry do
      command '\prompt [TEXT] NAME'
      name 'Prompt user to set internal variable'
    end

    entry do
      command '\set [NAME [VALUE]]'
      name 'Set internal variable, or list all if no parameters'
    end

    entry do
      command '\unset <name>'
      name 'Unset (delete) internal variable'
      td_notes '`<name>` = Name of internal variable to unset/delete'
    end

    entry do
      command '\setenv <name> [<value>]'
      name 'Set or unset environment variable'
      td_notes '`<name>` = Name of environment variable to unset/delete'
      td_notes '`<value>` = **If set**, set the value of environment variable `<name>` to this value'
    end
  end

  category do
    id 'Roles and Privileges'

    entry do
      command 'CREATE ROLE demorole1 WITH LOGIN ENCRYPTED PASSWORD \'password1\' CREATEDB;'
      name 'Create role'
    end
    entry do
      command 'ALTER ROLE demorole1 CREATEROLE CREATEDB REPLICATION SUPERUSER;'
      name 'Alter role'
    end
    entry do
      command 'DROP ROLE demorole1;'
      name 'Drop role'
    end
    entry do
      command 'GRANT ALL PRIVILEGES ON DATABASE demodb1 TO demorole1;'
      name 'Grant privileges'
    end

    entry do
      command '\dg[+]  [PATTERN]'
      name 'List roles'
      notes '(options: + = additional detail)'
    end

    entry do
      command '\du[+]  [PATTERN]'
      name 'List roles'
      notes '(options: + = additional detail)'
    end

    entry do
      command '\drds [PATRN1 [PATRN2]]'
      name 'List per-database role settings'
    end
  end


end


  # category do
  #   id 'General'

  #   entry do
  #     command '\g [FILE] or ;'
  #     name 'Execute query (and send results to file or |pipe)'
  #   end

  #   entry do
  #     command '\gset [PREFIX]'
  #     name 'Execute query and store results in psql variables'
  #   end

  #   entry do
  #     command '\watch [SEC]'
  #     name 'Execute query every SEC seconds'
  #   end
  # end

  # category do
  #   id 'Query Buffer'

  #   entry do
  #     command '\e [FILE] [LINE]'
  #     name 'Edit the query buffer (or file) with external editor'
  #   end

  #   entry do
  #     command '\ef [FUNCNAME [LINE]]'
  #     name 'Edit function definition with external editor'
  #   end

  #   entry do
  #     command '\p'
  #     name 'Show the contents of the query buffer'
  #   end

  #   entry do
  #     command '\r'
  #     name 'Reset (clear) the query buffer'
  #   end

  #   entry do
  #     command '\s [FILE]'
  #     name 'Display history or save it to file'
  #   end

  #   entry do
  #     command '\w FILE'
  #     name 'Write query buffer to file'
  #   end
  # end

  # category do
  #   id 'Input/Output'

  #   entry do
  #     command '\copy ...'
  #     name 'Perform SQL COPY with data stream to the client host'
  #   end

  #   entry do
  #     command '\echo [STRING]'
  #     name 'Write string to standard output'
  #   end

  #   entry do
  #     command '\i FILE'
  #     name 'Execute commands from file'
  #   end

  #   entry do
  #     command '\ir FILE'
  #     name 'As \i, but relative to location of current script'
  #   end

  #   entry do
  #     command '\o [FILE]'
  #     name 'Send all query results to file or |pipe'
  #   end

  #   entry do
  #     command '\qecho [STRING]'
  #     name 'Write string to query output stream (see \o)'
  #   end
  # end

  # category do
  #   id 'Formatting'

  #   entry do
  #     command '\a'
  #     name 'Toggle between unaligned and aligned output mode'
  #   end

  #   entry do
  #     command '\C [STRING]'
  #     name 'Set table title, or unset if none'
  #   end

  #   entry do
  #     command '\f [STRING]'
  #     name 'Show or set field separator for unaligned query output'
  #   end

  #   entry do
  #     command '\H'
  #     name 'Toggle HTML output mode (currently off)'
  #   end

  #   entry do
  #     command '\pset [NAME [VALUE]]'
  #     name 'Set table output option'
  #     notes '(NAME := {format|border|expanded|fieldsep|fieldsep_zero|footer|null|numericlocale|recordsep|recordsep_zero|tuples_only|title|tableattr|pager})'
  #   end

  #   entry do
  #     command '\t [on|off]'
  #     name 'Show only rows (currently off)'
  #   end

  #   entry do
  #     command '\T [STRING]'
  #     name 'Set HTML <table> tag attributes, or unset if none'
  #   end

  #   entry do
  #     command '\x [on|off|auto]'
  #     name 'Toggle expanded output (currently off)'
  #   end
  # end

  # category do
  #   id 'Connection'

  #   entry do
  #     command '\password [USERNAME]'
  #     name 'Securely change the password for a user'
  #   end
  # end

  # category do
  #   id 'Operating System'

  #   entry do
  #     command '\cd [DIR]'
  #     name 'Change the current working directory'
  #   end

  #   entry do
  #     command '\timing [on|off]'
  #     name 'Toggle timing of commands (currently off)'
  #   end

  #   entry do
  #     command '\! [COMMAND]'
  #     name 'Execute command in shell or start interactive shell'
  #   end
  # end

  # category do
  #   id 'Large Objects'

  #   entry do
  #     command '\lo_export LOBOID FILE'
  #     name 'Foo'
  #   end

  #   entry do
  #     command '\lo_import FILE [COMMENT]'
  #     name 'Foo'
  #   end

  #   entry do
  #     command '\lo_list'
  #     name 'Foo'
  #   end

  #   entry do
  #     command '\lo_unlink LOBOID'
  #     name 'Large object operations'
  #   end
  # end

  # category do
  #   id 'Informational'

  #   entry do
  #     command '\d[S+]'
  #     name 'List tables, views, and sequences'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\d[S+]  NAME'
  #     name 'Describe table, view, sequence, or index'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\da[S]  [PATTERN]'
  #     name 'List aggregates'
  #     notes '(options: S = show system objects)'
  #   end

  #   entry do
  #     command '\db[+]  [PATTERN]'
  #     name 'List tablespaces'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dc[S+] [PATTERN]'
  #     name 'List conversions'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dC[+]  [PATTERN]'
  #     name 'List casts'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dd[S]  [PATTERN]'
  #     name 'Show object descriptions not displayed elsewhere'
  #     notes '(options: S = show system objects)'
  #   end

  #   entry do
  #     command '\ddp    [PATTERN]'
  #     name 'List default privileges'
  #   end

  #   entry do
  #     command '\dD[S+] [PATTERN]'
  #     name 'List domains'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\det[+] [PATTERN]'
  #     name 'List foreign tables'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\des[+] [PATTERN]'
  #     name 'List foreign servers'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\deu[+] [PATTERN]'
  #     name 'List user mappings'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dew[+] [PATTERN]'
  #     name 'List foreign-data wrappers'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\df[antw][S+] [PATRN]'
  #     name 'List [only agg/normal/trigger/window] functions'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dF[+]  [PATTERN]'
  #     name 'List text search configurations'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dFd[+] [PATTERN]'
  #     name 'List text search dictionaries'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dFp[+] [PATTERN]'
  #     name 'List text search parsers'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dFt[+] [PATTERN]'
  #     name 'List text search templates'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\di[S+] [PATTERN]'
  #     name 'List indexes'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dl'
  #     name 'List large objects, same as \lo_list'
  #   end

  #   entry do
  #     command '\dL[S+] [PATTERN]'
  #     name 'List procedural languages'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dm[S+] [PATTERN]'
  #     name 'List materialized views'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dn[S+] [PATTERN]'
  #     name 'List schemas'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\do[S]  [PATTERN]'
  #     name 'List operators'
  #     notes '(options: S = show system objects)'
  #   end

  #   entry do
  #     command '\dO[S+] [PATTERN]'
  #     name 'List collations'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dp     [PATTERN]'
  #     name 'List table, view, and sequence access privileges'
  #   end

  #   entry do
  #     command '\ds[S+] [PATTERN]'
  #     name 'List sequences'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dt[S+] [PATTERN]'
  #     name 'List tables'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dT[S+] [PATTERN]'
  #     name 'List data types'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dv[S+] [PATTERN]'
  #     name 'List views'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dE[S+] [PATTERN]'
  #     name 'List foreign tables'
  #     notes '(options: S = show system objects, + = additional detail)'
  #   end

  #   entry do
  #     command '\dx[+]  [PATTERN]'
  #     name 'List extensions'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\dy [PATTERN]'
  #     name 'List event triggers'
  #   end

  #   entry do
  #     command '\l[+] [PATTERN]'
  #     name 'List databases'
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\sf[+] FUNCNAME'
  #     name "show a function's definition"
  #     notes '(options: + = additional detail)'
  #   end

  #   entry do
  #     command '\z [PATTERN]'
  #     name 'Same as \dp'
  #   end
  # end
