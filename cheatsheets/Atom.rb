cheatsheet do
  title 'Atom'
  docset_file_name 'Atom'
  keyword 'atom'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command 'CMD+SHIFT+P'
      name 'Toggle command palette'
    end
    entry do
      command 'CMD+/'
      name 'Comment line or selection'
    end
    entry do
      command 'CTRL+Space'
      name 'Show available auto-completions'
    end
  end

  category do
    id 'Find'
    entry do
      command 'CMD+F'
      name 'Find in file'
    end
    entry do
      command 'CMD+G'
      name 'Find next'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'Find in project'
    end
    entry do
      command 'CMD+E'
      name 'Use selection for find'
    end
  end

  category do
    id 'View / Window Manipulation'
    entry do
      command 'CMD+\\'
      name 'Toggle tree-view sidebar'
    end
    entry do
      command 'CMD+CTRL+F'
      name 'Toggle fullscreen'
    end
    entry do
      command 'CMD+K, Arrow Key'
      name 'Split pane left, right, up or down'
    end
    entry do
      command 'CMD+K+Arrow Key'
      name 'Focus pane left, right, up or down'
    end
  end

  category do
    id 'File Navigation'
    entry do
      command 'CMD+P'
      name 'Toggle file finder'
    end
    entry do
      command 'CTRL+G'
      name 'Go to line'
    end
    entry do
      command 'CMD+R'
      name 'Go to symbol'
    end
    entry do
      command 'CMD+SHIFT+}'
      name 'Next file'
    end
    entry do
      command 'CMD+SHIFT+{'
      name 'Previous file'
    end
    entry do
      command 'CMD+F2'
      name 'Set bookmark'
    end
    entry do
      command 'F2'
      name 'Go to next bookmark'
    end
  end

  category do
    id 'Folding'
    entry do
      command 'CMD+CTRL+['
      name 'Fold current code block'
    end
    entry do
      command 'CMD+CTRL+]'
      name 'Unfold current code block'
    end
    entry do
      command 'CMD+SHIFT+ALT+['
      name 'Fold all code blocks'
    end
    entry do
      command 'CMD+SHIFT+ALT+]'
      name 'Unfold all code blocks'
    end
    entry do
      command 'CMD+1-9'
      name 'Fold code blocks at depth 1-9'
    end
  end

  category do
    id 'Word Manipulation'
    entry do
      command 'CTRL+T'
      name 'Transpose characters either side of cursor'
    end
    entry do
      command 'ALT+Backspace'
      name 'Delete text to beginning of word'
    end
    entry do
      command 'ALT+Delete'
      name 'Delete text to end of word'
    end
  end

  category do
    id 'Line Manipulation'
    entry do
      command 'CMD+]'
      name 'Indent current line'
    end
    entry do
      command 'CMD+['
      name 'Outdent current line'
    end
    entry do
      command 'CMD+Enter'
      name 'Insert newline after current line'
    end
    entry do
      command 'CMD+SHIFT+Enter'
      name 'Insert newline before current line'
    end
    entry do
      command 'CTRL+SHIFT+K'
      name 'Delete current line'
    end
    entry do
      command 'CMD+CTRL+Arrow Up'
      name 'Move current line up'
    end
    entry do
      command 'CMD+CTRL+Arrow Down'
      name 'Move current line down'
    end
    entry do
      command 'CMD+SHIFT+D'
      name 'Duplicate current line'
    end
    entry do
      command 'CMD+J'
      name 'Join current and next lines'
    end
  end

  category do
    id 'Selection'
    entry do
      command 'CMD+D'
      name 'Select current word/token'
    end
    entry do
      command 'CMD+L'
      name 'Select current line'
    end
    entry do
      command 'SHIFT+ALT+Arrow Left'
      name 'Select to beginning of word'
    end
    entry do
      command 'SHIFT+ALT+Arrow Right'
      name 'Select to end of word'
    end
    entry do
      command 'CMD+SHIFT+Arrow Left'
      name 'Select to first character of line'
    end
    entry do
      command 'CMD+SHIFT+Arrow Right'
      name 'Select to last character of line'
    end
    entry do
      command 'CMD+SHIFT+Arrow Up'
      name 'Select to beginning of document'
    end
    entry do
      command 'CMD+SHIFT+Arrow Down'
      name 'Select to end of document'
    end
  end

  notes <<-'END'
    * Based on a cheat sheet from [Bugsnag](https://bugsnag.com/blog/atom-editor-cheat-sheet).
    * Converted by [Dominic Damian](https://github.com/domjitsu).
  END
end
