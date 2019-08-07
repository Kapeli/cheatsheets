cheatsheet do
  title 'Working Copy'
  docset_file_name 'workingcopy.rb'
  keyword 'workingcopy'
  source_url 'http://cheat.kapeli.com'
  introduction 'Keyboard shortcuts for **Working Copy**, the **best Git client for iOS**.'


  category do
    id 'General'

    entry do
      command 'CMD+,'
      name 'Settings'
    end
    entry do
      command 'CMD+CTRL+ALT+T'
      name 'Toggle Light/Dark Mode'
    end
    entry do
      command 'CMD+.'
      name 'Dismiss View'
      notes 'Used in logs, settings and other similar views.'
    end
    entry do
      command 'CMD+0'
      name 'Hide/show list view'
    end
  end

  category do
    id 'Logs'
    entry do
      command 'CMD+L'
      name 'View Logs'
    end
  end

  category do
    id 'Repositories'
    entry do
      command 'CMD+SHIFT+F'
      name 'Fetch'
    end
    entry do
      command 'CMD+SHIFT+L'
      name 'Pull'
    end
    entry do
      command 'CMD+ALT+F'
      name 'Search Files in Current Repository'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'View Repository List'
    end
    entry do
      command 'CMD+SHIFT+S'
      name 'View Repository Status'
    end
  end

  notes 'For more on how to use Working Copy go to the [Working Copy users\' guide](https://workingcopyapp.com/users-guide).'
end
