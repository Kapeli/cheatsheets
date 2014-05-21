cheatsheet do
  title 'Emerge'
  docset_file_name 'Emerge'
  keyword 'emerge'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Updating the Portage Tree'
    entry do
      command 'emerge --sync'
      name 'Sync the Portage tree using the mirrors by fetching the latest differences'
    end
    entry do
      command 'emerge-webrsync'
      name 'Sync the Portage tree using the mirrors by obtaining a Portage snapshot that is at most a day old'
    end
    entry do
      command 'eix-sync'
      name 'Sync the overlay and Portage tree using eix'
    end
  end

  category do
    id 'Searching for Software'
    entry do
      command 'emerge --search pdf'
      name 'Search for all packages who have "pdf" in their name'
    end
    entry do
      command 'emerge --searchdesc pdf'
      name 'Search through the descriptions as well'
    end
  end

  category do
    id 'Installing Software'
    entry do
      command 'emerge -pv package'
      name 'List what packages would be installed without installing them'
    end
    entry do
      command 'emerge =package-1.0'
      name 'Install a specific version of a package'
    end
  end

  category do
    id 'Upgrade'
    entry do
      command 'emerge -uDN world'
      name 'Upgrade the selected packages, dependencies and deep dependencies that are outdated or have USE flag changes'
    end
    entry do
      command 'emerge -uD --with-bdeps=y @world -a'
      name 'Update all packages explicitly installed, as well as their dependencies and their build dependencies, asking to proceed'
    end
    entry do
      command 'emerge -uDN --with-bdeps=y @world -a'
      name 'Like above, except changes to `USE` flags will also be considered in determining what needs to be re-built'
    end
  end

  category do
    id 'Removing Software'
    entry do
      command 'emerge -cav package'
      name 'Remove a package and the dependencies that no other packages depend on'
    end
    entry do
      command 'emerge -C package'
      name 'Remove a package but not its dependencies'
    end
    entry do
      command 'emerge -ca (--depclean --ask)'
      name 'Remove unneeded dependencies'
    end
  end
end
