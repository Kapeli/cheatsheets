cheatsheet do
  title 'Visual Studio Code'
  docset_file_name 'Visual_Studio_Code'
  keyword 'vscode'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Basic Editing'
    entry do
      command 'CMD+X'
      name 'Cut line (empty selection)'
      notes '`editor.action.clipboardCutAction`'
    end
    entry do
      command 'CMD+C'
      name 'Copy line (empty selection)'
      notes '`editor.action.clipboardCopyAction`'
    end
    entry do
      command 'SHIFT+Delete'
      name 'Cut line'
      notes '`editor.action.cutLines`'
    end
    entry do
      command 'CMD+SHIFT+K'
      name 'Delete line'
      notes '`editor.action.deleteLines`'
    end
    entry do
      command 'CMD+Enter'
      name 'Insert line below'
      notes '`editor.action.insertLineAfter`'
    end
    entry do
      command 'CMD+SHIFT+Enter'
      name 'Insert line above'
      notes '`editor.action.insertLineBefore`'
    end
    entry do
      command 'ALT+Arrow Down'
      name 'Move line down'
      notes '`editor.action.moveLinesDownAction`'
    end
    entry do
      command 'ALT+Arrow Up'
      name 'Move line up'
      notes '`editor.action.moveLinesUpAction`'
    end
    entry do
      command 'ALT+SHIFT+Arrow Down'
      name 'Copy line down'
      notes '`editor.action.copyLinesDownAction`'
    end
    entry do
      command 'ALT+SHIFT+Arrow Up'
      name 'Copy line up'
      notes '`editor.action.copyLinesUpAction`'
    end
    entry do
      command 'CMD+SHIFT+L'
      name 'Select all occurrences of current selection'
      notes '`editor.action.selectHighlights`'
    end
    entry do
      command 'CMD+F2'
      name 'Select all occurrences of current word'
      notes '`editor.action.changeAll`'
    end
    entry do
      command 'CMD+ALT+Arrow Down'
      name 'Insert cursor below'
      notes '`editor.action.insertCursorBelow`'
    end
    entry do
      command 'CMD+ALT+Arrow Up'
      name 'Insert cursor above'
      notes '`editor.action.insertCursorAbove`'
    end
    entry do
      command 'CMD+ALT+]'
      name 'Jump to matching bracket'
      notes '`editor.action.jumpToBracket`'
    end
    entry do
      command 'CMD+]'
      name 'Indent line'
      notes '`editor.action.indentLines`'
    end
    entry do
      command 'CMD+['
      name 'Outdent line'
      notes '`editor.action.outdentLines`'
    end
    entry do
      command 'CMD+Arrow Left'
      name 'Go to beginning of line'
      notes '`cursorHome`'
    end
    entry do
      command 'CMD+Arrow Right'
      name 'Go to end of line'
      notes '`cursorEnd`'
    end
    entry do
      command 'CMD+Arrow Down'
      name 'Go to end of file'
      notes '`cursorBottom`'
    end
    entry do
      command 'CMD+Arrow Up'
      name 'Go to beginning of file'
      notes '`cursorTop`'
    end
    entry do
      command 'CMD+/'
      name 'Toggle line comment'
      notes '`editor.action.commentLine`'
    end
    entry do
      command 'ALT+SHIFT+A'
      name 'Toggle block comment'
      notes '`editor.action.blockComment`'
    end
    entry do
      command 'CMD+F'
      name 'Find'
      notes '`actions.find`'
    end
    entry do
      command 'CMD+ALT+F'
      name 'Replace'
      notes '`editor.action.startFindReplaceAction`'
    end
    entry do
      command 'CMD+G'
      name 'Find next'
      notes '`editor.action.nextMatchFindAction`'
    end
    entry do
      command 'CMD+SHIFT+G'
      name 'Find previous'
      notes '`editor.action.previousMatchFindAction`'
    end
    entry do
      command 'CMD+M'
      name 'Toggle use of tab key for setting focus'
      notes '`editor.action.toggleTabFocusMode`'
    end
  end
  category do
    id 'Rich Languages Editing'
    entry do
      command 'CTRL+Space'
      name 'Trigger suggest'
      notes '`editor.action.triggerSuggest`'
    end
    entry do
      command 'SHIFT+ALT+F'
      name 'Format code'
      notes '`editor.action.format`'
    end
    entry do
      command 'F12'
      name 'Go to definition'
      notes '`editor.action.goToDeclaration`'
    end
    entry do
      command 'ALT+F12'
      name 'Peek definition'
      notes '`editor.action.previewDeclaration`'
    end
    entry do
      command 'CMD+.'
      name 'Quick fix'
      notes '`editor.action.quickFix`'
    end
    entry do
      command 'SHIFT+F12'
      name 'Show references'
      notes '`editor.action.referenceSearch.trigger`'
    end
    entry do
      command 'F2'
      name 'Rename symbol'
      notes '`editor.action.rename`'
    end
    entry do
      command 'CMD+Arrow Down'
      name 'Replace with next value'
      notes '`editor.action.inPlaceReplace.down`'
    end
    entry do
      command 'CMD+Arrow Up'
      name 'Replace with previous value'
      notes '`editor.action.inPlaceReplace.up`'
    end
    entry do
      command 'CTRL+SHIFT+Arrow Right'
      name 'Expand ast select'
      notes '`editor.action.smartSelect.grow`'
    end
    entry do
      command 'CTRL+SHIFT+Arrow Left'
      name 'Shrink ast select'
      notes '`editor.action.smartSelect.shrink`'
    end
  end
  category do
    id 'Navigation'
    entry do
      command 'CMD+T'
      name 'Show all symbols'
      notes '`workbench.action.showAllSymbols`'
    end
    entry do
      command 'CTRL+G'
      name 'Go to line...'
      notes '`workbench.action.gotoLine`'
    end
    entry do
      command 'CMD+P'
      name 'Go to file...'
      notes '`workbench.action.quickOpen`'
    end
    entry do
      command 'CMD+SHIFT+O'
      name 'Go to symbol...'
      notes '`workbench.action.gotoSymbol`'
    end
    entry do
      command 'CMD+SHIFT+M'
      name 'Show errors and warnings'
      notes '`workbench.action.showErrorsWarnings`'
    end
    entry do
      command 'F8'
      name 'Go to next error or warning'
      notes '`editor.action.marker.next`'
    end
    entry do
      command 'SHIFT+F8'
      name 'Go to previous error or warning'
      notes '`editor.action.marker.prev`'
    end
    entry do
      command 'CMD+SHIFT+P'
      name 'Show all commands'
      notes '`workbench.action.showCommands`'
    end
    entry do
      command 'CTRL+Tab'
      name 'Navigate history'
      notes '`workbench.action.openPreviousEditor`'
    end
    entry do
      command 'CTRL+-'
      name 'Go back'
      notes '`workbench.action.navigateBack`'
    end
    entry do
      command 'CTRL+SHIFT+-'
      name 'Go forward'
      notes '`workbench.action.navigateForward`'
    end
  end
  category do
    id 'Editor/Window Management'
    entry do
      command 'CMD+SHIFT+N'
      name 'New window'
      notes '`workbench.action.newWindow`'
    end
    entry do
      command 'CMD+SHIFT+W'
      name 'Close window'
      notes '`workbench.action.closeWindow`'
    end
    entry do
      command 'CMD+W'
      name 'Close editor'
      notes '`workbench.action.closeActiveEditor`'
    end
    entry do
      command 'unassigned'
      name 'Cycle between opened editors'
      notes '`workbench.action.cycleEditor`'
    end
    entry do
      command 'CMD+\\'
      name 'Split editor'
      notes '`workbench.action.splitEditor`'
    end
    entry do
      command 'CMD+1'
      name 'Focus into left hand editor'
      notes '`workbench.action.focusFirstEditor`'
    end
    entry do
      command 'CMD+2'
      name 'Focus into side editor'
      notes '`workbench.action.focusSecondEditor`'
    end
    entry do
      command 'CMD+3'
      name 'Focus into right hand editor'
      notes '`workbench.action.focusThirdEditor`'
    end
    entry do
      command 'CMD+ALT+Arrow Left'
      name 'Focus into next editor on the left'
      notes '`workbench.action.focusLeftEditor`'
    end
    entry do
      command 'CMD+ALT+Arrow Right'
      name 'Focus into next editor on the right'
      notes '`workbench.action.focusRightEditor`'
    end
  end
  category do
    id 'File Management'
    entry do
      command 'CMD+N'
      name 'New file'
      notes '`workbench.action.files.newUntitledFile`'
    end
    entry do
      command 'unassigned'
      name 'Open file...'
      notes '`workbench.action.files.openFile`'
    end
    entry do
      command 'CMD+S'
      name 'Save'
      notes '`workbench.action.files.save`'
    end
    entry do
      command 'CMD+SHIFT+S'
      name 'Save all'
      notes '`workbench.action.files.saveAll`'
    end
    entry do
      command 'CMD+ALT+S'
      name 'Save as...'
      notes '`workbench.action.files.saveAs`'
    end
  end
  category do
    id 'Display'
    entry do
      command 'CMD+CTRL+F'
      name 'Toggle full screen'
      notes '`workbench.action.toggleFullScreen`'
    end
    entry do
      command 'CMD+='
      name 'Zoom in'
      notes '`workbench.action.zoomIn`'
    end
    entry do
      command 'CMD+-'
      name 'Zoom out'
      notes '`workbench.action.zoomOut`'
    end
    entry do
      command 'CMD+B'
      name 'Toggle sidebar visibility'
      notes '`workbench.action.toggleSidebarVisibility`'
    end
    entry do
      command 'CMD+SHIFT+D'
      name 'Show debug'
      notes '`workbench.view.debug`'
    end
    entry do
      command 'CMD+SHIFT+E'
      name 'Show explorer'
      notes '`workbench.view.explorer`'
    end
    entry do
      command 'CMD+SHIFT+F'
      name 'Show search'
      notes '`workbench.view.search`'
    end
    entry do
      command 'CMD+SHIFT+J'
      name 'Toggle search details'
      notes '`workbench.action.search.toggleQueryDetails`'
    end
    entry do
      command 'CMD+SHIFT+C'
      name 'Open new console'
      notes '`workbench.action.terminal.openNativeConsole`'
    end
    entry do
      command 'CMD+SHIFT+U'
      name 'Show output'
      notes '`workbench.action.output.showOutput`'
    end
    entry do
      command 'CMD+U L'
      name 'Show omnisharp log'
      notes '`omnisharp.show.generalLog`'
    end
    entry do
      command 'CMD+U CMD+L'
      name 'Show omnisharp log to the side'
      notes '`omnisharp.show.generalLogOnSide`'
    end
    entry do
      command 'CMD+SHIFT+V'
      name 'Toggle markdown preview'
      notes '`workbench.action.markdown.togglePreview`'
    end
  end
  category do
    id 'Debug'
    entry do
      command 'F9'
      name 'Toggle breakpoint'
      notes '`editor.debug.action.toggleBreakpoint`'
    end
    entry do
      command 'F5'
      name 'Continue'
      notes '`workbench.action.debug.play`'
    end
    entry do
      command 'F5'
      name 'Pause'
      notes '`workbench.action.debug.start`'
    end
    entry do
      command 'F11'
      name 'Step into'
      notes '`workbench.action.debug.stepInto`'
    end
    entry do
      command 'SHIFT+F11'
      name 'Step out'
      notes '`workbench.action.debug.stepOut`'
    end
    entry do
      command 'F10'
      name 'Step over'
      notes '`workbench.action.debug.stepOver`'
    end
    entry do
      command 'SHIFT+F5'
      name 'Stop'
      notes '`workbench.action.debug.stop`'
    end
  end
  category do
    id 'Tasks'
    entry do
      command 'CMD+SHIFT+B'
      name 'Run build task'
      notes '`workbench.action.tasks.build`'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'Run test task'
      notes '`workbench.action.tasks.test`'
    end
  end

  notes '* More information at https://code.visualstudio.com/Docs/customization'
end