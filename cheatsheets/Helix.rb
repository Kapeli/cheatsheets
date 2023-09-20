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
      name 'Jump backward on the jumplist'
    end
  end
end
