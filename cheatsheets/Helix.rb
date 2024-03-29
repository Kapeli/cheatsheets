cheatsheet do
  title 'Helix'
  docset_file_name 'Helix'
  keyword 'helix'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Movement'

    entry do
      command 'h'
      command 'Left'
      name 'Move left'
    end
    entry do
      command 'j'
      command 'Down'
      name 'Move down'
    end
    entry do
      command 'k'
      command 'Up'
      name 'Move up'
    end
    entry do
      command 'l'
      command 'Right'
      name 'Move right'
    end
    entry do
      command 'w'
      name 'Move next word start'
    end
    entry do
      command 'b'
      name 'Move previous word start'
    end
    entry do
      command 'W'
      name 'Move next WORD start'
    end
    entry do
      command 'B'
      name 'Move previous WORD start'
    end
    entry do
      command 'E'
      name 'Move next WORD end'
    end
    entry do
      command 't'
      name 'Find \'till next char'
    end
    entry do
      command 'f'
      name 'Find next char'
    end
    entry do
      command 'T'
      name 'Find \'till previous char'
    end
    entry do
      command 'F'
      name 'Find previous char'
    end
    entry do
      command 'G'
      name 'Go to line number `<n>`'
    end
    entry do
      command 'G'
      name 'Go to line number `<n>`'
    end
    entry do
      command 'Alt-.'
      name 'Repeat last motion (f, t or m)'
    end
    entry do
      command 'Home'
      name 'Move to the start of the line'
    end
    entry do
      command 'End'
      name 'Move to the end of the line'
    end
    entry do
      command 'Ctrl-b'
      command 'PageUp'
      name 'Move page up'
    end
    entry do
      command 'Ctrl-f'
      command 'PageDown'
      name 'Move page down'
    end
    entry do
      command 'Ctrl-u'
      name 'Move half page up'
    end
    entry do
      command 'Ctrl-d'
      name 'Move half page down'
    end
    entry do
      command 'Ctrl-i'
      name 'Jump forward on the jumplist'
    end
    entry do
      command 'Ctrl-o'
      name 'Jump backward on the jumplist'
    end
    entry do
      command 'Ctrl-s'
      name 'Save the current selection to the jumplist'
    end
  end

  category do
    id 'Changes'

    entry do
      command 'r'
      name 'Replace with a character'
    end
    entry do
      command 'R'
      name 'Replace with yanked text'
    end
    entry do
      command '~'
      name 'Switch case of the selected text'
    end
    entry do
      command '`'
      name 'Set the selected text to lower case'
    end
    entry do
      command 'Alt-`'
      name 'Set the selected text to upper case'
    end
    entry do
      command 'i'
      name 'Insert before selection'
    end
    entry do
      command 'a'
      name 'Insert after selection (append)'
    end
    entry do
      command 'I'
      name 'Insert at the start of the line'
    end
    entry do
      command 'A'
      name 'Insert at the end of the line'
    end
    entry do
      command 'o'
      name 'Open new line below selection'
    end
    entry do
      command 'O'
      name 'Open new line above selection'
    end
    entry do
      command '.'
      name 'Repeat last insert'
    end
    entry do
      command 'u'
      name 'Undo change'
    end
    entry do
      command 'U'
      name 'Redo change'
    end
    entry do
      command 'Alt-u'
      name 'Move backward in history'
    end
    entry do
      command 'Alt-U'
      name 'Move forward in history'
    end
    entry do
      command 'y'
      name 'Yank selection'
    end
    entry do
      command 'p'
      name 'Paste after selection'
    end
    entry do
      command 'P'
      name 'Paste before selection'
    end
    entry do
      command '" <reg>'
      name 'Select a register to yank to or paste from'
    end
    entry do
      command '>'
      name 'Indent selection'
    end
    entry do
      command '<'
      name 'Unindent selection'
    end
    entry do
      command '='
      name 'Format selection (currently nonfunctional/disabled) (LSP)'
    end
    entry do
      command 'd'
      name 'Delete selection'
    end
    entry do
      command 'Alt-d'
      name 'Delete selection, without yanking'
    end
    entry do
      command 'c'
      name 'Change selection (delete and enter insert mode)'
    end
    entry do
      command 'Alt-c'
      name 'Change selection (delete and enter insert mode, without yanking)'
    end
    entry do
      command 'Ctrl-a'
      name 'Increment object (number) under cursor'
    end
    entry do
      command 'Ctrl-x'
      name 'Decrement object (number) under cursor'
    end
    entry do
      command 'Q'
      name 'Start/stop macro recording to the selected register (experimental)'
    end
    entry do
      command 'q'
      name 'Play back a recorded macro from the selected register (experimental)'
    end
  end

  category do
    id 'Shell'

    entry do
      command '|'
      name 'Pipe each selection through shell command, replacing with output'
    end
    entry do
      command 'Alt-|'
      name 'Pipe each selection into shell command, ignoring output'
    end
    entry do
      command '!'
      name 'Run shell command, inserting output before each selection'
    end
    entry do
      command 'Alt-!'
      name 'Run shell command, appending output after each selection'
    end
    entry do
      command '$'
      name 'Pipe each selection into shell command, keep selections where command returned 0'
    end
  end

  category do
    id 'Selection manipulation'

    entry do
      command 's'
      name 'Select all regex matches inside selections'
    end
    entry do
      command 'S'
      name 'Split selection into sub selections on regex matches'
    end
    entry do
      command 'Alt-s'
      name 'Split selection on newlines'
    end
    entry do
      command 'Alt-_'
      name 'Merge consecutive selections'
    end
    entry do
      command '&'
      name 'Align selection in columns'
    end
    entry do
      command '_'
      name 'Trim whitespace from the selection'
    end
    entry do
      command ';'
      name 'Collapse selection onto a single cursor'
    end
    entry do
      command 'Alt-;'
      name 'Flip selection cursor and anchor'
    end
    entry do
      command 'Alt-:'
      name 'Ensures the selection is in forward direction'
    end
    entry do
      command ','
      name 'Keep only the primary selection'
    end
    entry do
      command 'Alt-,'
      name 'Remove the primary selection'
    end
    entry do
      command 'C'
      name 'Copy selection onto the next line (Add cursor below)'
    end
    entry do
      command 'Alt-C'
      name 'Copy selection onto the previous line (Add cursor above)'
    end
    entry do
      command '('
      name 'Rotate main selection backward'
    end
    entry do
      command ')'
      name 'Rotate main selection forward'
    end
    entry do
      command 'Alt-('
      name 'Rotate selection contents backward'
    end
    entry do
      command 'Alt-)'
      name 'Rotate selection contents forward'
    end
    entry do
      command '%'
      name 'Select entire file'
    end
    entry do
      command 'x'
      name 'Select current line, if already selected, extend to next line'
    end
    entry do
      command 'X'
      name 'Extend selection to line bounds (line-wise selection)'
    end
    entry do
      command 'Alt-x'
      name 'Shrink selection to line bounds (line-wise selection)'
    end
    entry do
      command 'J'
      name 'Join lines inside selection'
    end
    entry do
      command 'Alt-J'
      name 'Join lines inside selection and select the inserted space'
    end
    entry do
      command 'K'
      name 'Keep selections matching the regex'
    end
    entry do
      command 'Alt-K'
      name 'Remove selections matching the regex'
    end
    entry do
      command 'Ctrl-c'
      name 'Comment/uncomment the selections'
    end
    entry do
      command 'Alt-o'
      command 'Alt-up'
      name 'Expand selection to parent syntax node (TS)'
    end
    entry do
      command 'Alt-i'
      command 'Alt-down'
      name 'Shrink syntax tree object selection (TS)'
    end
    entry do
      command 'Alt-p'
      command 'Alt-left'
      name 'Select previous sibling node in syntax tree (TS)'
    end
    entry do
      command 'Alt-n'
      command 'Alt-right'
      name 'Select next sibling node in syntax tree (TS)'
    end
  end

  category do
    id 'Search'

    entry do
      command '/'
      name 'Search for regex pattern'
    end
    entry do
      command '?'
      name 'Search for previous pattern'
    end
    entry do
      command 'n'
      name 'Select next search match'
    end
    entry do
      command 'N'
      name 'Select previous search match'
    end
    entry do
      command '*'
      name 'Use current selection as the search pattern'
    end
  end

  category do
    id 'Minor modes'

    entry do
      command 'v'
      name 'Enter select (extend) mode'
    end
    entry do
      command 'g'
      name 'Enter goto mode'
    end
    entry do
      command 'm'
      name 'Enter match mode'
    end
    entry do
      command ':'
      name 'Enter command mode'
    end
    entry do
      command 'z'
      name 'Enter view mode'
    end
    entry do
      command 'Z'
      name 'Enter sticky view mode'
    end
    entry do
      command 'Ctrl-w'
      name 'Enter window mode'
    end
    entry do
      command 'Space'
      name 'Enter space mode'
    end
  end

  category do
    id 'View Mode'

    entry do
      command 'z'
      command 'c'
      name 'Vertically center the line'
    end
    entry do
      command 't'
      name 'Align the line to the top of the screen'
    end
    entry do
      command 'b'
      name 'Align the line to the bottom of the screen'
    end
    entry do
      command 'm'
      name 'Align the line to the middle of the screen (horizontally)'
    end
    entry do
      command 'j'
      command 'down'
      name 'Scroll the view downwards'
    end
    entry do
      command 'k'
      command 'up'
      name 'Scroll the view upwards'
    end
    entry do
      command 'Ctrl-f'
      command 'PageDown'
      name 'Move page down'
    end
    entry do
      command 'Ctrl-b'
      command 'PageUp'
      name 'Move page up'
    end
    entry do
      command 'Ctrl-d'
      name 'Move half page down'
    end
    entry do
      command 'Ctrl-u'
      name 'Move half page up'
    end
  end

  category do
    id 'Goto mode'

    entry do
      command 'g'
      name 'Go to line number <n> else start of file'
    end
    entry do
      command 'e'
      name 'Go to the end of the file'
    end
    entry do
      command 'f'
      name 'Go to files in the selection'
    end
    entry do
      command 'h'
      name 'Go to the start of the line'
    end
    entry do
      command 'l'
      name 'Go to the end of the line'
    end
    entry do
      command 's'
      name 'Go to first non-whitespace character of the line'
    end
    entry do
      command 't'
      name 'Go to the top of the screen'
    end
    entry do
      command 'c'
      name 'Go to the middle of the screen'
    end
    entry do
      command 'b'
      name 'Go to the bottom of the screen'
    end
    entry do
      command 'd'
      name 'Go to definition (LSP)'
    end
    entry do
      command 'y'
      name 'Go to type definition (LSP)'
    end
    entry do
      command 'r'
      name 'Go to references (LSP)'
    end
    entry do
      command 'i'
      name 'Go to implementation (LSP)'
    end
    entry do
      command 'a'
      name 'Go to the last accessed/alternate file'
    end
    entry do
      command 'm'
      name 'Go to the last modified/alternate file'
    end
    entry do
      command 'n'
      name 'Go to next buffer'
    end
    entry do
      command 'p'
      name 'Go to previous buffer'
    end
    entry do
      command '.'
      name 'Go to last modification in current file'
    end
    entry do
      command 'j'
      name 'Move down textual (instead of visual) line'
    end
    entry do
      command 'k'
      name 'Move up textual (instead of visual) line'
    end
  end

  category do
    id 'Match mode'

    entry do
      command 'm'
      name 'Goto matching bracket (TS)'
    end
    entry do
      command 's <char>'
      name 'Surround current selection with <char>'
    end
    entry do
      command 'r <from><to>'
      name 'Replace surround character <from> with <to>'
    end
    entry do
      command 'd <char>'
      name 'Delete surround character <char>'
    end
    entry do
      command 'a <object>'
      name 'Select around textobject'
    end
    entry do
      command 'i <object>'
      name 'Select inside textobject'
    end
  end

  category do
    id 'Window mode'

    entry do
      command 'w'
      command 'Ctrl-w'
      name 'Switch to next window'
    end
    entry do
      command 'v'
      command 'Ctrl-v'
      name 'Vertical right split'
    end
    entry do
      command 's'
      command 'Ctrl-s'
      name 'Horizontal bottom split'
    end
    entry do
      command 'f'
      name 'Go to files in the selection in horizontal splits'
    end
    entry do
      command 'F'
      name 'Go to files in the selection in vertical splits'
    end
    entry do
      command 'h'
      command 'Ctrl-h'
      command 'Left'
      name 'Move to left split'
    end
    entry do
      command 'j'
      command 'Ctrl-j'
      command 'Down'
      name 'Move to split below'
    end
    entry do
      command 'k'
      command 'Ctrl-k'
      command 'Up'
      name 'Move to split above'
    end
    entry do
      command 'l'
      command 'Ctrl-l'
      command 'Right'
      name 'Move to right split'
    end
    entry do
      command 'q'
      command 'Ctrl-q'
      name 'Close current window'
    end
    entry do
      command 'o'
      command 'Ctrl-o'
      name 'Only keep the current window, closing all the others'
    end
    entry do
      command 'H'
      name 'Swap window to the left'
    end
    entry do
      command 'J'
      name 'Swap window downwards'
    end
    entry do
      command 'K'
      name 'Swap window upwards'
    end
    entry do
      command 'L'
      name 'Swap window to the right'
    end
  end

  category do
    id 'Space mode'

    entry do
      command 'f'
      name 'Open file picker'
    end
    entry do
      command 'F'
      name 'Open file picker at current working directory'
    end
    entry do
      command 'b'
      name 'Open buffer picker'
    end
    entry do
      command 'j'
      name 'Open jumplist picker'
    end
    entry do
      command 'g'
      name 'Debug (experimental)'
    end
    entry do
      command 'k'
      name 'Show documentation for item under cursor in a popup (LSP)'
    end
    entry do
      command 's'
      name 'Open document symbol picker (LSP)'
    end
    entry do
      command 'S'
      name 'Open workspace symbol picker (LSP)'
    end
    entry do
      command 'd'
      name 'Open document diagnostics picker (LSP)'
    end
    entry do
      command 'D'
      name 'Open workspace diagnostics picker (LSP)'
    end
    entry do
      command 'r'
      name 'Rename symbol (LSP)'
    end
    entry do
      command 'a'
      name 'Apply code action (LSP)'
    end
    entry do
      command 'h'
      name 'Select symbol references (LSP)'
    end
    entry do
      command '\''
      name 'Open last fuzzy picker'
    end
    entry do
      command 'w'
      name 'Enter window mode'
    end
    entry do
      command 'p'
      name 'Paste system clipboard after selections'
    end
    entry do
      command 'P'
      name 'Paste system clipboard before selections'
    end
    entry do
      command 'y'
      name 'Join and yank selections to clipboard'
    end
    entry do
      command 'Y'
      name 'Yank main selection to clipboard'
    end
    entry do
      command 'R'
      name 'Replace selections by clipboard contents'
    end
    entry do
      command '/'
      name 'Global search in workspace folder'
    end
    entry do
      command '?'
      name 'Open command palette'
    end
  end

  category do
    id 'Popup'

    entry do
      command 'Ctrl-u'
      name 'Scroll up'
    end
    entry do
      command 'Ctrl-d'
      name 'Scroll down'
    end
  end

  category do
    id 'Unimpaired'

    entry do
      command ']d'
      name 'Go to next diagnostic (LSP)'
    end
    entry do
      command '[d'
      name 'Go to previous diagnostic (LSP)'
    end
    entry do
      command ']D'
      name 'Go to last diagnostic in document (LSP)'
    end
    entry do
      command '[D'
      name 'Go to first diagnostic in document (LSP)'
    end
    entry do
      command ']f'
      name 'Go to next function (TS)'
    end
    entry do
      command '[f'
      name 'Go to previous function (TS)'
    end
    entry do
      command ']t'
      name 'Go to next type definition (TS)'
    end
    entry do
      command '[t'
      name 'Go to previous type definition (TS)'
    end
    entry do
      command ']a'
      name 'Go to next argument/parameter (TS)'
    end
    entry do
      command '[a'
      name 'Go to previous argument/parameter (TS)'
    end
    entry do
      command ']c'
      name 'Go to next comment (TS)'
    end
    entry do
      command '[c'
      name 'Go to previous comment (TS)'
    end
    entry do
      command ']T'
      name 'Go to next test (TS)'
    end
    entry do
      command '[T'
      name 'Go to previous test (TS)'
    end
    entry do
      command ']p'
      name 'Go to next paragraph'
    end
    entry do
      command '[p'
      name 'Go to previous paragraph'
    end
    entry do
      command ']g'
      name 'Go to next change'
    end
    entry do
      command '[g'
      name 'Go to previous change'
    end
    entry do
      command ']G'
      name 'Go to last change'
    end
    entry do
      command '[G'
      name 'Go to first change'
    end
    entry do
      command ']Space'
      name 'Add newline below'
    end
    entry do
      command '[Space'
      name 'Add newline above'
    end
  end

  category do
    id 'Insert mode'

    entry do
      command 'Escape'
      name 'Switch to normal mode'
    end
    entry do
      command 'Ctrl-s'
      name 'Commit undo checkpoint'
    end
    entry do
      command 'Ctrl-x'
      name 'Autocomplete'
    end
    entry do
      command 'Ctrl-r'
      name 'Insert a register content'
    end
    entry do
      command 'Ctrl-w'
      command 'Alt-Backspace'
      name 'Delete previous word'
    end
    entry do
      command 'Alt-d'
      command 'Alt-Delete'
      name 'Delete next word'
    end
    entry do
      command 'Ctrl-u'
      name 'Delete to start of line'
    end
    entry do
      command 'Ctrl-k'
      name 'Delete to end of line'
    end
    entry do
      command 'Ctrl-h'
      command 'Backspace'
      command 'Shift-Backspace'
      name 'Delete previous char'
    end
    entry do
      command 'Ctrl-d'
      command 'Delete'
      name 'Delete next char'
    end
    entry do
      command 'Ctrl-j'
      command 'Enter'
      name 'Insert new line'
    end
    entry do
      command 'Up'
      name 'Move to previous line'
    end
    entry do
      command 'Down'
      name 'Move to next line'
    end
    entry do
      command 'Left'
      name 'Backward a char'
    end
    entry do
      command 'Right'
      name 'Forward a char'
    end
    entry do
      command 'PageUp'
      name 'Move one page up'
    end
    entry do
      command 'PageDown'
      name 'Move one page down'
    end
    entry do
      command 'Home'
      name 'Move to line start'
    end
    entry do
      command 'End'
      name 'Move to line end'
    end
  end

  category do
    id 'Picker'

    entry do
      command 'Shift-Tab'
      command 'Up'
      command 'Ctrl-p'
      name 'Previous entry'
    end
    entry do
      command 'Tab'
      command 'Down'
      command 'Ctrl-n'
      name 'Next entry'
    end
    entry do
      command 'PageUp'
      command 'Ctrl-u'
      name 'Page up'
    end
    entry do
      command 'PageDown'
      command 'Ctrl-d'
      name 'Page down'
    end
    entry do
      command 'Home'
      name 'Go to first entry'
    end
    entry do
      command 'End'
      name 'Go to last entry'
    end
    entry do
      command 'Enter'
      name 'Open selected'
    end
    entry do
      command 'Ctrl-s'
      name 'Open horizontally'
    end
    entry do
      command 'Ctrl-v'
      name 'Open vertically'
    end
    entry do
      command 'Ctrl-t'
      name 'Toggle preview'
    end
    entry do
      command 'Escape'
      command 'Ctrl-c'
      name 'Close picker'
    end
  end

  category do
    id 'Prompt'

    entry do
      command 'Escape'
      command 'Ctrl-c'
      name 'Close prompt'
    end
    entry do
      command 'Alt-b'
      command 'Ctrl-Left'
      name 'Backward a word'
    end
    entry do
      command 'Ctrl-b'
      command 'Left'
      name 'Backward a char'
    end
    entry do
      command 'Alt-f'
      command 'Ctrl-Right'
      name 'Forward a word'
    end
    entry do
      command 'Ctrl-f'
      command 'Right'
      name 'Forward a char'
    end
    entry do
      command 'Ctrl-e'
      command 'End'
      name 'Move prompt end'
    end
    entry do
      command 'Ctrl-a'
      command 'Home'
      name 'Move prompt start'
    end
    entry do
      command 'Ctrl-w'
      command 'Alt-Backspace'
      command 'Ctrl-Backspace'
      name 'Delete previous word'
    end
    entry do
      command 'Alt-d'
      command 'Alt-Delete'
      command 'Ctrl-Delete'
      name 'Delete next word'
    end
    entry do
      command 'Ctrl-u'
      name 'Delete to start of line'
    end
    entry do
      command 'Ctrl-k'
      name 'Delete to end of line'
    end
    entry do
      command 'Backspace'
      command 'Ctrl-h'
      command 'Shift-Backspace'
      name 'Delete previous char'
    end
    entry do
      command 'Delete'
      command 'Ctrl-d'
      name 'Delete next char'
    end
    entry do
      command 'Ctrl-s'
      name 'Insert a word under doc cursor, may be changed to Ctrl-r Ctrl-w later'
    end
    entry do
      command 'Ctrl-p'
      command 'Up'
      name 'Select previous history'
    end
    entry do
      command 'Ctrl-n'
      command 'Down'
      name 'Select next history'
    end
    entry do
      command 'Ctrl-r'
      name 'Insert the content of the register selected by following input char'
    end
    entry do
      command 'Tab'
      name 'Select next completion item'
    end
    entry do
      command 'BackTab'
      name 'Select previous completion item'
    end
    entry do
      command 'Enter'
      name 'Open selected'
    end
  end

  category do
    id 'Commands'

    entry do
      command ':quit'
      command ':q'
      name 'Close the current view.'
    end
    entry do
      command ':quit!'
      command ':q!'
      name 'Force close the current view, ignoring unsaved changes.'
    end
    entry do
      command ':open'
      command ':o'
      name 'Open a file from disk into the current view.'
    end
    entry do
      command ':buffer-close'
      command ':bc'
      command ':bclose'
      name 'Close the current buffer.'
    end
    entry do
      command ':buffer-close!'
      command ':bc!'
      command ':bclose!'
      name 'Close the current buffer forcefully, ignoring unsaved changes.'
    end
    entry do
      command ':buffer-close-others'
      command ':bco'
      command ':bcloseother'
      name 'Close all buffers but the currently focused one.'
    end
    entry do
      command ':buffer-close-others!'
      command ':bco!'
      command ':bcloseother!'
      name 'Force close all buffers but the currently focused one.'
    end
    entry do
      command ':buffer-close-all'
      command ':bca'
      command ':bcloseall'
      name 'Close all buffers without quitting.'
    end
    entry do
      command ':buffer-close-all!'
      command ':bca!'
      command ':bcloseall!'
      name 'Force close all buffers ignoring unsaved changes without quitting.'
    end
    entry do
      command ':buffer-next'
      command ':bn'
      command ':bnext'
      name 'Goto next buffer.'
    end
    entry do
      command ':buffer-previous'
      command ':bp'
      command ':bprev'
      name 'Goto previous buffer.'
    end
    entry do
      command ':write'
      command ':w'
      name 'Write changes to disk. Accepts an optional path (:write some/path.txt)'
    end
    entry do
      command ':write!'
      command ':w!'
      name 'Force write changes to disk creating necessary subdirectories. Accepts an optional path (:write! some/path.txt)'
    end
    entry do
      command ':write-buffer-close'
      command ':wbc'
      name 'Write changes to disk and closes the buffer. Accepts an optional path (:write-buffer-close some/path.txt)'
    end
    entry do
      command ':write-buffer-close!'
      command ':wbc!'
      name 'Force write changes to disk creating necessary subdirectories and closes the buffer. Accepts an optional path (:write-buffer-close! some/path.txt)'
    end
    entry do
      command ':new'
      command ':n'
      name 'Create a new scratch buffer.'
    end
    entry do
      command ':format'
      command ':fmt'
      name 'Format the file using the LSP formatter.'
    end
    entry do
      command ':indent-style'
      name 'Set the indentation style for editing. (\'t\' for tabs or 1-8 for number of spaces.)'
    end
    entry do
      command ':line-ending'
      name 'Set the document\'s default line ending. Options: crlf, lf.'
    end
    entry do
      command ':earlier'
      command ':ear'
      name 'Jump back to an earlier point in edit history. Accepts a number of steps or a time span.'
    end
    entry do
      command ':later'
      command ':lat'
      name 'Jump to a later point in edit history. Accepts a number of steps or a time span.'
    end
    entry do
      command ':write-quit'
      command ':wq'
      command ':x'
      name 'Write changes to disk and close the current view. Accepts an optional path (:wq some/path.txt)'
    end
    entry do
      command ':write-quit!'
      command ':wq!'
      command ':x!'
      name 'Write changes to disk and close the current view forcefully. Accepts an optional path (:wq! some/path.txt)'
    end
    entry do
      command ':write-all'
      command ':wa'
      name 'Write changes from all buffers to disk.'
    end
    entry do
      command ':write-quit-all'
      command ':wqa'
      command ':xa'
      name 'Write changes from all buffers to disk and close all views.'
    end
    entry do
      command ':write-quit-all!'
      command ':wqa!'
      command ':xa!'
      name 'Write changes from all buffers to disk and close all views forcefully (ignoring unsaved changes).'
    end
    entry do
      command ':quit-all'
      command ':qa'
      name 'Close all views.'
    end
    entry do
      command ':quit-all!'
      command ':qa!'
      name 'Force close all views ignoring unsaved changes.'
    end
    entry do
      command ':cquit'
      command ':cq'
      name 'Quit with exit code (default 1). Accepts an optional integer exit code (:cq 2).'
    end
    entry do
      command ':cquit!'
      command ':cq!'
      name 'Force quit with exit code (default 1) ignoring unsaved changes. Accepts an optional integer exit code (:cq! 2).'
    end
    entry do
      command ':theme'
      name 'Change the editor theme (show current theme if no name specified).'
    end
    entry do
      command ':clipboard-yank'
      name 'Yank main selection into system clipboard.'
    end
    entry do
      command ':clipboard-yank-join'
      name 'Yank joined selections into system clipboard. A separator can be provided as first argument. Default value is newline.'
    end
    entry do
      command ':primary-clipboard-yank'
      name 'Yank main selection into system primary clipboard.'
    end
    entry do
      command ':primary-clipboard-yank-join'
      name 'Yank joined selections into system primary clipboard. A separator can be provided as first argument. Default value is newline.'
    end
    entry do
      command ':clipboard-paste-after'
      name 'Paste system clipboard after selections.'
    end
    entry do
      command ':clipboard-paste-before'
      name 'Paste system clipboard before selections.'
    end
    entry do
      command ':clipboard-paste-replace'
      name 'Replace selections with content of system clipboard.'
    end
    entry do
      command ':primary-clipboard-paste-after'
      name 'Paste primary clipboard after selections.'
    end
    entry do
      command ':primary-clipboard-paste-before'
      name 'Paste primary clipboard before selections.'
    end
    entry do
      command ':primary-clipboard-paste-replace'
      name 'Replace selections with content of system primary clipboard.'
    end
    entry do
      command ':show-clipboard-provider'
      name 'Show clipboard provider name in status bar.'
    end
    entry do
      command ':change-current-directory'
      command ':cd'
      name 'Change the current working directory.'
    end
    entry do
      command ':show-directory'
      command ':pwd'
      name 'Show the current working directory.'
    end
    entry do
      command ':encoding'
      name 'Set encoding. Based on https://encoding.spec.whatwg.org.'
    end
    entry do
      command ':character-info'
      command ':char'
      name 'Get info about the character under the primary cursor.'
    end
    entry do
      command ':reload'
      name 'Discard changes and reload from the source file.'
    end
    entry do
      command ':reload-all'
      name 'Discard changes and reload all documents from the source files.'
    end
    entry do
      command ':update'
      command ':u'
      name 'Write changes only if the file has been modified.'
    end
    entry do
      command ':lsp-workspace-command'
      name 'Open workspace command picker'
    end
    entry do
      command ':lsp-restart'
      name 'Restarts the Language Server that is in use by the current doc'
    end
    entry do
      command ':lsp-stop'
      name 'Stops the Language Server that is in use by the current doc'
    end
    entry do
      command ':tree-sitter-scopes'
      name 'Display tree sitter scopes, primarily for theming and development.'
    end
    entry do
      command ':debug-start'
      command ':dbg'
      name 'Start a debug session from a given template with given parameters.'
    end
    entry do
      command ':debug-remote'
      command ':dbg-tcp'
      name 'Connect to a debug adapter by TCP address and start a debugging session from a given template with given parameters.'
    end
    entry do
      command ':debug-eval'
      name 'Evaluate expression in current debug context.'
    end
    entry do
      command ':vsplit'
      command ':vs'
      name 'Open the file in a vertical split.'
    end
    entry do
      command ':vsplit-new'
      command ':vnew'
      name 'Open a scratch buffer in a vertical split.'
    end
    entry do
      command ':hsplit'
      command ':hs'
      command ':sp'
      name 'Open the file in a horizontal split.'
    end
    entry do
      command ':hsplit-new'
      command ':hnew'
      name 'Open a scratch buffer in a horizontal split.'
    end
    entry do
      command ':tutor'
      name 'Open the tutorial.'
    end
    entry do
      command ':goto'
      command ':g'
      name 'Goto line number.'
    end
    entry do
      command ':set-language'
      command ':lang'
      name 'Set the language of current buffer (show current language if no value specified).'
    end
    entry do
      command ':set-option'
      command ':set'
      name 'Set a config option at runtime. For example to disable smart case search, use :set search.smart-case false.'
    end
    entry do
      command ':toggle-option'
      command ':toggle'
      name 'Toggle a boolean config option at runtime. For example to toggle smart case search, use :toggle search.smart-case.'
    end
    entry do
      command ':get-option'
      command ':get'
      name 'Get the current value of a config option.'
    end
    entry do
      command ':sort'
      name 'Sort ranges in selection.'
    end
    entry do
      command ':rsort'
      name 'Sort ranges in selection in reverse order.'
    end
    entry do
      command ':reflow'
      name 'Hard-wrap the current selection of lines to a given width.'
    end
    entry do
      command ':tree-sitter-subtree'
      command ':ts-subtree'
      name 'Display tree sitter subtree under cursor, primarily for debugging queries.'
    end
    entry do
      command ':config-reload'
      name 'Refresh user config.'
    end
    entry do
      command ':config-open'
      name 'Open the user config.toml file.'
    end
    entry do
      command ':config-open-workspace'
      name 'Open the workspace config.toml file.'
    end
    entry do
      command ':log-open'
      name 'Open the helix log file.'
    end
    entry do
      command ':insert-output'
      name 'Run shell command, inserting output before each selection.'
    end
    entry do
      command ':append-output'
      name 'Run shell command, appending output after each selection.'
    end
    entry do
      command ':pipe'
      name 'Pipe each selection to the shell command.'
    end
    entry do
      command ':pipe-to'
      name 'Pipe each selection to the shell command, ignoring output.'
    end
    entry do
      command ':run-shell-command'
      command ':sh'
      name 'Run a shell command'
    end
    entry do
      command ':reset-diff-change, :diffget, :diffg'
      name 'Reset the diff change at the cursor position.'
    end
    entry do
      command ':clear-register'
      name 'Clear given register. If no argument is provided, clear all registers.'
    end
  end

  notes <<-END
    ***References***

    * https://docs.helix-editor.com/keymap.html
    * https://docs.helix-editor.com/commands.html
  END
end
