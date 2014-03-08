cheatsheet do
  title 'Sublime Text 2'             
  docset_file_name 'Sublime'  
  keyword 'Sublime'           
  introduction 'Cheat Sheet for Sublime Text 2: This is the basic/default shortcuts for Sublime Text 2.'
 
  category do
    id 'File'  

    entry do
      command 'CMD+H'
      name 'hide sublime text 2'
    end
    entry do
      command 'CMD+ALT+H'
      name 'hide others'
    end
    entry do
      command 'CMD+Q'
      name 'quit sublime text 2'
    end
    entry do
      command 'CMD+N'
      name 'new file'
    end
    entry do
      command 'CMD+O'
      name 'open'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'reopen closed file'
    end
    entry do
      command 'CMD+S'
      name 'save'
    end
    entry do
      command 'CMD+SHIFT+S'
      name 'save as...'
    end
    entry do
      command 'CMD+ALT+S'
      name 'save all'
    end
    entry do
      command 'CMD+SHIFT+N'
      name 'new window'
    end
    entry do
      command 'CMD+SHIFT+W'
      name 'close window'
    end
    entry do
      command 'CMD+W'
      name 'close file'
    end
  end

  category do
    id 'Edit'
    entry do
      command 'CMD+Y'
      name 'redo'
    end
    entry do
      command 'CMD+SHIFT+V'
      name 'paste and indent'
    end
    entry do
      command 'CMD+]'
      name 'indent'
    end
    entry do
      command 'CMD+['
      name 'unindent'
    end
    entry do
      command 'CMD+CTRL+UpArrow'
      name 'swap line up'
    end
    entry do
      command 'CMD+CTRL+DownArrow'
      name 'swap line down'
    end    
    entry do
      command 'CMD+SHIFT+D'
      name 'duplicate line'
    end
    entry do
      command 'CMD+J'
      name 'join lines'
    end
    entry do
      command 'CMD+RightArrow'
      name 'end of line'
    end
    entry do
      command 'CMD+LeftArrow'
      name 'beginning of line'
    end
    entry do
      command 'CMD+/'
      name 'toggle comment'
    end
    entry do
      command 'CMD+CTRL+/'
      name 'toggle comment block'
    end
    entry do
      command 'SHIFT+CTRL+K'
      name 'delete line'
    end
    entry do
      command 'CTRL+K'
      name 'delete to end'
    end
    entry do
      command 'CTRL+T'
      name 'transpose'
    end
    entry do
      command 'CMD+ALT+.'
      name 'close tag'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'expand selection to tag'
    end
    entry do
      command 'SHIFT+CTRL+W'
      name 'wrap selection with tag'
    end
    entry do
      command 'CMD+ALT+Q'
      name 'wrap paragraph at ruler'
    end
    entry do
      command 'F5'
      name 'sort line'
    end
    entry do
      command 'CTRL+F5'
      name 'sort line (case sensitive)'
    end
    entry do
      command 'CMD+ALT+T'
      name 'special characters...'
    end

  end


  category do
    id 'Selection'
    entry do
      command 'CMD+SHIFT+L'
      name 'split into lines'
    end
    entry do
      command 'SHIFT+CTRL+UpArrow'
      name 'add previous line'
    end
    entry do
      command 'SHIFT+CTRL+DownArrow'
      name 'add next line'
    end
    entry do
      command 'Escape'
      name 'single selection select all'
    end
    entry do
      command 'CMD+A'
      name 'select all'
    end
    entry do
      command 'CMD+L'
      name 'expand selection to line'
    end
    entry do
      command 'CMD+D'
      name 'expand selection to words'
    end
    entry do
      command 'SHIFT+CTRL+M'
      name 'expand selection to brackets'
    end
    entry do
      command 'CMD+SHIFT+J'
      name 'expand selection to indentation'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'expand selection to tag'
    end
    
  end

  category do
    id 'Find'
    entry do
      command 'CMD+F'
      name 'find...'
    end
    entry do
      command 'CMD+G'
      name 'find next'
    end
    entry do
      command 'CMD+SHIFT+G'
      name 'find previous'
    end
    entry do
      command 'CMD+I'
      name 'incremental find'
    end
    entry do
      command 'CMD+ALT+F'
      name 'replace...'
    end
    entry do
      command 'CMD+ALT+E'
      name 'replace next'
    end
    entry do
      command 'CMD+ALT+G'
      name 'quick find'
    end
    entry do
      command 'CMD+CTRL+G'
      name 'quick find all'
    end
    entry do
      command 'CMD+D'
      name 'quick add next'
    end
    entry do
      command 'CMD+E'
      name 'use selection for find'
    end
    entry do
      command 'CMD+SHIFT+E'
      name 'use selection for replace'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'find in files...'
    end
  end

  category do
    id 'View'
    entry do
      command 'CTRL+`'
      name 'show console'
    end
     entry do
      command 'CMD+CTRL+F'
      name 'enter full screen'
    end
    entry do
      command 'CMD+SHIFT+CTRL+F'
      name 'enter distraction free mode'
    end
    entry do
      command 'CMD+ALT+1'
      name 'single'
    end
    entry do
      command 'CMD+ALT+2'
      name 'columns:2'
    end
    entry do
      command 'CMD+ALT+3'
      name 'columns:3'
    end
    entry do
      command 'CMD+ALT+4'
      name 'columns:4'
    end
    entry do
      command 'CMD+SHIFT+ALT+2'
      name 'rows: 2'
    end
    entry do
      command 'CMD+SHIFT+ALT+3'
      name 'rows: 3'
    end
    entry do
      command 'CMD+ALT+5'
      name 'grid: 4'
    end
    entry do
      command 'CTRL+1'
      name 'group 1'
    end
     entry do
      command 'SHIFT+CTRL+1'
      name 'group 2'
    end
     entry do
      command 'F6'
      name 'spell check'
    end
  end

  category do
    id 'Goto'
    entry do
      command 'CMD+P'
      name 'goto anything...'
    end
    entry do
      command 'CMD+R'
      name 'goto symbol...'
    end
    entry do
      command 'CTRL+G'
      name 'goto line...'
    end
    entry do
      command 'CMD+ALT+RightArrow'
      name 'next file'
    end
    entry do
      command 'CMD+ALT+LeftArrow'
      name 'previous file'
    end
    entry do
      command 'CMD+ALT+UpArrow'
      name 'switch header/implementation'
    end
    entry do
      command 'CMD+1'
      name 'goto first file opened'
    end
    entry do
      command 'CTRL+L'
      name 'scroll to selection'
    end
    entry do
      command 'CTRL+ALT+UpArrow'
      name 'line up'
    end
    entry do
      command 'CTRL+ALT+DownArrow'
      name 'line down'
    end
    entry do
      command 'CMD+F2'
      name 'toggle bookmark'
    end
    entry do
      command 'F2'
      name 'next bookmark'
    end
    entry do
      command 'SHIFT+F2'
      name 'prev bookmark'
    end
    entry do
      command 'CMD+SHIFT+F2'
      name 'clear bookmarks'
    end
    entry do
      command 'CTRL+M'
      name 'jump to matching bracket'
    end
    entry do
      command 'CMD+SHIFT+P'
      name 'command palette...'
    end
    entry do
      command 'CTRL+Q'
      name 'record macro'
    end
  end

  category do
    id 'Tools'
    entry do
      command 'CMD+SHIFT+P'
      name 'command pallete...'
    end
    entry do
      command 'CTRL+ALT+V'
      name 'view in browser'
    end
    entry do
      command 'CMD+B'
      name 'build'
    end
    entry do
      command 'CTRL+Q'
      name 'record macro'
    end
    entry do
      command 'CTRL+R'
      name 'run'
    end
    entry do
      command 'CTRL+ALT+R'
      name 'run + arguments'
    end
    entry do
      command 'CTRL+D'
      name 'debug'
    end
    entry do
      command 'CTRL+ALT+D'
      name 'debug + arguments'
    end
  end

  category do
    id 'Project'
    entry do
      command 'CMD+CTRL+P'
      name 'switch project window'
    end
  end
end

