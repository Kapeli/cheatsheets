cheatsheet do
  title 'Visual Studio Code'
  docset_file_name 'vscode'
  keyword 'vscode'
  introduction 'Microsoft Visual Studio Code cheat sheet'
  category do
    id 'Basic Editing'
    entry do
      command '⌘X'
      name 'Cut line (empty selection)'
      notes 'editor.action.clipboardCutAction'
    end
    entry do
      command '⌘C'
      name 'Copy line (empty selection)'
      notes 'editor.action.clipboardCopyAction'
    end
    entry do
      command '⇧Delete'
      name 'Cut line'
      notes 'editor.action.cutLines'
    end
    entry do
      command '⇧⌘K'
      name 'Delete Line'
      notes 'editor.action.deleteLines'
    end
    entry do
      command '⌘Enter'
      name 'Insert Line Below'
      notes 'editor.action.insertLineAfter'
    end
    entry do
      command '⇧⌘Enter'
      name 'Insert Line Above'
      notes 'editor.action.insertLineBefore'
    end
    entry do
      command '⌥↓'
      name 'Move Line Down'
      notes 'editor.action.moveLinesDownAction'
    end
    entry do
      command '⌥↑'
      name 'Move Line Up'
      notes 'editor.action.moveLinesUpAction'
    end
    entry do
      command '⇧⌥↓'
      name 'Copy Line Down'
      notes 'editor.action.copyLinesDownAction'
    end
    entry do
      command '⇧⌥↑'
      name 'Copy Line Up'
      notes 'editor.action.copyLinesUpAction'
    end
    entry do
      command '⇧⌘L'
      name 'Select all occurrences of current selection'
      notes 'editor.action.selectHighlights'
    end
    entry do
      command '⌘F2'
      name 'Select all occurrences of current word'
      notes 'editor.action.changeAll'
    end
    entry do
      command '⌥⌘↓'
      name 'Insert Cursor Below'
      notes 'editor.action.insertCursorBelow'
    end
    entry do
      command '⌥⌘↑'
      name 'Insert Cursor Above'
      notes 'editor.action.insertCursorAbove'
    end
    entry do
      command '⌥⌘]'
      name 'Jump to matching bracket'
      notes 'editor.action.jumpToBracket'
    end
    entry do
      command '⌘]'
      name 'Indent Line'
      notes 'editor.action.indentLines'
    end
    entry do
      command '⌘['
      name 'Outdent Line'
      notes 'editor.action.outdentLines'
    end
    entry do
      command '⌘←'
      name 'Go to Beginning of Line'
      notes 'cursorHome'
    end
    entry do
      command '⌘→'
      name 'Go to End of Line'
      notes 'cursorEnd'
    end
    entry do
      command '⌘↓'
      name 'Go to End of File'
      notes 'cursorBottom'
    end
    entry do
      command '⌘↑'
      name 'Go to Beginning of File'
      notes 'cursorTop'
    end
    entry do
      command '⌘/'
      name 'Toggle Line Comment'
      notes 'editor.action.commentLine'
    end
    entry do
      command '⇧⌥A'
      name 'Toggle Block Comment'
      notes 'editor.action.blockComment'
    end
    entry do
      command '⌘F'
      name 'Find'
      notes 'actions.find'
    end
    entry do
      command '⌥⌘F'
      name 'Replace'
      notes 'editor.action.startFindReplaceAction'
    end
    entry do
      command '⌘G'
      name 'Find Next'
      notes 'editor.action.nextMatchFindAction'
    end
    entry do
      command '⇧⌘G'
      name 'Find Previous'
      notes 'editor.action.previousMatchFindAction'
    end
    entry do
      command '⌘M'
      name 'Toggle Use of Tab Key for Setting Focus'
      notes 'editor.action.toggleTabFocusMode'
    end
  end
  category do
    id 'Rich Languages Editing'
    entry do
      command '⌃Space'
      name 'Trigger Suggest'
      notes 'editor.action.triggerSuggest'
    end
    entry do
      command '⌥⌘F'
      name 'Format Code'
      notes 'editor.action.format'
    end
    entry do
      command 'F12'
      name 'Go to Definition'
      notes 'editor.action.goToDeclaration'
    end
    entry do
      command '⌥F12'
      name 'Peek Definition'
      notes 'editor.action.previewDeclaration'
    end
    entry do
      command '⌘.'
      name 'Quick Fix'
      notes 'editor.action.quickFix'
    end
    entry do
      command '⇧F12'
      name 'Show References'
      notes 'editor.action.referenceSearch.trigger'
    end
    entry do
      command 'F2'
      name 'Rename Symbol'
      notes 'editor.action.rename'
    end
    entry do
      command '⌘↓'
      name 'Replace with Next Value'
      notes 'editor.action.inPlaceReplace.down'
    end
    entry do
      command '⌘↑'
      name 'Replace with Previous Value'
      notes 'editor.action.inPlaceReplace.up'
    end
    entry do
      command '⌃⇧→'
      name 'Expand AST Select'
      notes 'editor.action.smartSelect.grow'
    end
    entry do
      command '⌃⇧←'
      name 'Shrink AST Select'
      notes 'editor.action.smartSelect.shrink'
    end
  end
  category do
    id 'Navigation'
    entry do
      command '⌘T'
      name 'Show All Symbols'
      notes 'workbench.action.showAllSymbols'
    end
    entry do
      command '⌃G'
      name 'Go to Line...'
      notes 'workbench.action.gotoLine'
    end
    entry do
      command '⌘O'
      name 'Go to File...'
      notes 'workbench.action.quickOpen'
    end
    entry do
      command '⇧⌘O'
      name 'Go to Symbol...'
      notes 'workbench.action.gotoSymbol'
    end
    entry do
      command '⇧⌘M'
      name 'Show Errors and Warnings'
      notes 'workbench.action.showErrorsWarnings'
    end
    entry do
      command 'F8'
      name 'Go to Next Error or Warning'
      notes 'editor.action.marker.next'
    end
    entry do
      command '⇧F8'
      name 'Go to Previous Error or Warning'
      notes 'editor.action.marker.prev'
    end
    entry do
      command '⇧⌘P'
      name 'Show All Commands'
      notes 'workbench.action.showCommands'
    end
    entry do
      command '⌃Tab'
      name 'Navigate History'
      notes 'workbench.action.openPreviousEditor'
    end
    entry do
      command '⌃-'
      name 'Go Back'
      notes 'workbench.action.navigateBack'
    end
    entry do
      command '⌃⇧-'
      name 'Go Forward'
      notes 'workbench.action.navigateForward'
    end
  end
  category do
    id 'Editor/Window Management'
    entry do
      command '⇧⌘N'
      name 'New Window'
      notes 'workbench.action.newWindow'
    end
    entry do
      command '⇧⌘W'
      name 'Close Window'
      notes 'workbench.action.closeWindow'
    end
    entry do
      command '⌘W'
      name 'Close Editor'
      notes 'workbench.action.closeActiveEditor'
    end
    entry do
      command 'unassigned'
      name 'Cycle Between Opened Editors'
      notes 'workbench.action.cycleEditor'
    end
    entry do
      command '⌘\\'
      name 'Split Editor'
      notes 'workbench.action.splitEditor'
    end
    entry do
      command '⌘1'
      name 'Focus into Left Hand Editor'
      notes 'workbench.action.focusFirstEditor'
    end
    entry do
      command '⌘2'
      name 'Focus into Side Editor'
      notes 'workbench.action.focusSecondEditor'
    end
    entry do
      command '⌘3'
      name 'Focus into Right Hand Editor'
      notes 'workbench.action.focusThirdEditor'
    end
    entry do
      command '⌥⌘←'
      name 'Focus into Next Editor on the Left'
      notes 'workbench.action.focusLeftEditor'
    end
    entry do
      command '⌥⌘→'
      name 'Focus into Next Editor on the Right'
      notes 'workbench.action.focusRightEditor'
    end
  end
  category do
    id 'File Management'
    entry do
      command '⌘N'
      name 'New File'
      notes 'workbench.action.files.newUntitledFile'
    end
    entry do
      command 'unassigned'
      name 'Open File...'
      notes 'workbench.action.files.openFile'
    end
    entry do
      command '⌘S'
      name 'Save'
      notes 'workbench.action.files.save'
    end
    entry do
      command '⇧⌘S'
      name 'Save All'
      notes 'workbench.action.files.saveAll'
    end
    entry do
      command '⌥⌘S'
      name 'Save As...'
      notes 'workbench.action.files.saveAs'
    end
  end
  category do
    id 'Display'
    entry do
      command '⌃⌘F'
      name 'Toggle Full Screen'
      notes 'workbench.action.toggleFullScreen'
    end
    entry do
      command '⌘='
      name 'Zoom in'
      notes 'workbench.action.zoomIn'
    end
    entry do
      command '⌘-'
      name 'Zoom out'
      notes 'workbench.action.zoomOut'
    end
    entry do
      command '⌘B'
      name 'Toggle Sidebar Visibility'
      notes 'workbench.action.toggleSidebarVisibility'
    end
    entry do
      command '⇧⌘D'
      name 'Show Debug'
      notes 'workbench.view.debug'
    end
    entry do
      command '⇧⌘E'
      name 'Show Explorer'
      notes 'workbench.view.explorer'
    end
    entry do
      command '⇧⌘F'
      name 'Show Search'
      notes 'workbench.view.search'
    end
    entry do
      command '⇧⌘J'
      name 'Toggle Search Details'
      notes 'workbench.action.search.toggleQueryDetails'
    end
    entry do
      command '⇧⌘C'
      name 'Open New Console'
      notes 'workbench.action.terminal.openNativeConsole'
    end
    entry do
      command '⇧⌘U'
      name 'Show Output'
      notes 'workbench.action.output.showOutput'
    end
    entry do
      command '⌘U L'
      name 'Show OmniSharp Log'
      notes 'omnisharp.show.generalLog'
    end
    entry do
      command '⌘U ⌘L'
      name 'Show OmniSharp Log to the Side'
      notes 'omnisharp.show.generalLogOnSide'
    end
    entry do
      command '⇧⌘V'
      name 'Toggle Markdown Preview'
      notes 'workbench.action.markdown.togglePreview'
    end
  end
  category do
    id 'Debug'
    entry do
      command 'F9'
      name 'Toggle Breakpoint'
      notes 'editor.debug.action.toggleBreakpoint'
    end
    entry do
      command 'F5'
      name 'Continue'
      notes 'workbench.action.debug.play'
    end
    entry do
      command 'F5'
      name 'Pause'
      notes 'workbench.action.debug.start'
    end
    entry do
      command 'F11'
      name 'Step Into'
      notes 'workbench.action.debug.stepInto'
    end
    entry do
      command '⇧F11'
      name 'Step Out'
      notes 'workbench.action.debug.stepOut'
    end
    entry do
      command 'F10'
      name 'Step Over'
      notes 'workbench.action.debug.stepOver'
    end
    entry do
      command '⇧F5'
      name 'Stop'
      notes 'workbench.action.debug.stop'
    end
  end
  category do
    id 'Tasks'
    entry do
      command '⇧⌘B'
      name 'Run Build Task'
      notes 'workbench.action.tasks.build'
    end
    entry do
      command '⇧⌘T'
      name 'Run Test Task'
      notes 'workbench.action.tasks.test'
    end
  end

  notes 'More information at https://code.visualstudio.com/Docs/customization'
end