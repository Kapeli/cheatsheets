cheatsheet do
  title 'iTerm2 Cheatsheet'
  docset_file_name 'iTerm2'
  keyword 'iTerm2 terminal MacOS'

  introduction 'Cheatsheet for iTerm2'

  # A cheat sheet must consist of categories
  category do
    id "Editing"

    entry do
      command 'CMD+;'
      name 'Autocomplete'
    end
    entry do
      command 'CMD+H'
      name 'Paste history'
    end
    entry do
      command 'CMD+Alt+b'
      name 'Instant replay'
    end
    entry do
      command 'Ctrl+a'
      name 'To the begining of line'
    end
    entry do
      command 'Ctrl+e'
      name 'To the end of line'
    end
    entry do
      command 'Ctrl+f'
      name 'Forward one char'
    end
    entry do
      command 'Ctrl+b'
      name 'Backward one char'
    end
    entry do
      command 'Ctrl+d'
      name 'Delet current char'
    end
    entry do
      command 'Ctrl+h'
      name 'Delete previous char'
    end
    entry do
      command 'Ctrl+w'
      name 'Kill the word behind the point'
    end
    entry do
      command 'Ctrl+k'
      name 'Kill text from the point to the end of the line'
    end
    entry do
      command 'Ctrl+p'
      name 'Previous history'
    end
    entry do
      command 'Ctrl+r'
      name 'History reverse search'
    end

  end

  category do
    id 'Tab navigation'

    entry do
      command 'CMD+t'
      name 'Open new tab'
    end
    entry do
      command 'CMD+w'
      name 'Close current tab'
    end
    entry do
      command 'CMD+NUMBER'
      name 'Go to tab'
    end
    entry do
      command 'CMD+Shift+]'
      command 'CMD+n'
      command 'CMD+←'
      name 'Next tab'
    end
    entry do
      command 'CMD+Shift+['
      command 'CMD+p'
      command 'CMD+→'
      name 'Previous tab'
    end
    entry do
      command 'CMD+Alt+e'
      name 'iTerm2 Expose feature, showing all tabs'
    end
  end

  category do
    id 'Pane navigation'

    entry do
      command 'CMD+d'
      name 'Split pane left-right'
    end
    entry do
      command 'CMD+D'
      name 'Split pane top-bottom'
    end
    entry do
      command 'CMD+OPT+H'
      name 'Split pane left-right with new profile'
    end
    entry do
      command 'CMD+OPT+V'
      name 'Split pane top-bottom with new profile'
    end
    entry do
      command 'CMD+w'
      name 'Close current pane'
    end
    entry do
      command 'CMD+]'
      name 'Next pane'
    end
    entry do
      command 'CMD+['
      name 'Previous pane'
    end
    entry do
      command 'CMD+Alt+i'
      name 'Input to all panes in current tab'
    end
  end

  category do
    id 'Search'

    entry do
      command 'CMD+f'
      name 'Open search bar'
    end
    entry do
      command 'CMD+g'
      name 'Find next'
    end
  end

  category do
    id 'Mark'

    entry do
      command 'CMD+M'
      name 'Set Mark'
    end
    entry do
      command 'CMD+J'
      name 'Jump to Mark'
    end
  end

  category do
    id 'Clear screen'

    entry do
      command 'CMD+k'
      name 'Clear buff'
    end
    entry do
      command 'Ctrl+l'
      name 'Move current line to the top'
    end
  end

  category do
    id 'Font resizing & zooming'

    entry do
      command 'CMD+Alt+='
      name 'Toggle maximize window'
    end
    entry do
      command 'CMD+Enter'
      name 'Toggle full screen'
    end
    entry do
      command 'CMD+w'
      name 'Close current pane'
    end
    entry do
      command 'CMD++'
      name 'Make font larger'
    end
    entry do
      command 'CMD+-'
      name 'Make font smaller'
    end
  end


  #notes 'Some notes at the end of the cheat sheet'
end
