# Adapted from https://culturedcode.com/things/mac/help/keyboard-shortcuts/

cheatsheet do
  title 'Things'               # Will be displayed by Dash in the docset list
  docset_file_name 'Things'    # Used for the filename of the docset
  source_url 'http://cheat.kapeli.com'
  keyword 'things'             # Used as the initial search keyword (listed in Preferences > Docsets)

  category do
    id 'Create new items'

    entry do
      command 'CMD+N'
      name 'Create a new to-do'
    end
    entry do
      command 'Space'
      name 'Create a new to-do below selection'
    end
    entry do
      command 'CMD+V'
      name 'Paste plain text to create new to-dos'
    end
    entry do
      command 'CMD+SHIFT+C'
      name 'Create a checklist in an open to-do'
    end
    entry do
      command 'CMD+SHIFT+N'
      name 'Create a new heading in a project'
    end
    entry do
      command 'CMD+ALT+N'
      name 'Create a new project'
    end
    entry do
      command 'CTRL+Space'
      name 'Open Quick Entry'
    end
    entry do
      command 'CTRL+ALT+Space'
      name 'Open Quick Entry with autofill'
    end
  end

  category do
    id 'Edit items'
    entry do
      command 'Return'
      name 'Open a to-do or project'
    end
    entry do
      command 'CMD+Return'
      command 'Esc'
      name 'Save and close'
    end
    entry do
      command 'CMD+D'
      name 'Duplicate a to-do or project'
    end
    entry do
      command 'CMD+C'
      name 'Copy a to-do or project'
    end
    entry do
      command 'CMD+V'
      name 'Paste a to-do or project'
    end
    entry do
      command 'CMD+.'
      name 'Complete selected items'
    end
    entry do
      command 'CMD+ALT+.'
      name 'Cancel selected items'
    end
    entry do
      command 'Delete'
      name 'Delete selected items'
    end
    entry do
      command 'CMD+L'
      name 'Move completed to Logbook'
    end
  end

  category do
    id 'Select items'

    entry do
      command 'Arrow Up'
      name 'Select item above'
    end
    entry do
      command 'Arrow Down'
      name 'Select item below'
    end
    entry do
      command 'SHIFT+Arrow Up'
      name 'Extend selection upwards'
    end
    entry do
      command 'SHIFT+Arrow Down'
      name 'Extend selection downwards'
    end
    entry do
      command 'ALT+SHIFT+Arrow Up'
      name 'Extend selection to the top'
    end
    entry do
      command 'ALT+SHIFT+Arrow Down'
      name 'Extend selection to the bottom'
    end
    entry do
      command 'CMD+A'
      name 'Select everything'
    end
  end

  category do
    id 'Move items'

    entry do
      command 'CMD+SHIFT+M'
      name 'Move selection to another list'
    end
    entry do
      command 'CMD+ALT+V'
      name 'Move copied to-dos and projects'
    end
    entry do
      command 'CMD+Arrow Up'
      name 'Move selection up'
    end
    entry do
      command 'CMD+Arrow Down'
      name 'Move selection down'
    end
    entry do
      command 'CMD+ALT+Arrow Up'
      name 'Move selection to top of list'
    end
    entry do
      command 'CMD+ALT+Arrow Down'
      name 'Move selection to bottom of list'
    end
  end

  category do
    id 'Edit dates'

    entry do
      command 'CMD+S'
      name 'Show Jump Start'
    end
    entry do
      command 'CMD+T'
      name 'Start Today'
    end
    entry do
      command 'CMD+E'
      name 'Start This Evening'
    end
    entry do
      command 'CMD+R'
      name 'Start Anytime'
    end
    entry do
      command 'CMD+O'
      name 'Start Someday'
    end
    entry do
      command 'CTRL+]'
      name 'Start date +1 day'
    end
    entry do
      command 'CTRL+['
      name 'Start date -1 day'
    end
    entry do
      command 'CTRL+SHIFT+]'
      name 'Start date + 1 week'
    end
    entry do
      command 'CTRL+SHIFT+['
      name 'Start date - 1 week'
    end
    entry do
      command 'CMD+SHIFT+D'
      name 'Direct access to set a Deadline'
    end
    entry do
      command 'CTRL+.'
      name 'Deadline +1 day'
    end
    entry do
      command 'CTRL+,'
      name 'Deadline -1 day'
    end
    entry do
      command 'CTRL+SHIFT+>'
      name 'Deadline +1 week'
    end
    entry do
      command 'CTRL+SHIFT+<'
      name 'Deadline -1 week'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'Make to-do or project repeating'
    end
  end

  category do
    id 'Control windows'

    entry do
      command 'CMD+CTRL+N'
      name 'Open new window'
    end
    entry do
      command 'CMD+SHIFT+`'
      name 'Cycle through open windows'
    end
    entry do
      command 'CMD+W'
      name 'Close current window'
    end
    entry do
      command 'CMD+ALT+W'
      name 'Close all windows'
    end
    entry do
      command 'CMD+/'
      name 'Hide or show sidebar'
    end
    entry do
      command 'CMD+ALT+T'
      name 'Hide or show toolbar'
    end
    entry do
      command 'CMD+CTRL+F'
      name 'Full screen'
    end
  end

  category do
    id 'Navigate'

    entry do
      command 'CMD+1'
      name 'Go to Inbox'
    end
    entry do
      command 'CMD+2'
      name 'Go to Today'
    end
    entry do
      command 'CMD+3'
      name 'Go to Upcoming'
    end
    entry do
      command 'CMD+4'
      name 'Go to Anytime'
    end
    entry do
      command 'CMD+5'
      name 'Go to Someday'
    end
    entry do
      command 'CMD+6'
      name 'Go to Logbook'
    end
    entry do
      command 'CMD+SHIFT+L'
      name 'Show to-do in list'
    end
    entry do
      command '→'
      name 'Enter a selected project'
    end
    entry do
      command '←'
      name 'Return to previous list'
    end
    entry do
      command 'ALT+Arrow Up'
      name 'Scroll to top'
    end
    entry do
      command 'ALT+Arrow Down'
      name 'Scroll to bottom'
    end
    entry do
      command 'CMD+CTRL+ALT+Arrow Up'
      name 'Navigate up in the sidebar'
    end
    entry do
      command 'CMD+CTRL+ALT+Arrow Down'
      name 'Navigate down in the sidebar'
    end
  end

  category do
    id 'Search'

    entry do
      command 'any key'
      name 'Start typing to begin a search'
    end
    entry do
      command 'CMD+F'
      name 'Find'
    end
  end

  category do
    id 'Tags'

    entry do
      command 'CMD+CTRL+T'
      name 'Open tag window'
    end
    entry do
      command 'Esc'
      name 'Close tag window'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'Direct access to add a tag'
    end
    entry do
      command 'CTRL+shortcut'
      name 'Toggle a tag for selected to-do'
    end
    entry do
      command 'CTRL+ALT+shortcut'
      name 'Filter for a tag'
    end
    entry do
      command 'CMD+click any tag'
      name 'Select multiple tags'
    end
    entry do
      command 'CTRL+Esc'
      name 'Destroy previous filter'
    end
  end

  category do
    id 'Links'

    entry do
      command 'CMD+ALT+Return'
      name 'Open a link'
    end
  end
end
