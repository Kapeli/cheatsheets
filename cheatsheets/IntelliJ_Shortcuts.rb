cheatsheet do
  title 'IntelliJ'
  docset_file_name 'IntelliJ_Shortcuts'
  keyword 'intellij'
  source_url 'http://cheat.kapeli.com'
  introduction 'My *Intellij* cheat sheet'  

  category do
    id 'General'
    entry do
      command 'CMD+0...CMD9'
      name 'Open corresponding tool window'
    end
    entry do
      command 'CMD+S'
      name 'Save all'
    end
    entry do
      command 'CMD+Option+Y'
      name 'Synchronize'
    end
    entry do
      command 'CMD+Shift+F12'
      name 'Toggle maximizing editor'
    end
    entry do
      command 'Option+Shift+I'
      name 'Inspect current file with current profile'
    end
    entry do
      command 'CMD+,'
      name 'Open Settings dialog'
    end
    entry do
      command 'CMD+;'
      name 'Open Project Structure dialog'
    end
    entry do
      command 'CMD+Shift+A'
      name 'Find Action'
    end
  end

  category do
    id 'Debugging'
    entry do
      command 'F8/F7'
      name 'Step over / into'
    end
    entry do
      command 'Shift+F8/Shift+F7'
      name 'Smart step into / Step out'
    end
    entry do
      command 'Option+F9'
      name 'Run to cursor'
    end
    entry do
      command 'Option+F8'
      name 'Evaluate expression'
    end
    entry do
      command 'CMD+Option+R'
      name 'Resume program'
    end
    entry do
      command 'CMD+F8'
      name 'Toggle breakpoint'
    end
    entry do
      command 'CMD+Shift+F8'
      name 'View breakpoint'
    end
  end


  category do
    id 'Search / Replace'
    entry do
      command 'Double+Shift'
      name 'Search everywhere'
    end
    entry do
      command 'CMD+F'
      name 'Find'
    end
    entry do
      command 'CMD+G'
      name 'Find next / previous'
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
    entry do
      command '^G'
      name 'Select next occurrence'
    end
    entry do
      command 'Control+CMD+G'
      name 'Select all occurrence'
    end
    entry do
      command 'Control+G'
      name 'Unselect occurrence'
    end
  end

  category do
    id 'Editing'
    entry do
      command 'Control+Space'
      name 'Basic code completion'
    end
    entry do
      command 'Control+Shift+Space'
      name 'Smart code completion'
    end
    entry do
      command 'CMD+Shift+Enter'
      name 'Complete statement'
    end
    entry do
      command 'CMD+P'
      name 'Parameter Info'
    end
    entry do
      command 'Control+J'
      name 'Quick documentation lookup'
    end
    entry do
      command 'Shift+F1'
      name 'External Doc'
    end
    entry do
      command 'CMD+mouse'
      name 'Brief Info'
    end
    entry do
      command 'CMD+F1'
      name 'Show descriptions of error at caret'
    end
    entry do
      command 'CMD+N+Control+Enter'
      name 'Generate code...'
    end
    entry do
      command 'Control+O'
      name 'Override methods'
    end
    entry do
      command 'Control+I'
      name 'Implement methods'
    end
    entry do
      command 'CMD+Option+T'
      name 'Surround with...'
    end
    entry do
      command 'CMD+/'
      name 'Comment / uncomment with line comment'
    end
    entry do
      command 'CMD+Option+/'
      name 'Comment / uncomment with block comment'
    end
    entry do
      command 'Option+PageUp'
      name 'Extend selection'
    end
    entry do
      command 'Option+PageDown'
      name 'Shrink selection'
    end
    entry do
      command 'Option+SHIFT+Q'
      name 'Context info'
    end
    entry do
      command 'ALT+Click'
      name 'Show intention actions and quick- xes'
    end
    entry do
      command 'Option+Enter'
      name 'Reformat code'
    end
    entry do
      command 'Control+Option+O'
      name 'Optimize imports'
    end
    entry do
      command 'Control+Option+I'
      name 'Auto-indent line(s)'
    end
    entry do
      command 'Tab'
      name 'Indent / unindent selected lines'
    end
    entry do
      command 'CMD+X'
      name 'Cut current line to clipboard'
    end
    entry do
      command 'CMD+C'
      name 'Copy current line to clipboard'
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
      name 'Duplicate current line'
    end
    entry do
      command 'CMD+Return'
      name 'Delete line at caret'
    end
    entry do
      command 'Control+SHIFT+J'
      name 'Smart line join'
    end
    entry do
      command 'CMD+Enter'
      name 'Smart line split'
    end
    entry do
      command 'SHIFT+Enter'
      name 'Start new line'
    end
    entry do
      command 'CMD+SHIFT+U'
      name 'Toggle case for word at caret or selected block'
    end
    entry do
      command 'CMD+SHIFT+] / CMD+SHIFT+['
      name 'Select till code block end / start'
    end
    entry do
      command 'Option+Return'
      name 'Delete to word end'
    end
    entry do
      command 'Option+Return'
      name 'Delete to word start'
    end
    entry do
      command 'CMD++ / CMD+-'
      name 'Expand / collapse code block'
    end
    entry do
      command 'CMD+SHIFT++'
      name 'Expand all'
    end
    entry do
      command 'CMD+SHIFT+-'
      name 'Collapse all'
    end
    entry do
      command 'CMD+W'
      name 'Close active editor tab'
    end
  end

  category do
    id 'Refactoring'
    entry do
      command 'F5'
      name 'Copy'
    end
    entry do
      command 'F6'
      name 'Move'
    end
    entry do
      command 'CMD+DELETE'
      name 'Safe Delete'
    end
    entry do
      command 'SHIFT+F6'
      name 'Rename'
    end
    entry do
      command 'Control+T'
      name 'Refactor this'
    end
    entry do
      command 'CMD+F6'
      name 'Change Signature'
    end
    entry do
      command 'CMD+Option+N'
      name 'Inline'
    end
    entry do
      command 'CMD+Option+M'
      name 'Extract Method'
    end
    entry do
      command 'CMD+Option+V'
      name 'Extract Variable'
    end
    entry do
      command 'CMD+Option+F'
      name 'Extract Field'
    end
    entry do
      command 'CMD+Option+C'
      name 'Extract Constant'
    end
    entry do
      command 'CMD+Option+P'
      name 'Extract Parameter'
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
      command 'CMD+Option+O'
      name 'Go to symbol'
    end
    entry do
      command 'Control+LeftArrow'
      name 'Go to next'
    end
    entry do
      command 'F12'
      name 'Go back to previous tool window'
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
      command 'CMD+Option+LeftArrow'
      name 'Navigate back'
    end
    entry do
      command 'CMD+Option+RightArrow'
      name 'Navigate forward'
    end
    entry do
      command 'CMD+SHIFT+Return'
      name 'Navigate to last edit location'
    end
    entry do
      command 'Option+F1'
      name 'Select current file or symbol in any view'
    end
    entry do
      command 'CMD+B'
      name 'Go to declaration'
    end
    entry do
      command 'CMD+Option+B'
      name 'Go to implementation(s)'
    end
    entry do
      command 'CMD+Y'
      name 'Open quick definition lookup'
    end
    entry do
      command 'Control+SHIFT+B'
      name 'Go to type declaration'
    end
    entry do
      command 'CMD+U'
      name 'Go to super-method / super-class'
    end
    entry do
      command 'Control+PageUP / Control+PageDOWN'
      name 'Go to previous / next method'
    end
    entry do
      command 'CMD+] / CMD+['
      name 'Move to code block end / start'
    end
     entry do
      command 'Control+H'
      name 'File structure popup'
    end
    entry do
      command 'CMD+SHIFT+H'
      name 'Type hierarchy'
    end
    entry do
      command 'CMD+Option+P'
      name 'Method hierarchy'
    end
    entry do
      command 'Control+Option+H'
      name 'Call hierarchy'
    end
    entry do
      command 'F2'
      name 'Next / previous highlighted error'
    end
    entry do
      command 'F4'
      name 'Edit source / View source'
    end
    entry do
      command 'Option+Home'
      name 'Show navigation bar'
    end
    entry do
      command 'F3'
      name 'Toggle bookmark'
    end
    entry do
      command 'Option+F3'
      name 'Toggle bookmark with mnemonic'
    end
    entry do
      command 'Control+0...Control+9'
      name 'Go to numbered bookmark'
    end
    entry do
      command 'CMD+F3'
      name 'Show bookmarks'
    end
  end

  category do
    id 'Compile & Run'
    entry do
      command 'CMD+F9'
      name 'Make project'
    end
    entry do
      command 'CMD+SHIFT+F9'
      name 'Compile selected file, package or module'
    end
    entry do
      command 'Control+Option+R'
      name 'Select configuration run'
    end
    entry do
      command 'Control+R / Control+D'
      name 'Run/Debug'
    end
    entry do
      command 'Control+Option+R'
      name 'Run context con guration from editor'
    end
    entry do
      command 'Control+Option+D'
      name 'Select con guration debug'
    end
  end

  category do
    id 'Usage Search'
    entry do
      command 'CMD+F7'
      name 'Find usages in file'
    end
    entry do
      command 'Option+F7'
      name 'Find usages'
    end
    entry do
      command 'CMD+SHIFT+F7'
      name 'Highlight usages in file'
    end
    entry do
      command 'CMD+Option+F7'
      name 'Show usages'
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
      command 'CMD+SHIFT+K'
      name 'Push commits'
    end
    entry do
      command 'Control+V'
      name 'VCS quick popup'
    end
  end 
    
  category do
    id 'VCS / Local History'
    entry do
      command 'CMD+Option+J'
      name 'Surround with Live Template'
    end
    entry do
      command 'CMD+J'
      name 'UInsert Live Template'
    end
  end 
end
