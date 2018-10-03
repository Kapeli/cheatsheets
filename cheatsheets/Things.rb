# Adapted from https://culturedcode.com/things/mac/help/keyboard-shortcuts/

cheatsheet do
  title 'Things'               # Will be displayed by Dash in the docset list
  docset_file_name 'Things'    # Used for the filename of the docset
  keyword 'things'             # Used as the initial search keyword (listed in Preferences > Docsets)

  category do
    id 'Create new items'

    entry do
      command '⌘ Cmd + N'
      name 'Create a new to-do'
    end
    entry do
      command 'Space'
      name 'Create a new to-do below selection'
    end
    entry do
      command '⌘ Cmd + V '
      name 'Paste plain text to create new to-dos'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + C'
      name 'Create a checklist in an open to-do'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + N'
      name 'Create a new heading in a project'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + N'
      name 'Create a new project'
    end
    entry do
      command 'Ctrl + Space'
      name 'Open Quick Entry'
    end
    entry do
      command '⌥ Opt + Ctrl + Space'
      name 'Open Quick Entry with Autofill'
    end
  end

  category do
    id 'Edit items'
    entry do
      command '↩ Return'
      name 'Open a to-do or project'
    end
    entry do
      command '⌘ Cmd + ↩ Return'
      command 'Esc'
      name 'Save and close'
    end
    entry do
      command '⌘ Cmd + D'
      name 'Duplicate a to-do or project'
    end
    entry do
      command '⌘ Cmd + C'
      name 'Copy a to-do or project'
    end
    entry do
      command '⌘ Cmd + V'
      name 'Paste a to-do or project'
    end
    entry do
      command '⌘ Cmd + .'
      name 'Complete selected items'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + .'
      name 'Cancel selected items'
    end
    entry do
      command 'Delete'
      name 'Delete selected items'
    end
    entry do
      command '⌘ Cmd + L'
      name 'Move completed to Logbook'
    end
  end

  category do
    id 'Select items'

    entry do
      command '↑'
      name 'Select item above'
    end
    entry do
      command '↓'
      name 'Select item below'
    end
    entry do
      command '⇧ Shift + ↑'
      name 'Extend selection upwards'
    end
    entry do
      command '⇧ Shift + ↓'
      name 'Extend selection downwards'
    end
    entry do
      command '⌥ Opt + ⇧ Shift + ↑'
      name 'Extend selection to the top'
    end
    entry do
      command '⌥ Opt + ⇧ Shift + ↓'
      name 'Extend selection to the bottom'
    end
    entry do
      command '⌘ Cmd + A'
      name 'Select everything'
    end
  end

  category do
    id 'Move items'

    entry do
      command '⌘ Cmd + ⇧ Shift + M	'
      name 'Move selection to another list'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + V	'
      name 'Move copied to-dos and projects'
    end
    entry do
      command '⌘ Cmd + ↑	'
      name 'Move selection up'
    end
    entry do
      command '⌘ Cmd + ↓	'
      name 'Move selection down'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + ↑	'
      name 'Move selection to top of list'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + ↓	'
      name 'Move selection to bottom of list    '
    end
  end

  category do
    id 'Edit dates'

    entry do
      command '⌘ Cmd + S'
      name 'Show Jump Start'
    end
    entry do
      command '⌘ Cmd + T'
      name 'Start Today'
    end
    entry do
      command '⌘ Cmd + E'
      name 'Start This Evening'
    end
    entry do
      command '⌘ Cmd + R'
      name 'Start Anytime'
    end
    entry do
      command '⌘ Cmd + O'
      name 'Start Someday'
    end
    entry do
      command 'Ctrl + ]'
      name 'Start date +1 day'
    end
    entry do
      command 'Ctrl + ['
      name 'Start date -1 day'
    end
    entry do
      command 'Ctrl + ⇧ Shift + ]'
      name 'Start date + 1 week'
    end
    entry do
      command 'Ctrl + ⇧ Shift + ['
      name 'Start date - 1 week'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + D'
      name 'Direct access to set a Deadline'
    end
    entry do
      command 'Ctrl + .'
      name 'Deadline +1 day'
    end
    entry do
      command 'Ctrl + ,'
      name 'Deadline -1 day'
    end
    entry do
      command 'Ctrl + ⇧ Shift + >'
      name 'Deadline +1 week'
    end
    entry do
      command 'Ctrl + ⇧ Shift + <'
      name 'Deadline -1 week'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + R'
      name 'Make to-do or project repeating'
    end
  end

  category do
    id 'Control windows'

    entry do
      command '⌘ Cmd + Ctrl + N'
      name 'Open new window'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + `'
      name 'Cycle through open windows'
    end
    entry do
      command '⌘ Cmd + W'
      name 'Close current window'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + W'
      name 'Close all windows'
    end
    entry do
      command '⌘ Cmd + /'
      name 'Hide or show sidebar'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + T'
      name 'Hide or show toolbar'
    end
    entry do
      command '⌘ Cmd + Ctrl + F'
      name 'Full screen    '
    end
  end

  category do
    id 'Navigate'

    entry do
      command '⌘ Cmd + 1'
      name 'Go to Inbox'
    end
    entry do
      command '⌘ Cmd + 2'
      name 'Go to Today'
    end
    entry do
      command '⌘ Cmd + 3'
      name 'Go to Upcoming'
    end
    entry do
      command '⌘ Cmd + 4'
      name 'Go to Anytime'
    end
    entry do
      command '⌘ Cmd + 5'
      name 'Go to Someday'
    end
    entry do
      command '⌘ Cmd + 6'
      name 'Go to Logbook'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + L'
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
      command '⌥ Opt + ↑'
      name 'Scroll to top'
    end
    entry do
      command '⌥ Opt + ↓'
      name 'Scroll to bottom'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + Ctrl + ↑'
      name 'Navigate up in the sidebar'
    end
    entry do
      command '⌘ Cmd + ⌥ Opt + Ctrl + ↓'
      name 'Navigate down in the sidebar    '
    end
  end

  category do
    id 'Search'

    entry do
      command 'any key'
      name 'Start typing to begin a search'
    end
    entry do
      command '⌘ Cmd + F'
      name 'Find'
    end
  end

  category do
    id 'Tags'

    entry do
      command '⌘ Cmd + Ctrl + T'
      name 'Open tag window'
    end
    entry do
      command 'Esc'
      name 'Close tag window'
    end
    entry do
      command '⌘ Cmd + ⇧ Shift + T'
      name 'Direct access to add a tag'
    end
    entry do
      command 'Ctrl + shortcut'
      name 'Toggle a tag for selected to-do'
    end
    entry do
      command '⌥ Opt + Ctrl + shortcut'
      name 'Filter for a tag'
    end
    entry do
      command '⌘ Cmd + click any tag'
      name 'Select multiple tags'
    end
    entry do
      command 'Ctrl + Esc'
      name 'Destroy previous filter  '
    end
  end

  category do
    id 'Links'

    entry do
      command '⌘ Cmd + ⌥ Opt + ↩ Return'
      name 'Open a link'
    end
  end
end
