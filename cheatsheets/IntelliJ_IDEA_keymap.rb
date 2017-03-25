cheatsheet do
    title 'IntelliJ IDEA CheatSheet'
    docset_file_name 'intellij_idea_cheatsheet'
    keyword 'idea intellij cheatsheet mac keymap default'
    introduction 'AN IDEA DEFAULT KEY MAP CHEAT SHEET'

    category do
        id 'Remember these Shortcuts'

        entry do
            command '⌘ W'
            name 'Close window'
        end

        entry do
            command '⌃ ⇧ SPACE'
            name 'Smart code completion'
        end
        entry do
            command '⇧ x2'
            name 'Search everywhere'
        end
        entry do
            command '⌘  ENTER'
            name 'Show intention actions and quick-fixes'
        end
        entry do
            command '⌘  N'
            command '⌃  ENTER'
            name 'Generate code'
        end
        entry do
            command '⌘  P'
            name 'Parameter info'
        end
        entry do
            command '⌥  ⌘  UP'
            name 'Extend selection'
        end
        entry do
            command '⌥  ⌘  DOWN'
            name 'Shrink selection'
        end
        entry do
            command '⌘  E'
            name 'Recent files popup'
        end
        entry do
            command '⇧  F6'
            name 'Rename'
        end
    end

    category do
        id 'General'

        entry do
            name 'Open corresponding tool window'
            command '⌘  0 ... ⌘  9'
        end
        entry do
            name 'Save all'
            command '⌘  S'
        end
        entry do
            name 'Synchronize'
            command '⌘  ⌥  Y'
        end
        entry do
            name 'Toggle maximizing editor'
            command '⌘  ⇧  F12'
        end
        entry do
            name 'Inspect current file with current profile'
            command '⌥  ⇧  I'
        end
        entry do
            name 'Quick switch current scheme'
            command '⌃  `'
        end
        entry do
            name 'Open Settings dialog'
            command '⌘  ,'
        end
        entry do
            name 'Open Project Structure dialog'
            command '⌘  ;'
        end
        entry do
            name 'Find Action'
            command '⌘  ⇧  A'
        end
    end

    category do
        id 'Debugging'
        entry do
            name 'Step over / into'
            command 'F8 / F7'
        end
        entry do
            name 'Smart step into'
            command '⇧  F8'
        end
        entry do
            name 'Step out'
            command '⇧  F7'
        end
        entry do
            name 'Run to cursor'
            command '⌥  F9'
        end
        entry do
            name 'Evaluate expression'
            command '⌥  F8'
        end
        entry do
            name 'Resume program'
            command '⌘  ⌥  R'
        end
        entry do
            name 'Toggle breakpoint'
            command '⌘  F8'
        end
        entry do
            name 'View breakpoints'
            command '⌘  ⇧  F8'
        end
    end

    category do
        id 'Search / Replace'
        entry do
            name 'Search everywhere'
            command '⇧ x2'
        end
        entry do
            name 'Find'
            command '⌘  F'
        end

        entry do
            name 'Find next'
            command '⌘  G'
        end
        entry do
            name ' Find previous Replace'
            command '⌘  ⇧  G'
        end
        entry do
            name 'Replace'
            command '⌘  R'
        end

        entry do
            name 'Find in path'
            command '⌘  ⇧  F'
        end
        entry do
            name 'Replace in path'
            command '⌘  ⇧  R'
        end
        entry do
            name 'Select next occurrence'
            command '⌃  G'
        end
        entry do
            name 'Select all occurrences'
            command '⌃  ⌘  G'
        end
        entry do
            name 'Unselect occurrence'
            command '⌃  G'
        end

    end

    category do
        id 'Editing'
        entry do
            name 'Basic code completion'
            command '⌃  SPACE'
        end
        entry do
            name 'Smart code completion'
            command '⌃  ⇧  SPACE'
        end
        entry do
            name 'Complete statement'
            command '⌘  ⇧  ENTER'
        end
        entry do
            name 'Parameter info (within method call arguments) '
            command '⌘  P'
        end
        entry do
            name 'Quick documentation lookup'
            command '⌃  J'
        end
        entry do
            name 'External Doc'
            command '⇧  F1'
        end
        entry do
            name 'Brief Info'
            command '⌘  mouse'
        end
        entry do
            name 'Show descriptions of error at caret'
            command '⌘  F1'
        end
        entry do
            name 'Generate code...'
            command '⌘  N'
            command '⌃  ENTER'
        end
        entry do
            name 'Override methods'
            command '⌃  O'
        end
        entry do
            name 'Implement methods'
            command '⌃  I'
        end
        entry do
            name 'Surround with... '
            command '⌘  ⌥  T'
        end
        entry do
            name 'Comment / uncomment with line comment '
            command '⌘  /'
        end
        entry do
            name 'Comment / uncomment with block comment '
            command '⌘  ⌥  /'
        end
        entry do
            name 'Extend selection'
            command '⌥  UP'
        end
        entry do
            name 'Shrink selection'
            command '⌥  DOWN'
        end
        entry do
            name 'Context info'
            command '⌃  ⇧  Q'
        end
        entry do
            name 'Show intention actions and quick-fixes '
            command '⌃  ENTER'
        end
        entry do
            name 'Reformat code'
            command '⌘  ⌥  L'
        end
        entry do
            name 'Optimize imports'
            command '⌃  ⌥  O'
        end
        entry do
            name 'Auto-indent line(s)'
            command '⌃  ⌥  I'
        end
        entry do
            name 'Indent'
            command 'TAB'
        end
        entry do
            name 'Unindent selected lines'
            command '⇧  TAB'
        end
        entry do
            name 'Cut current line to clipboard'
            command '⌘  X'
        end
        entry do
            name 'Copy current line to clipboard'
            command '⌘  C'
        end
        entry do
            name 'Paste from clipboard'
            command '⌘  V'
        end
        entry do
            name 'Paste from recent buffers...'
            command '⌘  ⇧  V'
        end
        entry do
            name 'Duplicate current line'
            command '⌘  D'
        end
        entry do
            name 'Delete line at caret'
            command '⌘  DELETE'
        end
        entry do
            name 'Smart line join'
            command '⌃  ⇧  J'
        end
        entry do
            name 'Smart line split'
            command '⌘  ENTER'
        end
        entry do
            name 'Start new line'
            command '⇧  ENTER'
        end
        entry do
            name 'Toggle case for word at caret or selected block '
            command '⌘  ⇧  U'
        end
        entry do
            name 'Select till code block end'
            command '⌘  ⇧  ]'
        end
        entry do
            name 'Select till code block  start'
            command '⌘  ⇧  ['
        end
        entry do
            name 'Delete to word end'
            command '⌥  DELETE'
        end
        entry do
            name 'Delete to word start'
            command '⌥  DELETE'
        end
        entry do
            name 'Expand code block'
            command '⌘ + '
        end
        entry do
            name 'Collapse code block'
            command '⌘  -'
        end
        entry do
            name 'Expand all'
            command '⌘  ⇧  '
        end
        entry do
            name 'Collapse all'
            command '⌘  ⇧  -'
        end
        entry do
            name 'Close active editor tab'
            command '⌘  W'
        end

    end
    category do
        id 'Refactoring'

        entry do
            name 'Copy'
            command 'F5'
        end
        entry do
            name 'Move'
            command 'F6'
        end
        entry do
            name 'Safe Delete'
            command '⌘ DELETE'
        end
        entry do
            name 'Rename'
            command '⇧  F6'
        end
        entry do
            name 'Refactor this'
            command '⌃  T'
        end
        entry do
            name 'Change Signature'
            command '⌘  F6'
        end
        entry do
            name 'Inline'
            command '⌘  ⌥  N'
        end
        entry do
            name 'Extract Method'
            command '⌘  ⌥  M'
        end
        entry do
            name 'Extract Variable'
            command '⌘  ⌥  V'
        end
        entry do
            name 'Extract Field'
            command '⌘  ⌥  F'
        end
        entry do
            name 'Extract Constant'
            command '⌘  ⌥  C'
        end
        entry do
            name 'Extract Parameter'
            command '⌘  ⌥  P'
        end

    end

    category do
        id 'Navigation'
        entry do
            name 'Go to class'
            command '⌘  O'
        end
        entry do
            name 'Go to file'
            command '⌘  ⇧  O'
        end
        entry do
            name 'Go to symbol'
            command '⌘  ⌥  O'
        end
        entry do
            name 'Go to next editor tab'
            command '⌃  LEFT'
        end
        entry do
            name 'Go to previous editor tab'
            command '⌃  RIGHT'
        end
        entry do
            name 'Go back to previous tool window'
            command 'F12'
        end
        entry do
            name 'Go to editor (from tool window)'
            command 'ESC'
        end
        entry do
            name 'Hide active or last active window'
            command '⇧ ESC'
        end
        entry do
            name 'Go to line'
            command '⌘  L'
        end
        entry do
            name 'Recent files popup'
            command '⌘  E'
        end
        entry do
            name 'Navigate back'
            command '⌘  ⌥  LEFT'
        end
        entry do
            name 'Navigate forward'
            command ' ⌘  ⌥  RIGHT'
        end
        entry do
            name 'Navigate to last edit location'
            command '⌘  ⇧  DELETE'
        end
        entry do
            name 'Select current  file or symbol in any view'
            command '⌥  F1'
        end
        entry do
            name 'Go to declaration'
            command '⌘  B'
            command '⌘  CLICK'
        end
        entry do
            name 'Go to implementation(s)'
            command '⌘  ⌥  B'
        end
        entry do
            name 'Open quick definition lookup'
            command '⌥  SPACE'
            command '⌘  Y'
        end
        entry do
            name 'Go to type declaration'
            command '⌃  ⇧  B'
        end
        entry do
            name 'Go to super-method / super-class'
            command '⌘  U'
        end
        entry do
            name 'Go to previous method'
            command '⌃  UP'
        end
        entry do
            name 'Go to next method'
            command '⌃  DOWN'
        end
        entry do
            name 'Move to code block end'
            command '⌘  ]'
        end
        entry do
            name 'Move to code block start'
            command '⌘  ['
        end
        entry do
            name 'File structure popup'
            command '⌘  F12'
        end
        entry do
            name 'Type hierarchy'
            command '⌃  H'
        end
        entry do
            name 'Method hierarchy'
            command '⌘  ⇧  H'
        end
        entry do
            name 'Call hierarchy'
            command '⌃  ⌥  H'
        end
        entry do
            name 'Next highlighted error'
            command 'F2'
        end
        entry do
            name 'Previous highlighted error'
            command '⇧  F2'
        end
        entry do
            name 'Edit source'
            command 'F4'
        end
        entry do
            name 'View source'
            command '⌘  DOWN'
        end
        entry do
            name 'Show navigation bar'
            command '⌥  HOME'
        end
        entry do
            name 'Toggle bookmark'
            command 'F3'
        end
        entry do
            name 'Toggle bookmark with mnemonic'
            command '⌥  F3'
        end
        entry do
            name 'Go to numbered bookmark'
            command '⌃  0 ... ⌃  9'
        end
        entry do
            name 'Show bookmarks'
            command '⌘  F3'
        end
    end

    category do
        id 'Compile and Run'
        entry do
            name 'Make project'
            command '⌘  F9'
        end
        entry do
            name 'Compile selected file, package or module'
            command '⌘  ⇧  F9'
        end
        entry do
            name 'Select con guration and run / debug'
            command '⌃  ⌥  R/D'
        end
        entry do
            name 'Run/Debug'
            command '⌃  R/D'
        end
        entry do
            name 'Run context con guration from editor'
            command '⌃  ⇧ R'
            command '⌃  ⇧ D'
        end
    end

    category do
        id 'Usage Search'

        entry do
            name 'Find usages'
            command '⌥  F7'
        end
        entry do
            name 'Find usages in  file'
            command '⌘  F7'
        end
        entry do
            name 'Highlight usages in  file'
            command '⌘  ⇧  F7'
        end
        entry do
            name 'Show usages'
            command '⌘  ⌥  F7'
        end
    end

    category do
        id 'VCS / Local History'
        entry do
            name 'Commit project to VCS'
            command '⌘  K'
        end
        entry do
            name 'Update project from VCS'
            command '⌘  T'
        end
        entry do
            name 'Push commits'
            command '⌘  ⇧  K'
        end
        entry do
            name '‘VCS’ quick popup'
            command '⌃  V'
        end
    end


    category do
        id 'Live Templates'
        entry do
            name 'Surround with Live Template'
            command '⌘  ⌥  J'
        end
        entry do
            name 'Insert Live Template'
            command '⌘  J'
        end
    end


    notes 'Made with love by [Rieon](http://rieon.cn/ "Rieon\'s Website")'
end
