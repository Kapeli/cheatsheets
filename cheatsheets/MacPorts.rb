# coding: utf-8
cheatsheet do
  title 'MacPorts'
  docset_file_name 'MacPorts'
  keyword 'port'
  source_url 'http://cheat.kapeli.com'

  introduction 'This cheat sheet demonstrates the most common everyday commands for MacPorts. It does not detail more technical aspects such as installing MacPorts itself, or less commonly used commands.  For a more detailed listing, see the [MacPorts Guide](https://guide.macports.org/).'

  category do
    id 'Information'

    entry do
      name 'Search directory for ports'
      notes "
      ```
      port search [--name] [--regex] '<searchtext>'
      ```
      This command normally searches both the name and description of ports.  The ```--name``` switch limits search to name only.

      The ```--regex``` switch treats the search string as a Regular Expression.

      You can also use wildcards to limit searches to (for example) only ports that begin with a string, e.g. 'php*'."
    end

    entry do
      name 'Get information about a port'
      notes "
      ```
      port info <portname>
      ```"
    end

    entry do
      name 'List installed ports'
      notes "
      For just a list of the ports you have explicitly installed:
      
      ```
      port echo requested
      ```
      For a list of everything installed by MacPorts, including all dependencies:
      
      ```
      port installed
      ```"
    end

  end

  category do
    id 'Install/Uninstall Ports'

    entry do
      name 'Install a port'
      notes "
        ```
        [sudo] install <portname>
        ```"
    end

    entry do
      name 'If an install fails'
      notes "
      If a port install fails for some reason, clean up the attempt before trying again.

      ```
      [sudo] port clean <portname>
      ```
      If you believe the downloaded files are corrupt, you can also delete any files downloaded for that port:

      ```
      [sudo] port clean --dist <portname>
      ```"
    end

    entry do
      name 'Uninstall a port'
      notes "
        Note: This does not uninstall dependencies that were installed with this port.  To remove unused dependencies, see the Maintenance section.

      ```
      [sudo] uninstall <portname>
      ```"
    end

  end

  category do
    id 'Updates'

    entry do
      name 'Update MacPorts and directory of available ports'
      notes "
      It's recommended you do this every time you start using MacPorts on any given day.

      ```
      [sudo] port selfupdate
      ```"
    end

    entry do
      name 'List ports that have available updates'
      notes "
      ```
      port outdated
      ```"
    end

    entry do
      name 'Update all ports'
      notes "
      ```
      [sudo] port upgrade outdated
      ```"
    end

    entry do
      name 'Update a specific port'
      notes "
      ```
      [sudo] port upgrade <portname>
      ```"
    end

  end

  category do
    id 'Cleanup/Maintenance'

    entry do
      name 'List inactive ports'
      notes "
      By default, upgrading ports in MacPorts does not remove the older versions. This is a safety measure to ensure you can go back to a working and tested version in case an update goes wrong. Use

      ```
      port installed inactive
      ```
      to get a list of inactive ports you likely no longer need."
    end

    entry do
      name 'Uninstall all inactive ports'
      notes "
      To save disk space, you should periodically uninstall any old versions you no longer need.
      
      ```
      [sudo] port uninstall inactive
      ```"
    end

    entry do
      name 'List no-longer needed dependencies (leaves)'
      notes "
      After a while of using MacPorts, installing and uninstalling ports, packages that have been automatically installed as dependencies for other ports are left behind, even though they are no longer necessary. Ports that have not been manually installed (“requested”) and do not have any dependents are called “leaves” and can be identified using the leaves pseudo-port.  To list leaves

      ```
      port echo leaves
      ```"
    end

    entry do
      name 'Uninstall no-longer needed dependencies (leaves)'
      notes "
      ```
      [sudo] port uninstall leaves
      ```
      Note that the uninstallation can cause new ports to become leaves. To uninstall all leaves, you would have to repeat the process until port echo leaves comes back empty. To automate this, you can use ```--follow-dependencies``` when uninstalling.

      ```
      [sudo] port uninstall --follow-dependencies leaves
      ```

      To go through this process interactively so you can make sure you're not uninstalling anything you want to keep, you can install the port_cutleaves port. After installation, run it with

      ```
      [sudo] port_cutleaves
      ```"
    end

  end

  notes <<-'END'
    * Based on the official guide from [MacPorts.org](https://guide.macports.org/).
    * Cheat sheet by [Stephen Rider](http://striderweb.com/nerdaphernalia).
  END
end
