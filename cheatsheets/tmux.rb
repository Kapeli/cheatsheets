cheatsheet do
  title 'tmux'
  docset_file_name 'tmux'
  keyword 'tmux'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Getting Started'

    entry do
      name 'Start new'
      command 'tmux'
    end

    entry do
      name 'Start new with session name'
      command 'tmux new -s myname'
    end

    entry do
      name 'Attach'
      command 'tmux a'
      command 'tmux at'
      command 'tmux attach'
    end

    entry do
      name 'Attach to named'
      command 'tmux a -t myname'
    end

    entry do
      name 'List sessions'
      command 'tmux ls'
    end

    entry do
      name 'Kill session'
      command 'tmux kill-session -t myname'
    end
  end

  category do
    id 'Sessions'
    entry do
      command 'PREFIX-:new<CR>'
      name 'New session'
    end

    entry do
      command 'PREFIX-$'
      name 'Name session'
    end

    entry do
      command 'PREFIX-s'
      name 'List sessions'
    end

    entry do
      command 'PREFIX-('
      name 'Previous session'
    end

    entry do
      command 'PREFIX-)'
      name 'Next session'
    end

    entry do
      command 'PREFIX-L'
      name "Last session"
    end
  end

  category do
    id 'Windows (Tabs)'

    entry do
      command 'PREFIX-c'
      name 'New window'
    end

    entry do
      command 'PREFIX-w'
      name 'List windows'
    end

    entry do
      command 'PREFIX-f'
      name 'Find window'
    end

    entry do
      command 'PREFIX-,'
      name 'Name window'
    end

    entry do
      command 'PREFIX-&'
      name 'Kill window'
    end

    entry do
      command 'PREFIX-n'
      name 'Next window'
    end

    entry do
      command 'PREFIX-p'
      name 'Previous window'
    end

    entry do
      command 'PREFIX-l'
      name 'Previously selected window'
    end
  end

  category do
    id 'Panes (Splits)'

    entry do
      command 'PREFIX-%'
      name 'Vertical split (Standard)'
    end

    entry do
      command 'PREFIX-|'
      name 'Vertical split (Personal)'
      notes 'In tmux.conf: `bind-key | split-window -v`'
    end

    entry do
      command 'PREFIX-"'
      name 'Horizontal split (Standard)'
    end

    entry do
      command 'PREFIX- -'
      name 'Horizontal split (Personal)'
      notes 'In tmux.conf: `bind-key | split-window -h`'
    end



    entry do
      command 'PREFIX-o'
      name 'Switch focus between panes'
    end

    entry do
      command 'PREFIX-q'
      name 'Show pane numbers'
    end

    entry do
      command 'PREFIX-x'
      name 'Kill pane'
    end

    entry do
      command 'PREFIX-z'
      name 'Toggle active pane between zoomed and unzoomed'
    end

    entry do
      command 'PREFIX-"+"'
      name 'Break pane into window (e.g. to select text by mouse to copy)'
    end

    entry do
      command 'PREFIX-"-"'
      name 'Restore pane from window'
    end

    entry do
      command 'PREFIX-Space'
      name 'Toggle between layouts'
    end

    entry do
      command 'PREFIX-Q'
      name 'Show pane numbers'
      notes 'When the numbers show up type the key to go to that pane'
    end

    entry do
      command 'PREFIX-{'
      name 'Move the current pane left'
    end

    entry do
      command 'PREFIX-}'
      name 'Move the current pane right'
    end

    entry do
      command 'PREFIX-"Meta+{1..5}"'
      name 'Arrange panes in one of the five preset layouts: even-horizontal, even-vertical, main-horizontal, main-vertical, or tiled. Meta key defaults to Alt.'
    end
  end



  category do
    id 'Copy Mode'

    entry do
      notes <<-'END'
        Pressing `PREFIX-[` places us in Copy mode. We can then use our movement keys to move our cursor around the screen. By default, the arrow keys work. We set our configuration file to use Vim keys for moving between windows and resizing panes so we wouldn’t have to take our hands off the home row. tmux has a vi mode for working with the buffer as well. To enable it, add this line to `.tmux.conf`:

        ```
        setw -g mode-keys vi
        ```

        With this option set, we can use `h`, `j`, `k`, and `l` to move around our buffer.

        To get out of Copy mode, we just press the `Enter` key. Moving around one character at a time isn’t very efficient. Since we enabled vi mode, we can also use some other visible shortcuts to move around the buffer.

        For example, we can use `w` to jump to the next word and `b` to jump back one word. And we can use `f`, followed by any character, to jump to that character on the same line, and `F` to jump backwards on the line.
      END
    end

    entry do
      name 'Back to indentation'
      command '^'
    end

    entry do
      name 'Clear selection'
      command  'Esc'
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
      command 'C-Down'
      command 'J'
    end

    entry do
      name 'Scroll up'
      command 'C-Up'
      command 'K'
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
    id 'Resizing Panes'

    entry do
      notes <<-'END'
        With most of these the number (`##`) is optional and can be omitted to resize one line.

        All of these can be bound to keys:

        * `bind H resize-pane -L 5`
        * `bind J resize-pane -D 5`
        * `bind K resize-pane -U 5`
        * `bind L resize-pane -R 5`
      END
    end

    entry do
      command 'PREFIX-: resize-pane -D ##'
      name 'Resize the current pane down by `##` lines. The `-D` is optional since by default it moves down'
    end

    entry do
      command 'PREFIX-: resize-pane -U ##'
      name 'Resize the current pane up `##` lines'
    end

    entry do
      command 'PREFIX-: resize-pane -L ##'
      name 'Resize the current pane left `##` lines'
    end

    entry do
      command 'PREFIX-: resize-pane -R ##'
      name 'Resize the current pane right `##` lines'
    end

    entry do
      command 'PREFIX-: resize-pane -y ##'
      name 'Resize the current pane to `##` lines tall'
    end

    entry do
      command 'PREFIX-: resize pane -x ##'
      name 'Resize the current pane to `##` lines wide'
    end

  end

  category do
    id 'Miscellaneous'

    entry do
      command 'PREFIX-d'
      name 'Detach'
    end

    entry do
      command 'PREFIX-t'
      name 'Big clock'
    end

    entry do
      command 'PREFIX-?'
      name 'List shortcuts'
    end

    entry do
      command 'PREFIX-:'
      name 'Prompt'
    end
  end
end
