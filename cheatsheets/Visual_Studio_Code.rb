cheatsheet do
  title 'Visual Studio Code'
  docset_file_name 'Visual_Studio_Code'
  keyword 'vscode'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'
    entry do
      command 'SHIFT+CMD+P, F1'
      name 'Show Command Palette'
    end
    entry do
      command 'CMD+P'
      name 'Quick Open, Go to File…'
    end
    entry do
      command 'SHIFT+CMD+N'
      name 'New window/instance'
    end
    entry do
      command 'CMD+W'
      name 'Close window/instance'
    end
    entry do
      command 'CMD+,'
      name 'User Settings'
    end
    entry do
      command 'CMD+K CMD+S'
      name 'Keyboard Shortcuts'
    end
  end
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
      command 'CMD+V'
      name 'Paste'
      notes '`editor.action.clipboardPasteAction`'
    end
    entry do
      command 'SHIFT+CMD+K'
      name 'Delete Line'
      notes '`editor.action.deleteLines`'
    end
    entry do
      command 'CMD+Enter'
      name 'Insert Line Below'
      notes '`editor.action.insertLineAfter`'
    end
    entry do
      command 'SHIFT+CMD+Enter'
      name 'Insert Line Above'
      notes '`editor.action.insertLineBefore`'
    end
    entry do
      command 'OPTION+↓'
      name 'Move Line Down'
      notes '`editor.action.moveLinesDownAction`'
    end
    entry do
      command 'OPTION+↑'
      name 'Move Line Up'
      notes '`editor.action.moveLinesUpAction`'
    end
    entry do
      command 'SHIFT+OPTION+↓'
      name 'Copy Line Down'
      notes '`editor.action.copyLinesDownAction`'
    end
    entry do
      command 'SHIFT+OPTION+↑'
      name 'Copy Line Up'
      notes '`editor.action.copyLinesUpAction`'
    end
    entry do
      command 'CMD+Z'
      name 'Undo'
      notes '`undo`'
    end
    entry do
      command 'SHIFT+CMD+Z'
      name 'Redo'
      notes '`redo`'
    end
    entry do
      command 'CMD+D'
      name 'Add Selection To Next Find Match'
      notes '`editor.action.addSelectionToNextFindMatch`'
    end
    entry do
      command 'CMD+K CMD+D'
      name 'Move Last Selection To Next Find Match'
      notes '`editor.action.moveSelectionToNextFindMatch`'
    end
    entry do
      command 'CMD+U'
      name 'Undo last cursor operation'
      notes '`cursorUndo`'
    end
    entry do
      command 'SHIFT+OPTION+I'
      name 'Insert cursor at end of each line selected'
      notes '`editor.action.insertCursorAtEndOfEachLineSelected`'
    end
    entry do
      command 'SHIFT+CMD+L'
      name 'Select all occurrences of current selection'
      notes '`editor.action.selectHighlights`'
    end
    entry do
      command 'CMD+F2'
      name 'Select all occurrences of current word'
      notes '`editor.action.changeAll`'
    end
    entry do
      command 'CMD+L'
      name 'Select current line'
      notes '`expandLineSelection`'
    end
    entry do
      command 'OPTION+CMD+↓'
      name 'Insert Cursor Below'
      notes '`editor.action.insertCursorBelow`'
    end
    entry do
      command 'OPTION+CMD+↑'
      name 'Insert Cursor Above'
      notes '`editor.action.insertCursorAbove`'
    end
    entry do
      command 'SHIFT+CMD+\\'
      name 'Jump to matching bracket'
      notes '`editor.action.jumpToBracket`'
    end
    entry do
      command 'CMD+]'
      name 'Indent Line'
      notes '`editor.action.indentLines`'
    end
    entry do
      command 'CMD+['
      name 'Outdent Line'
      notes '`editor.action.outdentLines`'
    end
    entry do
      command 'Home'
      name 'Go to Beginning of Line'
      notes '`cursorHome`'
    end
    entry do
      command 'End'
      name 'Go to End of Line'
      notes '`cursorEnd`'
    end
    entry do
      command 'CMD+↓'
      name 'Go to End of File'
      notes '`cursorBottom`'
    end
    entry do
      command 'CMD+↑'
      name 'Go to Beginning of File'
      notes '`cursorTop`'
    end
    entry do
      command 'CTRL+PageDown'
      name 'Scroll Line Down'
      notes '`scrollLineDown`'
    end
    entry do
      command 'CTRL+PageUp'
      name 'Scroll Line Up'
      notes '`scrollLineUp`'
    end
    entry do
      command 'CMD+PageDown'
      name 'Scroll Page Down'
      notes '`scrollPageDown`'
    end
    entry do
      command 'CMD+PageUp'
      name 'Scroll Page Up'
      notes '`scrollPageUp`'
    end
    entry do
      command 'OPTION+CMD+['
      name 'Fold (collapse) region'
      notes '`editor.fold`'
    end
    entry do
      command 'OPTION+CMD+]'
      name 'Unfold (uncollapse) region'
      notes '`editor.unfold`'
    end
    entry do
      command 'CMD+K CMD+['
      name 'Fold (collapse) all subregions'
      notes '`editor.foldRecursively`'
    end
    entry do
      command 'CMD+K CMD+]'
      name 'Unfold (uncollapse) all subregions'
      notes '`editor.unfoldRecursively`'
    end
    entry do
      command 'CMD+K CMD+0'
      name 'Fold (collapse) all regions'
      notes '`editor.foldAll`'
    end
    entry do
      command 'CMD+K CMD+J'
      name 'Unfold (uncollapse) all regions'
      notes '`editor.unfoldAll`'
    end
    entry do
      command 'CMD+K CMD+C'
      name 'Add Line Comment'
      notes '`editor.action.addCommentLine`'
    end
    entry do
      command 'CMD+K CMD+U'
      name 'Remove Line Comment'
      notes '`editor.action.removeCommentLine`'
    end
    entry do
      command 'CMD+/'
      name 'Toggle Line Comment'
      notes '`editor.action.commentLine`'
    end
    entry do
      command 'SHIFT+OPTION+A'
      name 'Toggle Block Comment'
      notes '`editor.action.blockComment`'
    end
    entry do
      command 'CMD+F'
      name 'Find'
      notes '`actions.find`'
    end
    entry do
      command 'OPTION+CMD+F'
      name 'Replace'
      notes '`editor.action.startFindReplaceAction`'
    end
    entry do
      command 'Enter'
      name 'Find Next'
      notes '`editor.action.nextMatchFindAction`'
    end
    entry do
      command 'SHIFT+Enter'
      name 'Find Previous'
      notes '`editor.action.previousMatchFindAction`'
    end
    entry do
      command 'OPTION+Enter'
      name 'Select All Occurrences of Find Match'
      notes '`editor.action.selectAllMatches`'
    end
    entry do
      command 'OPTION+CMD+C'
      name 'Toggle Find Case Sensitive'
      notes '`toggleFindCaseSensitive`'
    end
    entry do
      command 'OPTION+CMD+R'
      name 'Toggle Find Regex'
      notes '`toggleFindRegex`'
    end
    entry do
      command 'OPTION+CMD+W'
      name 'Toggle Find Whole Word'
      notes '`toggleFindWholeWord`'
    end
    entry do
      command 'CTRL+SHIFT+M'
      name 'Toggle Use of Tab Key for Setting Focus'
      notes '`editor.action.toggleTabFocusMode`'
    end
    entry do
      command 'unassigned'
      name 'Toggle Render Whitespace'
      notes '`toggleRenderWhitespace`'
    end
    entry do
      command 'OPTION+Z'
      name 'Toggle Word Wrap'
      notes '`editor.action.toggleWordWrap`'
    end
  end
  category do
    id 'Rich Languages Editing'
    entry do
      command 'CTRL+Space'
      name 'Trigger Suggest'
      notes '`editor.action.triggerSuggest`'
    end
    entry do
      command 'SHIFT+CMD+Space'
      name 'Trigger Parameter Hints'
      notes '`editor.action.triggerParameterHints`'
    end
    entry do
      command 'SHIFT+OPTION+F'
      name 'Format Document'
      notes '`editor.action.formatDocument`'
    end
    entry do
      command 'CMD+K CMD+F'
      name 'Format Selection'
      notes '`editor.action.formatSelection`'
    end
    entry do
      command 'F12'
      name 'Go to Definition'
      notes '`editor.action.revealDefinition`'
    end
    entry do
      command 'CMD+K CMD+I'
      name 'Show Hover'
      notes '`editor.action.showHover`'
    end
    entry do
      command 'OPTION+F12'
      name 'Peek Definition'
      notes '`editor.action.peekDefinition`'
    end
    entry do
      command 'CMD+K F12'
      name 'Open Definition to the Side'
      notes '`editor.action.revealDefinitionAside`'
    end
    entry do
      command 'CMD+.'
      name 'Quick Fix'
      notes '`editor.action.quickFix`'
    end
    entry do
      command 'SHIFT+F12'
      name 'Go to References'
      notes '`editor.action.goToReferences`'
    end
    entry do
      command 'F2'
      name 'Rename Symbol'
      notes '`editor.action.rename`'
    end
    entry do
      command 'SHIFT+CMD+.'
      name 'Replace with Next Value'
      notes '`editor.action.inPlaceReplace.down`'
    end
    entry do
      command 'SHIFT+CMD+,'
      name 'Replace with Previous Value'
      notes '`editor.action.inPlaceReplace.up`'
    end
    entry do
      command 'CTRL+SHIFT+CMD+→'
      name 'Expand AST Selection'
      notes '`editor.action.smartSelect.expand`'
    end
    entry do
      command 'CTRL+SHIFT+CMD+←'
      name 'Shrink AST Selection'
      notes '`editor.action.smartSelect.shrink`'
    end
    entry do
      command 'CMD+K CMD+X'
      name 'Trim Trailing Whitespace'
      notes '`editor.action.trimTrailingWhitespace`'
    end
    entry do
      command 'CMD+K M'
      name 'Change Language Mode'
      notes '`workbench.action.editor.changeLanguageMode`'
    end
  end
  category do
    id 'Navigation'
    entry do
      command 'CMD+T'
      name 'Show All Symbols'
      notes '`workbench.action.showAllSymbols`'
    end
    entry do
      command 'CTRL+G'
      name 'Go to Line...'
      notes '`workbench.action.gotoLine`'
    end
    entry do
      command 'CMD+P'
      name 'Go to File..., Quick Open'
      notes '`workbench.action.quickOpen`'
    end
    entry do
      command 'SHIFT+CMD+O'
      name 'Go to Symbol...'
      notes '`workbench.action.gotoSymbol`'
    end
    entry do
      command 'SHIFT+CMD+M'
      name 'Show Problems'
      notes '`workbench.actions.view.problems`'
    end
    entry do
      command 'F8'
      name 'Go to Next Error or Warning'
      notes '`editor.action.marker.nextInFiles`'
    end
    entry do
      command 'SHIFT+F8'
      name 'Go to Previous Error or Warning'
      notes '`editor.action.marker.prevInFiles`'
    end
    entry do
      command 'SHIFT+CMD+P or F1'
      name 'Show All Commands'
      notes '`workbench.action.showCommands`'
    end
    entry do
      command 'CTRL+Tab'
      name 'Navigate Editor Group History'
      notes '`workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup`'
    end
    entry do
      command 'CTRL+-'
      name 'Go Back'
      notes '`workbench.action.navigateBack`'
    end
    entry do
      command 'CTRL+-'
      name 'Go back in Quick Input'
      notes '`workbench.action.quickInputBack`'
    end
    entry do
      command 'CTRL+SHIFT+-'
      name 'Go Forward'
      notes '`workbench.action.navigateForward`'
    end
  end
  category do
    id 'Editor/Window Management'
    entry do
      command 'SHIFT+CMD+N'
      name 'New Window'
      notes '`workbench.action.newWindow`'
    end
    entry do
      command 'CMD+W'
      name 'Close Window'
      notes '`workbench.action.closeWindow`'
    end
    entry do
      command 'CMD+W'
      name 'Close Editor'
      notes '`workbench.action.closeActiveEditor`'
    end
    entry do
      command 'CMD+K F'
      name 'Close Folder'
      notes '`workbench.action.closeFolder`'
    end
    entry do
      command 'unassigned'
      name 'Cycle Between Editor Groups'
      notes '`workbench.action.navigateEditorGroups`'
    end
    entry do
      command 'CMD+\\'
      name 'Split Editor'
      notes '`workbench.action.splitEditor`'
    end
    entry do
      command 'CMD+1'
      name 'Focus into First Editor Group'
      notes '`workbench.action.focusFirstEditorGroup`'
    end
    entry do
      command 'CMD+2'
      name 'Focus into Second Editor Group'
      notes '`workbench.action.focusSecondEditorGroup`'
    end
    entry do
      command 'CMD+3'
      name 'Focus into Third Editor Group'
      notes '`workbench.action.focusThirdEditorGroup`'
    end
    entry do
      command 'unassigned'
      name 'Focus into Editor Group on the Left'
      notes '`workbench.action.focusPreviousGroup`'
    end
    entry do
      command 'unassigned'
      name 'Focus into Editor Group on the Right'
      notes '`workbench.action.focusNextGroup`'
    end
    entry do
      command 'CMD+K SHIFT+CMD+←'
      name 'Move Editor Left'
      notes '`workbench.action.moveEditorLeftInGroup`'
    end
    entry do
      command 'CMD+K SHIFT+CMD+→'
      name 'Move Editor Right'
      notes '`workbench.action.moveEditorRightInGroup`'
    end
    entry do
      command 'CMD+K ←'
      name 'Move Active Editor Group Left'
      notes '`workbench.action.moveActiveEditorGroupLeft`'
    end
    entry do
      command 'CMD+K →'
      name 'Move Active Editor Group Right'
      notes '`workbench.action.moveActiveEditorGroupRight`'
    end
    entry do
      command 'CTRL+CMD+→'
      name 'Move Editor into Next Group'
      notes '`workbench.action.moveEditorToNextGroup`'
    end
    entry do
      command 'CTRL+CMD+←'
      name 'Move Editor into Previous Group'
      notes '`workbench.action.moveEditorToPreviousGroup`'
    end
  end
  category do
    id 'File Management'
    entry do
      command 'CMD+N'
      name 'New File'
      notes '`workbench.action.files.newUntitledFile`'
    end
    entry do
      command 'unassigned'
      name 'Open File...'
      notes '`workbench.action.files.openFile`'
    end
    entry do
      command 'CMD+S'
      name 'Save'
      notes '`workbench.action.files.save`'
    end
    entry do
      command 'OPTION+CMD+S'
      name 'Save All'
      notes '`workbench.action.files.saveAll`'
    end
    entry do
      command 'SHIFT+CMD+S'
      name 'Save As...'
      notes '`workbench.action.files.saveAs`'
    end
    entry do
      command 'CMD+W'
      name 'Close'
      notes '`workbench.action.closeActiveEditor`'
    end
    entry do
      command 'OPTION+CMD+T'
      name 'Close Others'
      notes '`workbench.action.closeOtherEditors`'
    end
    entry do
      command 'CMD+K W'
      name 'Close Group'
      notes '`workbench.action.closeEditorsInGroup`'
    end
    entry do
      command 'unassigned'
      name 'Close Other Groups'
      notes '`workbench.action.closeEditorsInOtherGroups`'
    end
    entry do
      command 'unassigned'
      name 'Close Group to Left'
      notes '`workbench.action.closeEditorsToTheLeft`'
    end
    entry do
      command 'unassigned'
      name 'Close Group to Right'
      notes '`workbench.action.closeEditorsToTheRight`'
    end
    entry do
      command 'CMD+K CMD+W'
      name 'Close All'
      notes '`workbench.action.closeAllEditors`'
    end
    entry do
      command 'SHIFT+CMD+T'
      name 'Reopen Closed Editor'
      notes '`workbench.action.reopenClosedEditor`'
    end
    entry do
      command 'CMD+K Enter'
      name 'Keep Open'
      notes '`workbench.action.keepEditor`'
    end
    entry do
      command 'CMD+K P'
      name 'Copy Path of Active File'
      notes '`workbench.action.files.copyPathOfActiveFile`'
    end
    entry do
      command 'CMD+K R'
      name 'Reveal Active File in Windows'
      notes '`workbench.action.files.revealActiveFileInWindows`'
    end
    entry do
      command 'CMD+K O'
      name 'Show Opened File in New Window'
      notes '`workbench.action.files.showOpenedFileInNewWindow`'
    end
    entry do
      command 'unassigned'
      name 'Compare Opened File With'
      notes '`workbench.files.action.compareFileWith`'
    end
  end
  category do
    id 'Display'
    entry do
      command 'CTRL+CMD+F'
      name 'Toggle Full Screen'
      notes '`workbench.action.toggleFullScreen`'
    end
    entry do
      command 'CMD+K Z'
      name 'Toggle Zen Mode'
      notes '`workbench.action.toggleZenMode`'
    end
    entry do
      command 'Escape Escape'
      name 'Leave Zen Mode'
      notes '`workbench.action.exitZenMode`'
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
      command 'CMD+Numpad0'
      name 'Reset Zoom'
      notes '`workbench.action.zoomReset`'
    end
    entry do
      command 'CMD+B'
      name 'Toggle Sidebar Visibility'
      notes '`workbench.action.toggleSidebarVisibility`'
    end
    entry do
      command 'SHIFT+CMD+E'
      name 'Show Explorer / Toggle Focus'
      notes '`workbench.view.explorer`'
    end
    entry do
      command 'SHIFT+CMD+F'
      name 'Show Search'
      notes '`workbench.view.search`'
    end
    entry do
      command 'CTRL+SHIFT+G'
      name 'Show Source Control'
      notes '`workbench.view.scm`'
    end
    entry do
      command 'SHIFT+CMD+D'
      name 'Show Run'
      notes '`workbench.view.debug`'
    end
    entry do
      command 'SHIFT+CMD+X'
      name 'Show Extensions'
      notes '`workbench.view.extensions`'
    end
    entry do
      command 'SHIFT+CMD+U'
      name 'Show Output'
      notes '`workbench.action.output.toggleOutput`'
    end
    entry do
      command 'CTRL+Q'
      name 'Quick Open View'
      notes '`workbench.action.quickOpenView`'
    end
    entry do
      command 'SHIFT+CMD+C'
      name 'Open New Command Prompt'
      notes '`workbench.action.terminal.openNativeConsole`'
    end
    entry do
      command 'SHIFT+CMD+V'
      name 'Toggle Markdown Preview'
      notes '`markdown.showPreview`'
    end
    entry do
      command 'CMD+K V'
      name 'Open Preview to the Side'
      notes '`markdown.showPreviewToSide`'
    end
    entry do
      command 'CTRL+`'
      name 'Toggle Integrated Terminal'
      notes '`workbench.action.terminal.toggleTerminal`'
    end
  end
  category do
    id 'Search'
    entry do
      command 'SHIFT+CMD+F'
      name 'Show Search'
      notes '`workbench.view.search`'
    end
    entry do
      command 'SHIFT+CMD+H'
      name 'Replace in Files'
      notes '`workbench.action.replaceInFiles`'
    end
    entry do
      command 'OPTION+CMD+C'
      name 'Toggle Match Case'
      notes '`toggleSearchCaseSensitive`'
    end
    entry do
      command 'OPTION+CMD+W'
      name 'Toggle Match Whole Word'
      notes '`toggleSearchWholeWord`'
    end
    entry do
      command 'OPTION+CMD+R'
      name 'Toggle Use Regular Expression'
      notes '`toggleSearchRegex`'
    end
    entry do
      command 'SHIFT+CMD+J'
      name 'Toggle Search Details'
      notes '`workbench.action.search.toggleQueryDetails`'
    end
    entry do
      command 'F4'
      name 'Focus Next Search Result'
      notes '`search.action.focusNextSearchResult`'
    end
    entry do
      command 'SHIFT+F4'
      name 'Focus Previous Search Result'
      notes '`search.action.focusPreviousSearchResult`'
    end
    entry do
      command '↓'
      name 'Show Next Search Term'
      notes '`history.showNext`'
    end
    entry do
      command '↑'
      name 'Show Previous Search Term'
      notes '`history.showPrevious`'
    end
  end
  category do
    id 'Search Editor'
    entry do
      command 'CMD+Enter'
      name 'Open Results In Editor'
      notes '`search.action.openInEditor`'
    end
    entry do
      command 'Escape'
      name 'Focus Search Editor Input'
      notes '`search.action.focusQueryEditorWidget`'
    end
    entry do
      command 'SHIFT+CMD+R'
      name 'Search Again'
      notes '`rerunSearchEditorSearch`'
    end
    entry do
      command 'SHIFT+CMD+Backspace'
      name 'Delete File Results'
      notes '`search.searchEditor.action.deleteFileResults`'
    end
  end
  category do
    id 'Preferences'
    entry do
      command 'CMD+,'
      name 'Open Settings'
      notes '`workbench.action.openSettings`'
    end
    entry do
      command 'unassigned'
      name 'Open Workspace Settings'
      notes '`workbench.action.openWorkspaceSettings`'
    end
    entry do
      command 'CMD+K CMD+S'
      name 'Open Keyboard Shortcuts'
      notes '`workbench.action.openGlobalKeybindings`'
    end
    entry do
      command 'unassigned'
      name 'Open User Snippets'
      notes '`workbench.action.openSnippets`'
    end
    entry do
      command 'CMD+K CMD+T'
      name 'Select Color Theme'
      notes '`workbench.action.selectTheme`'
    end
    entry do
      command 'unassigned'
      name 'Configure Display Language'
      notes '`workbench.action.configureLocale`'
    end
  end
  category do
    id 'Debug'
    entry do
      command 'F9'
      name 'Toggle Breakpoint'
      notes '`editor.debug.action.toggleBreakpoint`'
    end
    entry do
      command 'F5'
      name 'Start'
      notes '`workbench.action.debug.start`'
    end
    entry do
      command 'F5'
      name 'Continue'
      notes '`workbench.action.debug.continue`'
    end
    entry do
      command 'CTRL+F5'
      name 'Start (without debugging)'
      notes '`workbench.action.debug.run`'
    end
    entry do
      command 'F6'
      name 'Pause'
      notes '`workbench.action.debug.pause`'
    end
    entry do
      command 'F11'
      name 'Step Into'
      notes '`workbench.action.debug.stepInto`'
    end
  end
  category do
    id 'Tasks'
    entry do
      command 'SHIFT+CMD+B'
      name 'Run Build Task'
      notes '`workbench.action.tasks.build`'
    end
    entry do
      command 'unassigned'
      name 'Run Test Task'
      notes '`workbench.action.tasks.test`'
    end
  end
  category do
    id 'Extensions'
    entry do
      command 'unassigned'
      name 'Install Extension'
      notes '`workbench.extensions.action.installExtension`'
    end
    entry do
      command 'unassigned'
      name 'Show Installed Extensions'
      notes '`workbench.extensions.action.showInstalledExtensions`'
    end
    entry do
      command 'unassigned'
      name 'Show Outdated Extensions'
      notes '`workbench.extensions.action.listOutdatedExtensions`'
    end
    entry do
      command 'unassigned'
      name 'Show Recommended Extensions'
      notes '`workbench.extensions.action.showRecommendedExtensions`'
    end
    entry do
      command 'unassigned'
      name 'Show Popular Extensions'
      notes '`workbench.extensions.action.showPopularExtensions`'
    end
    entry do
      command 'unassigned'
      name 'Update All Extensions'
      notes '`workbench.extensions.action.updateAllExtensions`'
    end
  end

  notes '* Some commands included below do not have default keyboard shortcuts and so are displayed as unassigned but you can assign your own keybindings.
* More information at https://code.visualstudio.com/docs/getstarted/keybindings#_default-keyboard-shortcuts'
end
