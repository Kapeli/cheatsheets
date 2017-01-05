cheatsheet do
  title 'VimBox'               # Will be displayed by Dash in the docset list
  docset_file_name 'vimbox'    # Used for the filename of the docset
  keyword 'vb'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Modern MacVim Configuration: Mac Keyboard mappings, autocomplete, bundles etc.'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Mac Key Commands'  # Must be unique and is used as title of the category

    entry do
      command 'CMD+p'         # Optional
      command 'CTRL+p'        # Multiple commands are supported
      name 'Open Anything and begin searching for file'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'CMD+n'
      name 'New Tab'
    end
    entry do
      command 'CMD+SHIFT+n'
      name 'New Window'
    end
    entry do
      command 'CMD+SHIFT+t'
      name 'Reopen Last Closed Tab'
    end
    entry do
      command 'CMD+w'
      name 'Close Active Tab'
    end
    entry do
      command 'CMD+s'
      name 'Save'
    end
    entry do
      command 'CMD+z'
      name 'Undo'
    end
    entry do
      command 'CMD+SHIFT+z'
      name 'Redo'
    end
    entry do
      command 'CMD+enter'
      name 'Distraction free full screen mode (enter/exit)'
    end
    entry do
      command 'CMD+e'
      name 'File explorer (NerdTree)'
    end
    entry do
      command 'CMD+SHIFT+['
      command 'CTRL+TAB'
      command 'SHIFT+space'
      command 'SHIFT+TAB'
      name 'Prev Tab'
    end
    entry do
      command 'CMD+SHIFT+]'
      command 'CTRL+SHIFT+TAB'
      command 'space'
      command 'tab'
      name 'Next Tab'
    end
    entry do
      command 'CMD+1'
      name 'Tab 1'
    end
    entry do
      command 'F5'
      name 'Sort lines'
    end
    entry do
      command 'CMD+SHIFT+p'
      name 'Toggle Spell Check'
    end
    entry do
      command 'CMD+/'
      name 'Toggle Comments (line or selection)'
    end
    entry do
      command 'CMD+SHIFT+m'
      name 'Format & indent entire file, restore custor'
    end
    entry do
      command 'CMD+r'
      name 'Toggle quickfix list'
    end
    entry do
      command 'CMD+SHIFT+r'
      name 'Toggle Error List'
    end
    entry do
      command 'CTRL+1'
      name 'Back to VIM navigation mode (Mega Escape)'
    end
    entry do
      command 'tab'
      command 'enter'
      name 'Accept highlighted autocomplete entry'
      notes <<-'END'
        * tab also triggers a snippet when applicable, and tab will allow "tabbing" through the snippet placeholders.'
        * place custom snippets in ~/.vim/myUltiSnippets/
        * CTRLL+ENTER / SHIFT+ENTER to insert newline when autocomplete window is open
      END
    end
  end

  category do
    id 'File Explorer / NerdTree'

    entry do
      command 'CMD+E'
      name 'Reveal current file in side bar file explorer'
    end

    entry do
      command 'j'
      name 'Move up'
    end

    entry do
      command 'k'
      name 'Move down'
    end

    entry do
      command 'enter'
      name 'Opens a file in new tab or jump to existing window if already open'
    end

    entry do
      command 's'
      name 'Opens a file in vertical split or jump to existing window if already open'
    end

    entry do
      command 'h'
      name 'Opens a file in horizontal split or jump to existing window if already open'
    end

    entry do
      command 'u'
      name 'Move up a directory'
    end

    entry do
      command 'o'
      name 'Expand sub-directory'
    end

    entry do
      command 'CD'
      name 'Set file explorer dir to Vim CWD'
    end

    entry do
      command 'cd'
      name 'Set Vim CWD to file explorer directory'
    end

    entry do
      command 'm'
      name 'Show menu of possible commands'
    end

  end

  category do
    id 'Command-P'

    entry do
      command 'ENTER'
      name 'While searching, opens the top hit in new tab or jump to existing window if already open'
    end

    entry do
      command 'c-s'
      name 'While searching, opens the top hit in a vertical split or jump to existing window if already open'
    end

    entry do
      command 'c-h'
      name 'While searching, opens the top hit in a horizontal split or jump to existing window if already open'
    end

    entry do
      command 'CMD+SHIFT+c'
      name 'While searching, refreshes the search results if files have changed on disk'
    end

    entry do
      command 'CTRL+c'
      name 'Kill slow search'
    end
  end

  category do
    id 'Javascript Support'
  end
  
  notes 'Created by Robert M. Münch, Saphirion AG, Switzerland'
end
