cheatsheet do
  title 'AppCode Shortcuts'
  docset_file_name 'AppCode_Shortcuts'
  keyword 'appcode'
  source_url 'http://cheat.kapeli.com'


  category do
    id 'General'
    entry do
      command 'Cmd + 0 ... Cmd + 9'
      name 'Open corresponding tool Window'
    end
    entry do
      command 'Cmd + Alt + Y'
      name 'Synchronize'
    end
    entry do
      command 'Cmd + Shift + F12'
      name 'Toggle maximizing Editor'
    end
    entry do
      command 'Alt + Shift + F'
      name 'Add to Favorites'
    end
    entry do
      command 'Alt + Shift + I'
      name 'Inspect current File with current Profile'
    end
    entry do
      command 'Ctrl + §'
      name 'Quick switch current Scheme'
    end
    entry do
      command 'Ctrl + Tab'
      name 'Switch between Tabs and tool Window'
    end
    entry do
      command 'Shift + Cmd + A'
      name 'Find Action'
    end
  end


  category do
    id 'Editing'
    entry do
      command 'Ctrl + Space'
      name 'Basic Code completion (the Name of any Class, Method or Variable)'
    end
    entry do
      command 'Ctrl + Shift + Space'
      name 'Smart Code completion (filters the List of Methods and Variables by expected Type)'
    end
    entry do
      command 'Cmd + Shift + Enter'
      name 'Complete Statement'
    end
    entry do
      command 'Ctrl + j'
      name 'Quick Documentation lookup'
    end
    entry do
      command 'Shift + F1'
      name 'External Doc'
    end
    entry do
      command 'Cmd + mouse over code'
      name 'Brief Info'
    end
    entry do
      command 'Cmd + F1'
      name 'Show description of Error or Warning at Caret'
    end
    entry do
      command 'Cmd + N'
      command 'Ctrl + Enter'
      command 'Ctrl + N'
      name 'Generate Code (initWith..., Properties, etc)'
    end
    entry do
      command 'Ctrl + O'
      name 'Override Methods'
    end
    entry do
      command 'Ctrl + I'
      name 'Implement Methods'
    end
    entry do
      command 'Cmd + Alt + T'
      name 'Surround with... (if..else, for, @try..@catch, @synchronized, etc.)'
    end
    entry do
      command 'Cmd + /'
      name 'Comment/uncommment with Line Comment'
    end
    entry do
      command 'Cmd + Alt + /'
      name 'Comment/uncommment with Block Comment'
    end
    entry do
      command 'Alt + Arrow up'
      name 'Select successively increasing Code Blocks'
    end
    entry do
      command 'Alt + Arrow down'
      name 'Decrease current Selection to previous State'
    end
    entry do
      command 'Ctrl + Shift + Q'
      name 'Context Info'
    end
    entry do
      command 'Alt + Enter'
      name 'Show intention Actions and Quick-fixes'
    end
    entry do
      command 'Cmd + Alt + L'
      name 'Reformat Code'
    end
    entry do
      command 'Ctrl + Alt + O'
      name 'Optimize Imports'
    end
    entry do
      command 'Ctrl + Alt + I'
      name 'Auto-ident Line(s)'
    end
    entry do
      command 'Tab'
      name 'Indent selected Lines'
    end
    entry do
      command 'Shift + Tab'
      name 'Unindent selected Lines'
    end
    entry do
      command 'Cmd + X'
      name 'Cut current Line or selected Block to Clipboard'
    end
    entry do
      command 'Cmd + C'
      name 'Copy current Line or selected Block to Clipboard'
    end
    entry do
      command 'Cmd + V'
      name 'Paste from Clipboard'
    end
    entry do
      command 'Cmd + Shift + V'
      name 'Paste from recent Buffers'
    end
    entry do
      command 'Cmd + D'
      name 'Duplicate current Line or selected Block'
    end
    entry do
      command 'Cmd + Backspace'
      name 'Delete Line at Caret'
    end
    entry do
      command 'Ctrl + Shift + J'
      name 'Smart Line join'
    end
    entry do
      command 'Cmd + Enter'
      name 'Smart Line split'
    end
    entry do
      command 'Shift + Enter'
      name 'Start new Line'
    end
    entry do
      command 'Cmd + Shift + U'
      name 'Toggle Case for Word at Caret or selected Block'
    end
    entry do
      command 'Cmd + Shift + ]'
      name 'Select till code Block end'
    end
    entry do
      command 'Cmd + Shift + ['
      name 'Select till code Block start'
    end
    entry do
      command 'Alt + Delete'
      name 'Delete to Word end'
    end
    entry do
      command 'Alt + Backspace'
      name 'Delete to Word start'
    end
    entry do
      command 'Cmd + "+"'
      name 'Expand code Block'
    end
    entry do
      command 'Cmd + "-"'
      name 'Collapse code Block'
    end
    entry do
      command 'Cmd + Shift + "+"'
      name 'Expand all'
    end
    entry do
      command 'Cmd + Shift + "-"'
      name 'Collapse all'
    end
    entry do
      command 'Cmd + W'
      name 'Close active Editor Tab'
    end
  end


  category do
    id 'Search/Replace'
    entry do
      command 'Cmd + F'
      name 'Find'
    end
    entry do
      command 'Cmd + G'
      name 'Find next'
    end
    entry do
      command 'Cmd + Shift + G'
      name 'Find previous'
    end
    entry do
      command 'Cmd + R'
      name 'Replace'
    end
    entry do
      command 'Cmd + Shift + F'
      name 'Find in Path'
    end
    entry do
      command 'Cmd + Shift + R'
      name 'Replace in Path'
    end
  end


  category do
    id 'Usage Search'
    entry do
      command 'Alt + F7'
      name 'Find usage'
    end
    entry do
      command 'Cmd + F7'
      name 'Find usage in File'
    end
    entry do
      command 'Cmd + Shift + F7'
      name 'Highlight usage in File'
    end
    entry do
      command 'Cmd + Alt + F7'
      name 'Show usage'
    end
  end


  category do
    id 'Compile and Run'
    entry do
      command 'Cmd + F9'
      name 'Build Project'
    end
    entry do
      command 'Ctrl + Alt + R'
      name 'Select Configuration and run'
    end
    entry do
      command 'Ctrl + Alt + D'
      name 'Select Cofiguration and debug'
    end
    entry do
      command 'Ctrl + R'
      name 'Run'
    end
    entry do
      command 'Ctrl + D'
      name 'Debug'
    end
    entry do
      command 'Ctrl + Shift + R'
      name 'Run Context Configuration from Editor'
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
      command 'Shift + F7'
      name 'Smart step into'
    end
    entry do
      command 'Shift + F8'
      name 'Step out'
    end
    entry do
      command 'Alt + F9'
      name 'Run to cursor'
    end
    entry do
      command 'Alt + F8'
      name 'Evaluate Expression'
    end
    entry do
      command 'Cmd + Alt + R'
      name 'Resume Program'
    end
    entry do
      command 'Cmd + F8'
      name 'Toggle Breakpoint'
    end
    entry do
      command 'Cmd + Shift + F8'
      name 'View Breakpoints'
    end
  end


  category do
    id 'Navigation'
    entry do
      command 'Cmd + O'
      name 'Go to Class'
    end
    entry do
      command 'Cmd + Shift + O'
      name 'Go to File'
    end
    entry do
      command 'Cmd + Alt + O'
      name 'Go to Symbol'
    end
    entry do
      command 'Ctrl + Arrow left'
      name 'Go to previous Editor Tab'
    end
    entry do
      command 'Ctrl + Arrow right'
      name 'Go to next Editor Tab'
    end
    entry do
      command 'F12'
      name 'Go to back to previous Tool Window'
    end
    entry do
      command 'Esc'
      name 'Go to Editor (from Tool Window)'
    end
    entry do
      command 'Shift + Esc'
      name 'Hide active or last active Window'
    end
    entry do
      command 'Cmd + Shift + F4'
      name 'Close active run/messages/find/... tab'
    end
    entry do
      command 'Cmd + L'
      name 'Go to Line'
    end
    entry do
      command 'Cmd + E'
      name 'Recent Files Popup'
    end
    entry do
      command 'Cmd + Alt + Arrow left'
      name 'Navigate back'
    end
    entry do
      command 'Cmd + Alt + Arrow right'
      name 'Navigate forward'
    end
    entry do
      command 'Cmd + Shift + Delete'
      name 'Navigate to last edit Location'
    end
    entry do
      command 'Cmd + Alt + Arrow left'
      name 'Navigate back'
    end
    entry do
      command 'Alt + F1'
      name 'Select current File or Symbol in any View'
    end
    entry do
      command 'Cmd + Ctrl + Arrow up'
      name 'Go to related Header or Source File'
    end
    entry do
      command 'Cmd + B'
      name 'Go to Definition'
    end
    entry do
      command 'Cmd + Alt + B'
      name 'Go to Implementation(s)'
    end
    entry do
      command 'Alt + Space'
      name 'Open quick definition loockup'
    end
    entry do
      command 'Ctrl + Shift + B'
      name 'Go to Type declaration'
    end
    entry do
      command 'Cmd + U'
      name 'Go to super-method/ super-class'
    end
    entry do
      command 'Ctrl + Arrow up'
      name 'Go to previous Method'
    end
    entry do
      command 'Ctrl+ Arrow down'
      name 'Go to next Method'
    end
    entry do
      command 'Cmd + ['
      name 'Move to code Block start'
    end
    entry do
      command 'Cmd + ]'
      name 'Move to code Block end'
    end
    entry do
      command 'Cmd + F12'
      name 'File structure Popup'
    end
    entry do
      command 'Control + H'
      name 'Type Hierarchy'
    end
    entry do
      command 'Cmd + Shift + H'
      name 'Method Hierarchy'
    end
    entry do
      command 'Ctrl + Alt + H'
      name 'Call Hierarchy'
    end
    entry do
      command 'F2'
      name 'Next highlighted Error'
    end
    entry do
      command 'Shift + F2'
      name 'Previous highlighted Error'
    end
    entry do
      command 'F4'
      name 'Edit Source'
    end
    entry do
      command 'Cmd + Arrow down'
      name 'View Source'
    end
    entry do
      command 'F3'
      name 'Toggle Bookmark'
    end
    entry do
      command 'Alt + F3'
      name 'Toogle Bookmark with Mnemonic'
    end
    entry do
      command 'Ctrl + 0 ... Ctrl + 9'
      name 'Go to numbered Bookmark'
    end
    entry do
      command 'Cmd + F3'
      name 'Show Bookmarks'
    end
  end


  category do
    id 'Refactoring'
    entry do
      command 'Ctrl + T'
      name 'Refactor This'
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
      command 'Cmd + Delete'
      name 'Safe delete'
    end
    entry do
      command 'Shift + F6'
      name 'Rename'
    end
    entry do
      command 'Cmd + F6'
      name 'Change Signature'
    end
    entry do
      command 'Cmd + Alt + N'
      name 'Inline'
    end
    entry do
      command 'Cmd + Alt + M'
      name 'Extract Method'
    end
    entry do
      command 'Cmd + Alt + V'
      name 'Introduce Variable'
    end
    entry do
      command 'Cmd + Alt + P'
      name 'Introduce Parameter'
    end
    entry do
      command 'Cmd + Alt E'
      name 'Introduce Property'
    end
    entry do
      command 'Cmd + Alt + C'
      name 'Introduce Constant'
    end
    entry do
      command 'Cmd + Alt + I'
      name 'Introduce Instance Variable'
    end
  end


  category do
    id 'VCS / Local History'
    entry do
      command 'Cmd + K'
      name 'Commit Project to VCS'
    end
    entry do
      command 'Cmd + T'
      name 'Update Project from VCS'
    end
    entry do
      command 'Alt + Shift + C'
      name 'View Recent Changes'
    end
      entry do
      command 'Ctrl + V'
      name 'VCS quick Popup'
    end
  end


  category do
    id 'Live Templates'
    entry do
      command 'Cmd + Alt + J'
      name 'Surround with Live Template'
    end
    entry do
      command 'Cmd + J'
      name 'Insert Live Template'
    end
  end

end
