cheatsheet do
  title 'Atom Editor'
  docset_file_name 'Atom_Editor'
  keyword 'atom'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command '⌘ + SHIFT + p'
      name 'Toggle command palette'
    end
    entry do
      command '⌘ + /'
      name 'Toggle line/Selection comment'
    end
    entry do
      command 'CTRL + Space'
      name 'Show available auto-completions'
    end
  end

  category do
    id 'Find'
    entry do
      command '⌘ + f'
      name 'Find in file'
    end
    entry do
      command '⌘ + g'
      name 'Find next'
    end
    entry do
      command '⌘ + SHIFT + f'
      name 'Find in project'
    end
    entry do
      command '⌘ + e'
      name 'Use selection for find'
    end
  end

  category do
    id 'View/Window Manipulation'
    entry do
      command '⌘ + \\'
      name 'Toggle tree-view sidebar'
    end
    entry do
      command '⌘ + CTRL + f'
      name 'Toggle fullscreen'
    end
    entry do
      command '⌘ + k, left/right/up/down'
      name 'Split pane left/right/up/down'
    end
    entry do
      command '⌘ + k + left/right/up/down'
      name 'Focus pane left/right/up/down'
    end
  end

  category do
    id 'File Navigation'
    entry do
      command '⌘ + p'
      name 'Toggle file finder'
    end
    entry do
      command 'CTRL + g'
      name 'Goto line'
    end
    entry do
      command '⌘ + r'
      name 'Goto symbol'
    end
    entry do
      command '⌘ + SHIFT + { / }'
      name 'Previous/next file'
    end
    entry do
      command '⌘ + F2'
      name 'Set bookmark'
    end
    entry do
      command 'F2'
      name 'Goto next bookmark'
    end
  end

  category do
    id 'Folding'
    entry do
      command 'CTRL + ⌘ + [ / ]'
      name 'Fold/unfold current code block'
    end
    entry do
      command '⌘ + SHIFT + OPTION + [ / ]'
      name 'Fold/unfold all code blocks'
    end
    entry do
      command '⌘ + 1-9'
      name 'Fold code blocks at depth 1-9'
    end
  end

  category do
    id 'Word Manipulation'
    entry do
      command 'CTRL + t'
      name 'Transpose characters either side of cursor'
    end
    entry do
      command 'OPTION + BACKSPACE'
      name 'Delete text to beginning of word'
    end
    entry do
      command 'OPTION + DELETE'
      name 'Delete text to end of word'
    end
  end

  category do
    id 'Line Manipulation'
    entry do
      command '⌘ + ]/['
      name 'Indent/outdent current line'
    end
    entry do
      command '⌘ + ENTER'
      name 'Insert new line after current line'
    end
    entry do
      command '⌘ + SHIFT + ENTER'
      name 'Insert new line before current line'
    end
    entry do
      command 'SHIFT + CTRL  + k'
      name 'Delete current line'
    end
    entry do
      command '⌘ + CTRL + up/down'
      name 'Move current line up/down'
    end
    entry do
      command '⌘ + SHIFT + d'
      name 'Duplicate current line'
    end
    entry do
      command '⌘ + j'
      name 'Join current and next lines'
    end
  end

  category do
    id 'Selection'
    entry do
      command '⌘ + d'
      name 'Select current word/token'
    end
    entry do
      command '⌘ + l'
      name 'Select current line'
    end
    entry do
      command 'SHIFT + OPTION + left/right'
      name 'Select to beginning/end of word'
    end
    entry do
      command 'SHIFT + ⌘ + left/right'
      name 'Select to first/last character of line'
    end
    entry do
      command 'SHIFT + ⌘ + up/down'
      name 'Select to top/bottom of document'
    end
  end

  notes <<-'END'
    * Based on the cheat sheet from [Bugsnag](https://bugsnag.com/blog/atom-editor-cheat-sheet)
    * Converted by [Dominic Damian](https://github.com/domjitsu).
  END
end
