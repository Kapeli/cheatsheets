cheatsheet do
  title 'tmux'
  docset_file_name 'tmux'
  keyword 'tmux'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Getting started'

    entry do
      name 'tmux'
      command 'start new'
    end

    entry do
      name 'start new with session name:'
      command 'tmux new -s myname'
    end

    entry do
      name 'attach'
      command 'tmux a  #  (or at, or attach)'
    end

    entry do
      name 'attach to named:'
      command 'tmux a -t myname'
    end

    entry do
      name 'list sessions:'
      command 'tmux ls'
    end

    entry do
      name 'kill session:'
      command 'tmux kill-session -t myname'
    end

    entry do
      notes 'In tmux, hit the prefix `ctrl+b` (my modified prefix is ctrl+a) and then:'
    end
  end

  category do
    id 'Sessions'

    entry do
      command ':new<CR>'
      name  'new session'
    end

    entry do
      command 's'
      name  'list sessions'
    end

    entry do
      command '$'
      name  'name session'
    end
  end

  category do
    id 'Windows (tabs)'

    entry do
      command 'c'
      name  'new window'
    end

    entry do
      command 'w'
      name  'list windows'
    end

    entry do
      command 'f'
      name  'find window'
    end

    entry do
      command ','
      name  'name window'
    end

    entry do
      command '&'
      name  'kill window'
    end
  end

  category do
    id 'Panes (splits)'

    entry do
      command '%'
      name  'vertical split'
    end

    entry do
      command '"'
      name  'horizontal split'
    end


    entry do
      command 'o'
      name 'swap panes'
    end

    entry do
      command 'q'
      name 'show pane numbers'
    end

    entry do
      command 'x'
      name 'kill pane'
    end

    entry do
      command '+'
      name 'break pane into window (e.g. to select text by mouse to copy)'
    end

    entry do
      command '-'
      name 'restore pane from window'
    end

    entry do
      command ' '
      name 'space - toggle between layouts'
    end

    entry do
      command 'PREFIX'
      name 'q (Show pane numbers, when the numbers show up type the key to goto that pane)'
    end

    entry do
      command 'PREFIX'
      name '{ (Move the current pane left)'
    end

    entry do
      command 'PREFIX'
      name '} (Move the current pane right)'
    end
  end



  category do
    id 'Copy mode'

    entry do
      notes <<-'END'
        Pressing PREFIX [ places us in Copy mode. We can then use our movement keys to move our cursor around the screen. By default, the arrow keys work. we set our configuration file to use Vim keys for moving between windows and resizing panes so we wouldn’t have to take our hands off the home row. tmux has a vi mode for working with the buffer as well. To enable it, add this line to .tmux.conf:

        setw -g mode-keys vi

        With this option set, we can use h, j, k, and l to move around our buffer.

        To get out of Copy mode, we just press the ENTER key. Moving around one character at a time isn’t very efficient. Since we enabled vi mode, we can also use some other visible shortcuts to move around the buffer.

        For example, we can use "w" to jump to the next word and "b" to jump back one word. And we can use "f", followed by any character, to jump to that character on the same line, and "F" to jump backwards on the line.
      END
    end

    entry do
      name 'Back to indentation'
      command '^'
    end

    entry do
      name 'Clear selection'
      command  'Escape'
    end

    entry do
      name 'Copy selection'
      command 'Enter'
    end

    entry do
      name 'Cursor down'
      command    'j'
    end

    entry do
      name 'Cursor left'
      command 'h'
    end

    entry do
      name 'Cursor right'
      command 'l'
    end

    entry do
      name 'Cursor to bottom line'
      command 'L'
    end

    entry do
      name 'Cursor to middle line'
      command 'M'
    end

    entry do
      name 'Cursor to top line'
      command 'H'
    end

    entry do
      name 'Cursor up'
      command 'k'
    end

    entry do
      name 'Delete entire line'
      command 'd'
    end

    entry do
      name 'Delete to end of line'
       command 'D'
    end

    entry do
      name 'End of line'
      command '$'
    end

    entry do
      name 'Goto line'
      command ':'
    end

    entry do
      name 'Half page down'
      command 'C-d'
    end

    entry do
      name 'Half page up'
      command 'C-u'
    end

    entry do
      name 'Next page'
      command 'C-f'
    end

    entry do
      name 'Next word'
      command 'w'
    end

    entry do
      name 'Paste buffer'
      command 'p'
    end

    entry do
      name 'Previous page'
      command 'C-b'
    end

    entry do
      name 'Previous word'
      command 'b'
    end

    entry do
      name 'Quit mode'
      command 'q'
    end

    entry do
      name 'Scroll down'
      command 'C-Down or J'
    end

    entry do
      name 'Scroll up'
      command 'C-Up or K'
    end

    entry do
      name 'Search again'
      command 'n'
    end

    entry do
      name 'Search backward'
      command '?'
    end

    entry do
      name 'Search forward'
      command '/'
    end

    entry do
      name 'Start of line'
      command '0'
    end

    entry do
      name 'Start selection'
      command 'Space'
    end
  end


  category do
    id 'Misc'

    entry do
      command 'd'
      name  'detach'
    end

    entry do
      command 't'
      name 'big clock'
    end

    entry do
      command '?'
      name 'list shortcuts'
    end

    entry do
      command ':'
      name 'prompt'
    end
  end
end
