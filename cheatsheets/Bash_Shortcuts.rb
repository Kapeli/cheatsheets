cheatsheet do
  title 'Bash Shortcuts'
  docset_file_name 'Bash_Shortcuts'
  keyword 'bashshortcuts'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Command Editing Shortcuts'

    entry do
      command 'Ctrl+A / Ctrl+E'
      name 'Go to the start/end of the command line'
    end
    entry do
      command 'Ctrl+U / Ctrl+K'
      name 'Delete from cursor to the start/end of the command line'
    end
    entry do
      command 'Ctrl+W / Alt+D'
      name 'Delete from cursor to start/end of word'
      notes 'Whole word if at the boundary'
    end
    entry do
      command 'Ctrl+Y'
      name 'Paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor'
    end
    entry do
      command 'Ctrl+xx'
      name 'Move between start fo command line and current cursor position (and back again)'
    end
    entry do
      command 'Alt+B / Alt+F'
      name 'Move backward/forward one word (or go to start of word the cursor is currently on)'
    end
    entry do
      command 'Alt+C'
      name 'Capitalize to end of word starting at cursor (whole word if cursor is at the beginning of word)'
    end
    entry do
      command 'Alt+U'
      name 'Make uppercase from cursor to end of word'
    end
    entry do
      command 'Alt+L'
      name 'Make lowercase from cursor to end of word'
    end
    entry do
      command 'Alt+T'
      name 'Swap current word with previous'
    end
    entry do
      command 'Ctrl+F / Ctrl+B'
      name 'Move forward/backward one character'
    end
    entry do
      command 'Ctrl+D / Ctrl+H'
      name 'Delete character after/before under cursor'
    end
    entry do
      command 'Ctrl+T'
      name 'Swap character under cursor with the previous one'
    end
  end
  category do
    id 'Command Recall Shortcuts'

    entry do
      command 'Ctrl+R'
      name 'Search the history backwards'
    end
    entry do
      command 'Ctrl+G'
      name 'Escape from history searching mode'
    end
    entry do
      command 'Ctrl+P'
      name 'Previous command in history (i.e., walk back through the command history)'
    end
    entry do
      command 'Ctrl+N'
      name 'Next command in history (i.e., walk forward through the command history)'
    end
    entry do
      command 'Alt+.'
      name 'Use the last word of the previous command'
    end
  end

  category do
    id 'Command Control Shortcuts'

    entry do
      command 'Ctrl+L'
      name 'Clear the screen'
    end
    entry do
      command 'Ctrl+S'
      name 'Stops the output to the screen (for long running verbose command)'
    end
    entry do
      command 'Ctrl+Q'
      name 'Allow output to the screen (if previously stopped using command above)'
    end
    entry do
      command 'Ctrl+C'
      name 'Terminate the command'
    end
    entry do
      command 'Ctrl+Z'
      name 'Suspend/stop the command'
    end
  end

  category do
    id 'Bash Bang Shortcuts'

    entry do
      command '!!'
      name 'Run last command'
    end
    entry do
      command '!blah'
      name 'Run the most recent command that starts with \'blah\' (e.g., !ls)'
    end
    entry do
      command '!blah:p'
      name 'Print out the command that !blah would run (also adds it as the latest command in the command history'
    end
    entry do
      command '!$'
      name 'The last word of the previous command (same as Alt+.)'
    end
    entry do
      command '!$:p'
      name 'Print out the word that !$ woudl substitute'
    end
    entry do
      command '!*'
      name 'The previous command except for the last word (e.g., if you type \'find soem_file.txt /\', then !* would give you \'find some_file.txt\')'
    end
    entry do
      command '!*:p'
      name 'Print out what !* would substitute'
    end
  end
  notes ''

end