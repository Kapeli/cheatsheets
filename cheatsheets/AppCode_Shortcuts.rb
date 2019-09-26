cheatsheet do
  title 'AppCode'
  docset_file_name 'AppCode_Shortcuts'
  keyword 'appcode'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command 'CMD+0-9'
      name 'Open corresponding tool window'
    end
    entry do
      command 'CMD+ALT+Y'
      name 'Synchronize'
    end
    entry do
      command 'CMD+SHIFT+F12'
      name 'Toggle maximizing editor'
    end
    entry do
      command 'ALT+SHIFT+F'
      name 'Add to favorites'
    end
    entry do
      command 'ALT+SHIFT+I'
      name 'Inspect current file with current profile'
    end
    entry do
      command 'CTRL+§'
      name 'Quick switch current scheme'
    end
    entry do
      command 'CTRL+Tab'
      name 'Switch between tabs and tool window'
    end
    entry do
      command 'CMD+SHIFT+A'
      name 'Find action'
    end
  end


  category do
    id 'Editing'
    entry do
      command 'CTRL+Space'
      name 'Basic code completion'
      notes 'Name of any class, method or variable'
    end
    entry do
      command 'CTRL+SHIFT+Space'
      name 'Smart code completion'
      notes 'Filters the list of methods and variables by expected type'
    end
    entry do
      command 'CMD+SHIFT+Return'
      name 'Complete statement'
    end
    entry do
      command 'CTRL+J'
      name 'Quick documentation lookup'
    end
    entry do
      command 'SHIFT+F1'
      name 'External documentation lookup'
    end
    entry do
      command 'CMD+mouse over code'
      name 'Brief info'
    end
    entry do
      command 'CMD+F1'
      name 'Show description of error or warning at caret'
    end
    entry do
      command 'CMD+N'
      command 'CTRL+N'
      command 'CTRL+Return'
      name 'Generate code'
      notes '`initWith...`, properties, etc.'
    end
    entry do
      command 'CTRL+O'
      name 'Override methods'
    end
    entry do
      command 'CTRL+I'
      name 'Implement methods'
    end
    entry do
      command 'CMD+ALT+T'
      name 'Surround with...'
      notes '`if...else`, `for`, `@try...@catch`, `@synchronized`, etc.'
    end
    entry do
      command 'CMD+/'
      name 'Comment or uncommment with line comment'
    end
    entry do
      command 'CMD+ALT+/'
      name 'Comment or uncommment with block comment'
    end
    entry do
      command 'ALT+Arrow Up'
      name 'Select successively increasing code blocks'
    end
    entry do
      command 'ALT+Arrow Down'
      name 'Decrease current selection to previous state'
    end
    entry do
      command 'CTRL+SHIFT+Q'
      name 'Context info'
    end
    entry do
      command 'ALT+Return'
      name 'Show intention actions and quick-fixes'
    end
    entry do
      command 'CMD+ALT+L'
      name 'Reformat code'
    end
    entry do
      command 'CTRL+ALT+O'
      name 'Optimize imports'
    end
    entry do
      command 'CTRL+ALT+I'
      name 'Auto-ident lines'
    end
    entry do
      command 'Tab'
      name 'Indent selected lines'
    end
    entry do
      command 'SHIFT+Tab'
      name 'Unindent selected lines'
    end
    entry do
      command 'CMD+X'
      name 'Cut current line or selected block to clipboard'
    end
    entry do
      command 'CMD+C'
      name 'Copy current line or selected block to clipboard'
    end
    entry do
      command 'CMD+V'
      name 'Paste from clipboard'
    end
    entry do
      command 'CMD+SHIFT+V'
      name 'Paste from recent buffers'
    end
    entry do
      command 'CMD+D'
      name 'Duplicate current line or selected block'
    end
    entry do
      command 'CMD+Backspace'
      name 'Delete line at caret'
    end
    entry do
      command 'CTRL+SHIFT+J'
      name 'Smart line join'
    end
    entry do
      command 'CMD+Return'
      name 'Smart line split'
    end
    entry do
      command 'SHIFT+Return'
      name 'Start new line'
    end
    entry do
      command 'CMD+SHIFT+U'
      name 'Toggle case for word at caret or selected block'
    end
    entry do
      command 'CMD+SHIFT+]'
      name 'Select until code block end'
    end
    entry do
      command 'CMD+SHIFT+['
      name 'Select until code block start'
    end
    entry do
      command 'ALT+Delete'
      name 'Delete to word end'
    end
    entry do
      command 'ALT+Backspace'
      name 'Delete to word start'
    end
    entry do
      command 'CMD+"+"'
      name 'Expand code block'
    end
    entry do
      command 'CMD+"-"'
      name 'Collapse code block'
    end
    entry do
      command 'CMD+SHIFT+"+"'
      name 'Expand all'
    end
    entry do
      command 'CMD+SHIFT+"-"'
      name 'Collapse all'
    end
    entry do
      command 'CMD+W'
      name 'Close active editor tab'
    end
  end

  category do
    id 'Multi-Cursor Editing'
    entry do
      command 'CTRL+G'
      name 'Select next occurrence'
    end
    entry do
      command 'CTRL+SHIFT+G'
      name 'Unselect last selected occurrence'
    end
    entry do
      command 'CMD+CTRL+G'
      name 'Select all occurrences'
    end
    entry do
      command 'ALT+Left Click'
      name 'Add new cursor'
    end
  end

  category do
    id 'Search / Replace'
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
      command 'CMD+R'
      name 'Replace'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'Find in path'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'Replace in path'
    end
  end


  category do
    id 'Usage Search'
    entry do
      command 'ALT+F7'
      name 'Find usage'
    end
    entry do
      command 'CMD+F7'
      name 'Find usage in file'
    end
    entry do
      command 'CMD+SHIFT+F7'
      name 'Highlight usage in file'
    end
    entry do
      command 'CMD+ALT+F7'
      name 'Show usage'
    end
  end


  category do
    id 'Compile and Run'
    entry do
      command 'CMD+F9'
      name 'Build project'
    end
    entry do
      command 'CTRL+R'
      name 'Run'
    end
    entry do
      command 'CTRL+ALT+R'
      name 'Select configuration and run'
    end
    entry do
      command 'CTRL+D'
      name 'Debug'
    end
    entry do
      command 'CTRL+ALT+D'
      name 'Select cofiguration and debug'
    end
    entry do
      command 'CTRL+SHIFT+R'
      name 'Run context configuration from editor'
    end
  end


  category do
    id 'Debugging'
    entry do
      command 'F8'
      name 'Step over'
    end
    entry do
      command 'F7'
      name 'Step into'
    end
    entry do
      command 'SHIFT+F7'
      name 'Smart step into'
    end
    entry do
      command 'SHIFT+F8'
      name 'Step out'
    end
    entry do
      command 'ALT+F9'
      name 'Run to cursor'
    end
    entry do
      command 'ALT+F8'
      name 'Evaluate expression'
    end
    entry do
      command 'CMD+ALT+R'
      name 'Resume program'
    end
    entry do
      command 'CMD+F8'
      name 'Toggle breakpoint'
    end
    entry do
      command 'CMD+SHIFT+F8'
      name 'View breakpoints'
    end
  end


  category do
    id 'Navigation'
    entry do
      command 'CMD+O'
      name 'Go to class'
    end
    entry do
      command 'CMD+SHIFT+O'
      name 'Go to file'
    end
    entry do
      command 'CMD+ALT+O'
      name 'Go to symbol'
    end
    entry do
      command 'CTRL+Arrow Left'
      name 'Go to previous editor tab'
    end
    entry do
      command 'CTRL+Arrow Right'
      name 'Go to next editor tab'
    end
    entry do
      command 'F12'
      name 'Go back to previous tool window'
    end
    entry do
      command 'Esc'
      name 'Go to editor (from tool window)'
    end
    entry do
      command 'SHIFT+Esc'
      name 'Hide active or last active Window'
    end
    entry do
      command 'CMD+SHIFT+F4'
      name 'Close active tab'
    end
    entry do
      command 'CMD+L'
      name 'Go to line'
    end
    entry do
      command 'CMD+E'
      name 'Recent files popup'
    end
    entry do
      command 'CMD+ALT+Arrow Left'
      name 'Navigate back'
    end
    entry do
      command 'CMD+ALT+Arrow Right'
      name 'Navigate forward'
    end
    entry do
      command 'CMD+SHIFT+Delete'
      name 'Navigate to last edit location'
    end
    entry do
      command 'CMD+ALT+Arrow Left'
      name 'Navigate back'
    end
    entry do
      command 'ALT+F1'
      name 'Select current file or symbol in any view'
    end
    entry do
      command 'CMD+CTRL+Arrow Up'
      name 'Go to related header or source file'
    end
    entry do
      command 'CMD+B'
      name 'Go to definition'
    end
    entry do
      command 'CMD+ALT+B'
      name 'Go to implementation(s)'
    end
    entry do
      command 'ALT+Space'
      name 'Open quick definition lookup'
    end
    entry do
      command 'CTRL+SHIFT+B'
      name 'Go to type declaration'
    end
    entry do
      command 'CMD+U'
      name 'Go to super-method or super-class'
    end
    entry do
      command 'CTRL+Arrow Up'
      name 'Go to previous method'
    end
    entry do
      command 'CTRL+Arrow Down'
      name 'Go to next method'
    end
    entry do
      command 'CMD+['
      name 'Move to code block start'
    end
    entry do
      command 'CMD+]'
      name 'Move to code block end'
    end
    entry do
      command 'CMD+F12'
      name 'File structure popup'
    end
    entry do
      command 'Control+H'
      name 'Type hierarchy'
    end
    entry do
      command 'CMD+SHIFT+H'
      name 'Method hierarchy'
    end
    entry do
      command 'CTRL+ALT+H'
      name 'Call hierarchy'
    end
    entry do
      command 'F2'
      name 'Next highlighted error'
    end
    entry do
      command 'SHIFT+F2'
      name 'Previous highlighted error'
    end
    entry do
      command 'F4'
      name 'Edit source'
    end
    entry do
      command 'CMD+Arrow Down'
      name 'View source'
    end
    entry do
      command 'F3'
      name 'Toggle bookmark'
    end
    entry do
      command 'ALT+F3'
      name 'Toogle bookmark with mnemonic'
    end
    entry do
      command 'CTRL+0...CTRL+9'
      name 'Go to numbered bookmark'
    end
    entry do
      command 'CMD+F3'
      name 'Show bookmarks'
    end
  end


  category do
    id 'Refactoring'
    entry do
      command 'CTRL+T'
      name 'Refactor this'
    end
    entry do
      command 'F5'
      name 'Copy'
    end
    entry do
      command 'F6'
      name 'Move'
    end
    entry do
      command 'CMD+Delete'
      name 'Safe delete'
    end
    entry do
      command 'SHIFT+F6'
      name 'Rename'
    end
    entry do
      command 'CMD+F6'
      name 'Change signature'
    end
    entry do
      command 'CMD+ALT+N'
      name 'Inline'
    end
    entry do
      command 'CMD+ALT+M'
      name 'Extract method'
    end
    entry do
      command 'CMD+ALT+V'
      name 'Introduce variable'
    end
    entry do
      command 'CMD+ALT+P'
      name 'Introduce parameter'
    end
    entry do
      command 'CMD+ALT+E'
      name 'Introduce property'
    end
    entry do
      command 'CMD+ALT+C'
      name 'Introduce constant'
    end
    entry do
      command 'CMD+ALT+I'
      name 'Introduce instance variable'
    end
  end


  category do
    id 'VCS / Local History'
    entry do
      command 'CMD+K'
      name 'Commit project to VCS'
    end
    entry do
      command 'CMD+T'
      name 'Update project from VCS'
    end
    entry do
      command 'ALT+SHIFT+C'
      name 'View recent changes'
    end
      entry do
      command 'CTRL+V'
      name 'VCS quick popup'
    end
  end


  category do
    id 'Live Templates'
    entry do
      command 'CMD+ALT+J'
      name 'Surround with live template'
    end
    entry do
      command 'CMD+J'
      name 'Insert live template'
    end
  end

end
