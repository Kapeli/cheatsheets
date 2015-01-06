cheatsheet do
  title 'PostgreSQL CLI'
  docset_file_name 'PostgreSQL_CLI'
  keyword 'postgres'
  source_url 'http://cheat.kapeli.com'

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
    id 'Working with Databases'

    entry do
      command '\c <database name>'
      name 'Connect to a database'
    end
    entry do
      command 'pg_dump <database name> > <outfile>'
      name 'Backup a database'
    end
    entry do
      command 'CREATE DATABASE demodb1;'
      name 'Create a database'
    end
    entry do
      command 'DROP DATABASE demodb1;'
      name 'Drop a database'
    end
  end

  category do
    id 'List Information'

    entry do
      command '\l'
      name 'List databases'
    end
    entry do
      command '\du'
      name 'List roles'
      notes 'Think "describe users"'
    end
    entry do
      command '\dt'
      name 'List tables in a connected DB'
      notes 'Think "describe tables"'
    end
    entry do
      command '\df'
      name 'List functions in a connected DB'
      notes 'Think "describe functions"'
    end
    entry do
      command '\df+'
      name 'List functions and show info (e.g. functions owner and source) in a connected DB'
    end
    entry do
      command '\d <tablename>'
      name 'List columns on table'
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
  end

end
