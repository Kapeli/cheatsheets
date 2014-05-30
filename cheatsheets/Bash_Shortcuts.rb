cheatsheet do
  title 'Bash Shortcuts'
  docset_file_name 'Bash_Shortcuts'
  keyword 'bashshortcuts'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Command Editing Shortcuts'

    entry do
      command 'CTRL+A'
      command 'CTRL+E'
      name 'Go to the start/end of the command line'
    end
    entry do
      command 'CTRL+U'
      command 'CTRL+K'
      name 'Delete from cursor to the start/end of the command line'
    end
    entry do
      command 'CTRL+W'
      command 'ALT+D'
      name 'Delete from cursor to start/end of word (whole word if at the boundary)'
    end
    entry do
      command 'CTRL+Y'
      name 'Paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor'
    end
    entry do
      command 'CTRL+XX'
      name 'Move between start of command line and current cursor position (and back again)'
    end
    entry do
      command 'ALT+B'
      command 'ALT+F'
      name 'Move backward/forward one word (or go to start of word the cursor is currently on)'
    end
    entry do
      command 'ALT+C'
      name 'Capitalize to end of word starting at cursor (whole word if cursor is at the beginning of word)'
    end
    entry do
      command 'ALT+U'
      name 'Make uppercase from cursor to end of word'
    end
    entry do
      command 'ALT+L'
      name 'Make lowercase from cursor to end of word'
    end
    entry do
      command 'ALT+T'
      name 'Swap current word with previous'
    end
    entry do
      command 'CTRL+F'
      command 'CTRL+B'
      name 'Move forward/backward one character'
    end
    entry do
      command 'CTRL+D'
      command 'CTRL+H'
      name 'Delete character after/before under cursor'
    end
    entry do
      command 'CTRL+T'
      name 'Swap character under cursor with the previous one'
    end
  end
  category do
    id 'Command Recall Shortcuts'

    entry do
      command 'CTRL+R'
      name 'Search the history backwards'
    end
    entry do
      command 'CTRL+G'
      name 'Escape from history searching mode'
    end
    entry do
      command 'CTRL+P'
      name 'Previous command in history (i.e., walk back through the command history)'
    end
    entry do
      command 'CTRL+N'
      name 'Next command in history (i.e., walk forward through the command history)'
    end
    entry do
      command 'ALT+.'
      name 'Use the last word of the previous command'
    end
  end

  category do
    id 'Command Control Shortcuts'

    entry do
      command 'CTRL+L'
      name 'Clear the screen'
    end
    entry do
      command 'CTRL+S'
      name 'Stops the output to the screen (for long running verbose command)'
    end
    entry do
      command 'CTRL+Q'
      name 'Allow output to the screen (if previously stopped using command above)'
    end
    entry do
      command 'CTRL+C'
      name 'Terminate the command'
    end
    entry do
      command 'CTRL+Z'
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
      name 'Run the most recent command that starts with `blah`'
    end
    entry do
      command '!blah:p'
      name 'Print out the command that `!blah` would run (also adds it as the latest command in the command history'
    end
    entry do
      command '!$'
      name 'The last word of the previous command (same as `ALT+.`)'
    end
    entry do
      command '!$:p'
      name 'Print out the word that `!$` would substitute'
    end
    entry do
      command '!*'
      name 'The previous command except for the first word (e.g., if you type `find some_file.txt /`, then `!*` would give you `some_file.txt /`)'
    end
    entry do
      command '!*:p'
      name 'Print out what `!*` would substitute'
    end
  end

end
