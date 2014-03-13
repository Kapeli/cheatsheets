cheatsheet do
  title 'PhpStorm'
  docset_file_name 'PhpStorm_Shortcuts'
  keyword 'pstorm'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command '⌘+0-9'
      name 'Open corresponding tool window'
    end
    entry do
      command '⌘+⌥+Y'
      name 'Synchronize'
    end
    entry do
      command '⌘+⇧+F12'
      name 'Toggle maximizing editor'
    end
    entry do
      command '⌥+⇧+F'
      name 'Add to favorites'
    end
    entry do
      command '⌥+⇧+I'
      name 'Inspect current file with current profile'
    end
    entry do
      command '^+§'
      name 'Quick switch current scheme'
    end
    entry do
      command '^+Tab'
      name 'Switch between tabs and tool window'
    end
    entry do
      command '⌘+⇧+A'
      name 'Find action'
    end
    entry do
      command '⇧+⇧'
      name 'Search Everywhere'
    end
  end


  category do
    id 'Editing'
    entry do
      command '^+Space'
      name 'Basic code completion'
      notes 'Name of any class, method or variable'
    end
    entry do
      command '^+⇧+Space'
      name 'Smart code completion'
      notes 'Filters the list of methods and variables by expected type'
    end
    entry do
      command '⌘+⇧+Enter'
      name 'Complete statement'
    end
    entry do
      command '^+J'
      name 'Quick documentation lookup'
    end
    entry do
      command '⇧+F1'
      name 'External documentation lookup'
    end
    entry do
      command '⌘+mouse over code'
      name 'Brief info'
    end
    entry do
      command '⌘+F1'
      name 'Show description of error or warning at caret'
    end
    entry do
      command '⌘+N'
      command '^+N'
      command '^+Enter'
      name 'Generate code'
      notes 'Getters, Setters, Constructors'
    end
    entry do
      command '^+O'
      name 'Override methods'
    end
    entry do
      command '^+I'
      name 'Implement methods'
    end
    entry do
      command '⌘+⌥+T'
      name 'Surround with...'
      notes '`if..else`, `try..catch`, `for` etc'
    end
    entry do
      command '⌘+/'
      name 'Comment or uncommment with line comment'
    end
    entry do
      command '⌘+⌥+/'
      name 'Comment or uncommment with block comment'
    end
    entry do
      command '^+W'
      name 'Select successively increasing code blocks'
    end
    entry do
      command '^+⇧+W'
      name 'Decrease current selection to previous state'
    end
    entry do
      command '^+⇧+Q'
      name 'Context info'
    end
    entry do
      command '⌥+Enter'
      name 'Show intention actions and quick-fixes'
    end
    entry do
      command '⌘+⌥+L'
      name 'Reformat code'
    end
    entry do
      command '^+⌥+O'
      name 'Optimize imports'
    end
    entry do
      command '^+⌥+I'
      name 'Auto-ident lines'
    end
    entry do
      command 'Tab'
      name 'Indent selected lines'
    end
    entry do
      command '⇧+Tab'
      name 'Unindent selected lines'
    end
    entry do
      command '⌘+X'
      name 'Cut current line or selected block to clipboard'
    end
    entry do
      command '⌘+C'
      name 'Copy current line or selected block to clipboard'
    end
    entry do
      command '⌘+V'
      name 'Paste from clipboard'
    end
    entry do
      command '⌘+⇧+V'
      name 'Paste from recent buffers'
    end
    entry do
      command '⌘+D'
      name 'Duplicate current line or selected block'
    end
    entry do
      command '⌘+Backspace'
      name 'Delete line at caret'
    end
    entry do
      command '^+⇧+J'
      name 'Smart line join'
    end
    entry do
      command '⌘+Enter'
      name 'Smart line split'
    end
    entry do
      command '⇧+Enter'
      name 'Start new line'
    end
    entry do
      command '⌘+⇧+U'
      name 'Toggle case for word at caret or selected block'
    end
    entry do
      command '⌘+⇧+]'
      name 'Select until code block end'
    end
    entry do
      command '⌘+⇧+['
      name 'Select until code block start'
    end
    entry do
      command '⌥+Delete'
      name 'Delete to word end'
    end
    entry do
      command '⌥+Backspace'
      name 'Delete to word start'
    end
    entry do
      command '⌘+"+"'
      name 'Expand code block'
    end
    entry do
      command '⌘+"-"'
      name 'Collapse code block'
    end
    entry do
      command '⌘+⇧+"+"'
      name 'Expand all'
    end
    entry do
      command '⌘+⇧+"-"'
      name 'Collapse all'
    end
    entry do
      command '⌘+W'
      name 'Close active editor tab'
    end
  end


  category do
    id 'Search / Replace'
    entry do
      command '⌘+F'
      name 'Find'
    end
    entry do
      command '⌘+G'
      name 'Find next'
    end
    entry do
      command '⌘+⇧+G'
      name 'Find previous'
    end
    entry do
      command '⌘+R'
      name 'Replace'
    end
    entry do
      command '⌘+⇧+F'
      name 'Find in path'
    end
    entry do
      command '⌘+⇧+R'
      name 'Replace in path'
    end
  end


  category do
    id 'Usage Search'
    entry do
      command '⌥+F7'
      name 'Find usage'
    end
    entry do
      command '⌘+F7'
      name 'Find usage in file'
    end
    entry do
      command '⌘+⇧+F7'
      name 'Highlight usage in file'
    end
    entry do
      command '⌘+⌥+F7'
      name 'Show usage'
    end
  end


  category do
    id 'Compile and Run'
    entry do
      command '⌘+F9'
      name 'Build project'
    end
    entry do
      command '^+R'
      name 'Run'
    end
    entry do
      command '^+⌥+R'
      name 'Select configuration and run'
    end
    entry do
      command '^+D'
      name 'Debug'
    end
    entry do
      command '^+⌥+D'
      name 'Select cofiguration and debug'
    end
    entry do
      command '^+⇧+R'
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
      command '⇧+F7'
      name 'Smart step into'
    end
    entry do
      command '⇧+F8'
      name 'Step out'
    end
    entry do
      command '⌥+F9'
      name 'Run to cursor'
    end
    entry do
      command '⌥+F8'
      name 'Evaluate expression'
    end
    entry do
      command '⌘+⌥+R'
      name 'Resume program'
    end
    entry do
      command '⌘+F8'
      name 'Toggle breakpoint'
    end
    entry do
      command '⌘+⇧+F8'
      name 'View breakpoints'
    end
  end


  category do
    id 'Navigation'
    entry do
      command '⌘+O'
      name 'Go to class'
    end
    entry do
      command '⌘+⇧+O'
      name 'Go to file'
    end
    entry do
      command '⌘+⌥+O'
      name 'Go to symbol'
    end
    entry do
      command '^+Arrow Left'
      name 'Go to previous editor tab'
    end
    entry do
      command '^+Arrow Right'
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
      command '⇧+Esc'
      name 'Hide active or last active Window'
    end
    entry do
      command '⌘+⇧+F4'
      name 'Close active tab'
    end
    entry do
      command '⌘+L'
      name 'Go to line'
    end
    entry do
      command '⌘+E'
      name 'Recent files popup'
    end
    entry do
      command '⌘+⌥+Arrow Left'
      name 'Navigate back'
    end
    entry do
      command '⌘+⌥+Arrow Right'
      name 'Navigate forward'
    end
    entry do
      command '⌘+⇧+Delete'
      name 'Navigate to last edit location'
    end
    entry do
      command '⌘+⌥+Arrow Left'
      name 'Navigate back'
    end
    entry do
      command '⌥+F1'
      name 'Select current file or symbol in any view'
    end
    entry do
      command '⌘+B'
      name 'Go to definition'
    end
    entry do
      command '⌘+⌥+B'
      name 'Go to implementation(s)'
    end
    entry do
      command '^+⇧+B'
      name 'Go to type declaration'
    end
    entry do
      command '⌘+U'
      name 'Go to super-method or super-class'
    end
    entry do
      command '^+Arrow Up'
      name 'Go to previous method'
    end
    entry do
      command '^+Arrow Down'
      name 'Go to next method'
    end
    entry do
      command '⌘+['
      name 'Move to code block start'
    end
    entry do
      command '⌘+]'
      name 'Move to code block end'
    end
    entry do
      command '⌘+F12'
      name 'File structure popup'
    end
    entry do
      command 'Control+H'
      name 'Type hierarchy'
    end
    entry do
      command '⌘+⇧+H'
      name 'Method hierarchy'
    end
    entry do
      command '^+⌥+H'
      name 'Call hierarchy'
    end
    entry do
      command 'F2'
      name 'Next highlighted error'
    end
    entry do
      command '⇧+F2'
      name 'Previous highlighted error'
    end
    entry do
      command 'F4'
      name 'Edit source'
    end
    entry do
      command '⌘+Arrow Down'
      name 'View source'
    end
    entry do
      command 'F3'
      name 'Toggle bookmark'
    end
    entry do
      command '⌥+F3'
      name 'Toogle bookmark with mnemonic'
    end
    entry do
      command '^+0...^+9'
      name 'Go to numbered bookmark'
    end
    entry do
      command '⌘+F3'
      name 'Show bookmarks'
    end
  end


  category do
    id 'Refactoring'
    entry do
      command '^+T'
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
      command '⌘+Delete'
      name 'Safe delete'
    end
    entry do
      command '⇧+F6'
      name 'Rename'
    end
    entry do
      command '⌘+F6'
      name 'Change signature'
    end
    entry do
      command '⌘+⌥+N'
      name 'Inline'
    end
    entry do
      command '⌘+⌥+M'
      name 'Extract method'
    end
    entry do
      command '⌘+⌥+V'
      name 'Introduce variable'
    end
    entry do
      command '⌘+⌥+P'
      name 'Introduce parameter'
    end
    entry do
      command '⌘+⌥+E'
      name 'Introduce property'
    end
    entry do
      command '⌘+⌥+C'
      name 'Introduce constant'
    end
    entry do
      command '⌘+⌥+I'
      name 'Introduce instance variable'
    end
  end


  category do
    id 'VCS / Local History'
    entry do
      command '⌘+K'
      name 'Commit project to VCS'
    end
    entry do
      command '⌘+T'
      name 'Update project from VCS'
    end
    entry do
      command '⌥+⇧+C'
      name 'View recent changes'
    end
      entry do
      command '^+V'
      name 'VCS quick popup'
    end
  end


  category do
    id 'Live Templates'
    entry do
      command '⌘+⌥+J'
      name 'Surround with live template'
    end
    entry do
      command '⌘+J'
      name 'Insert live template'
    end
  end
  notes <<-'END'
    * Based on the cheat sheet from [PhpStorm Default Keymap](http://www.jetbrains.com/phpstorm/documentation/PhpStorm_ReferenceCard.pdf).
    * Converted and extended by [Vexus2](https://github.com/vexus2).
  END
end
