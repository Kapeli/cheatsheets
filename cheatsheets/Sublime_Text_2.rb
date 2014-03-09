cheatsheet do
  title 'Sublime Text 2'   
  docset_file_name 'Sublime_Text_2'  
  keyword 'sublime' 
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Edit'
    entry do
      command 'CMD+SHIFT+V'
      name 'Paste and indent'
    end
    entry do
      command 'CMD+]'
      name 'Indent'
    end
    entry do
      command 'CMD+['
      name 'Unindent'
    end
    entry do
      command 'CMD+CTRL+Up Arrow'
      name 'Swap line up'
    end
    entry do
      command 'CMD+CTRL+Down Arrow'
      name 'Swap line down'
    end    
    entry do
      command 'CMD+SHIFT+D'
      name 'Duplicate line'
    end
    entry do
      command 'CMD+J'
      name 'Join lines'
    end
    entry do
      command 'CMD+Left Arrow'
      name 'Beginning of line'
    end
    entry do
      command 'CMD+Right Arrow'
      name 'End of line'
    end
    entry do
      command 'CMD+/'
      name 'Toggle comment'
    end
    entry do
      command 'CMD+CTRL+/'
      name 'Toggle comment block'
    end
    entry do
      command 'CTRL+SHIFT+K'
      name 'Delete line'
    end
    entry do
      command 'CTRL+K'
      name 'Delete to end'
    end
    entry do
      command 'CTRL+T'
      name 'Transpose'
    end
    entry do
      command 'CMD+ALT+.'
      name 'Close tag'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'Expand selection to tag'
    end
    entry do
      command 'CTRL+SHIFT+W'
      name 'Wrap selection with tag'
    end
    entry do
      command 'CMD+ALT+Q'
      name 'Wrap paragraph at ruler'
    end
    entry do
      command 'F5'
      name 'Sort lines'
    end
    entry do
      command 'CTRL+F5'
      name 'Sort lines (case sensitive)'
    end
    entry do
      command 'CMD+ALT+T'
      name 'Special characters'
    end

  end


  category do
    id 'Selection'
    entry do
      command 'CMD+SHIFT+L'
      name 'Split into lines'
    end
    entry do
      command 'CTRL+SHIFT+Up Arrow'
      name 'Add previous line'
    end
    entry do
      command 'CTRL+SHIFT+Down Arrow'
      name 'Add next line'
    end
    entry do
      command 'Esc'
      name 'Single selection'
      notes 'Cancel multiple selections'
    end
    entry do
      command 'CMD+L'
      name 'Expand selection to line'
    end
    entry do
      command 'CMD+D'
      name 'Expand selection to words'
    end
    entry do
      command 'CTRL+SHIFT+M'
      name 'Expand selection to brackets'
    end
    entry do
      command 'CMD+SHIFT+J'
      name 'Expand selection to indentation'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'Expand selection to tag'
    end
    
  end

  category do
    id 'Find'
    entry do
      command 'CMD+F'
      name 'Find'
    end
    entry do
      command 'CMD+G'
      name 'Find next'
    end
    entry do
      command 'CMD+SHIFT+G'
      name 'Find previous'
    end
    entry do
      command 'CMD+I'
      name 'Incremental find'
    end
    entry do
      command 'CMD+ALT+F'
      name 'Replace'
    end
    entry do
      command 'CMD+ALT+E'
      name 'Replace next'
    end
    entry do
      command 'CMD+ALT+G'
      name 'Quick find'
    end
    entry do
      command 'CMD+CTRL+G'
      name 'Quick find all'
    end
    entry do
      command 'CMD+D'
      name 'Quick add next'
    end
    entry do
      command 'CMD+E'
      name 'Use selection for find'
    end
    entry do
      command 'CMD+SHIFT+E'
      name 'Use selection for replace'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'Find in files'
    end
  end

  category do
    id 'View'
    entry do
      command 'CTRL+`'
      name 'Show console'
    end
     entry do
      command 'CMD+CTRL+F'
      name 'Enter full screen'
    end
    entry do
      command 'CMD+CTRL+SHIFT+F'
      name 'Enter distraction free mode'
    end
    entry do
      command 'CMD+ALT+1-4'
      name 'Single layout'
    end
    entry do
      command 'CMD+ALT+2-4'
      name '2-4 column layout'
    end
    entry do
      command 'CMD+SHIFT+ALT+2-3'
      name '2-3 row layout'
    end
    entry do
      command 'CMD+ALT+5'
      name 'Grid layout'
    end
    entry do
      command 'CTRL+1'
      name 'Group 1'
    end
     entry do
      command 'CTRL+SHIFT+1'
      name 'Group 2'
    end
     entry do
      command 'F6'
      name 'Spell check'
    end
  end

  category do
    id 'Go to'
    entry do
      command 'CMD+P'
      name 'Go to anything'
    end
    entry do
      command 'CMD+R'
      name 'Go to symbol'
    end
    entry do
      command 'CTRL+G'
      name 'Go to line'
    end
    entry do
      command 'CMD+ALT+Right Arrow'
      name 'Next file'
    end
    entry do
      command 'CMD+ALT+Left Arrow'
      name 'Previous file'
    end
    entry do
      command 'CMD+ALT+Up Arrow'
      name 'Switch header / implementation'
    end
    entry do
      command 'CMD+1'
      name 'Go to first file'
    end
    entry do
      command 'CTRL+L'
      name 'Scroll to selection'
    end
    entry do
      command 'CTRL+ALT+Up Arrow'
      name 'Scroll line up'
    end
    entry do
      command 'CTRL+ALT+Down Arrow'
      name 'Scroll line down'
    end
    entry do
      command 'CMD+F2'
      name 'Toggle bookmark'
    end
    entry do
      command 'F2'
      name 'Next bookmark'
    end
    entry do
      command 'SHIFT+F2'
      name 'Previous bookmark'
    end
    entry do
      command 'CMD+SHIFT+F2'
      name 'Clear bookmarks'
    end
    entry do
      command 'CTRL+M'
      name 'Jump to matching bracket'
    end
  end

  category do
    id 'Tools'
    entry do
      command 'CMD+SHIFT+P'
      name 'Command palette'
    end
    entry do
      command 'CTRL+ALT+V'
      name 'View in browser'
    end
    entry do
      command 'CMD+B'
      name 'Build'
    end
    entry do
      command 'CTRL+Q'
      name 'Record macro'
    end
    entry do
      command 'CTRL+R'
      name 'Run'
    end
    entry do
      command 'CTRL+ALT+R'
      name 'Run with arguments'
    end
    entry do
      command 'CTRL+D'
      name 'Debug'
    end
    entry do
      command 'CTRL+ALT+D'
      name 'Debug with arguments'
    end
  end

  category do
    id 'Project'
    entry do
      command 'CMD+CTRL+P'
      name 'Switch project window'
    end
  end
end

