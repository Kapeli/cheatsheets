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
      command 'CMD+P'         # Optional
      command 'CTRL+P'        # Multiple commands are supported
      name 'Open Anything and begin searching for file'    # A short name, can contain Markdown or HTML
    end
    entry do
      command 'CMD+N'
      name 'New Tab'
    end
    entry do
      command 'CMD+SHIFT+N'
      name 'New Window'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'Reopen Last Closed Tab'
    end
    entry do
      command 'CMD+W'
      name 'Close Active Tab'
    end
    entry do
      command 'CMD+S'
      name 'Save'
    end
    entry do
      command 'CMD+Z'
      name 'Undo'
    end
    entry do
      command 'CMD+SHIFT+Z'
      name 'Redo'
    end
    entry do
      command 'CMD+ENTER'
      name 'Distraction free full screen mode (enter/exit)'
    end
    entry do
      command 'CMD+E'
      name 'File explorer (NerdTree)'
    end
    entry do
      command 'CMD+SHIFT+['
      command 'CTRL+TAB'
      command 'SHIFT+SPACE'
      command 'SHIFT+TAB'
      name 'Prev Tab'
    end
    entry do
      command 'CMD+SHIFT+]'
      command 'CTRL+SHIFT+TAB'
      command 'SPACE'
      command 'TAB'
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
      command 'CMD+SHIFT+P'
      name 'Toggle Spell Check'
    end
    entry do
      command 'CMD+/'
      name 'Toggle Comments (line or selection)'
    end
    entry do
      command 'CMD+SHIFT+M'
      name 'Format & indent entire file, restore custor'
    end
    entry do
      command 'CMD+R'
      name 'Toggle quickfix list'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'Toggle Error List'
    end
    entry do
      command 'CTRL+1'
      name 'Back to VIM navigation mode (Mega Escape)'
    end
    entry do
      command 'TAB'
      command 'ENTER'
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
      command 'ENTER'
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
      command 'CMD+SHIFT+C'
      name 'While searching, refreshes the search results if files have changed on disk'
    end

    entry do
      command 'CTRL+C'
      name 'Kill slow search'
    end
  end

  category do
    id 'Bundles (vim-plug)'

    entry do
      command ':PlugUpgrade'
      name 'Check if a new version of vim-plug is available'
    end
    entry do
    	command ':PlugStatus'
      name 'Check the status of plugins'
    end
    entry do
    	command ':PlugInstall'
      name 'Install all specified plugins. Already installed are not re-installed, missing will be installed'
    end
    entry do
    	command ':PlugUpdate'
      name 'Install or Update configured plugin'
    end
    entry do
    	command ':PlugClean[!]'
      name 'Remove unused directories, [!] clean without prompt'
    end
    entry do
    	command ':PlugDiff'
      name 'Examine changes from the previous update and the pending changes'
    end
    entry do
    	command ':PlugSnapshot'
      name 'Generate script for restoring the current snapshot of the plugins'
    end
  end

# todo reminder
#  category do
#    id 'Javascript Support'
#  end
  
  notes 'See: https://github.com/jordwalke/vimbox'
  notes 'Created by Robert M. Münch, Saphirion AG, Switzerland'
end
