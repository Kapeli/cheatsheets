# generates cheatsheet via https://github.com/Kapeli/cheatset
# `$ cheatset generate puma-dev.rb`
cheatsheet do
  title 'puma-dev'               # Will be displayed by Dash in the docset list
  docset_file_name 'puma-dev'    # Used for the filename of the docset
  keyword 'puma-dev'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction "[puma-dev](https://github.com/puma/puma-dev) serves rack apps in development, using puma.  Similar to pow.cx. [Why not use pow?](https://github.com/puma/puma-dev#why-not-just-use-pow)"

  # A cheat sheet must consist of categories
  # You can use Markdown or HTML in 'name' or 'notes'.
  category do
    id 'Setup'  # Must be unique and is used as title of the category

    entry do
      command 'Installation/Setup'
      notes 'See the website for installation instructions: https://github.com/puma/puma-dev'
    end
    entry do
      command 'puma-dev link [-n name] [dir]'
      name '"Register" your app with puma-dev'
      notes 'Creates a symlink to your app directory in your puma-dev directory (~/.puma-dev by default).'
    end
    entry do
      command 'pkill -USR1 puma-dev'
      name 'Purge: stop all the apps'
      notes "For resource issues or because an app isn't restarting properly"
    end
    entry do
      command 'puma-dev -uninstall'
      name 'Uninstall (OSX only)'
    end
  end

  category do
    id 'Debug'
    entry do
      command 'curl -H "Host: puma-dev" localhost/status'
      name 'Status'
      notes "Returns status of puma-dev."
    end
    entry do
      command 'curl -H "Host: puma-dev" localhost/events'
      name 'Event log'
      notes "Returns a log of puma-dev events."
    end
  end
end
