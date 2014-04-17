cheatsheet do
  title 'Postgres CLI'
  docset_file_name 'postgres_cli'
  keyword 'postgres'

  introduction 'Common commands on the Postgres CLI (psql)'  # Optional, can contain Markdown or HTML

  category do
    id 'Connecting to Postgres'

    entry do
      command 'sudo -u postgres psql postgres'
      name 'Change to Postgres user and open psql prompt'
    end
  end

  category do
    id 'Working with databases'

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
      name 'drop a database'
    end
  end

  category do
    id 'List Information'  # Must be unique and is used as title of the category

    entry do
      command '\l'
      name 'List Databases'
    end
    entry do
      command '\du'
      name 'List Roles'
      notes 'Think "describe users"'
    end
    entry do
      command '\dt'
      name 'List Tables in a Connected DB'
      notes 'Think "describe tables"'
    end
    entry do
      command '\d <tablename>'
      name 'List Columns on Table'
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