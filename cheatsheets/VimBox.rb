cheatsheet do
  title 'VimBox'
  docset_file_name 'VimBox'
  keyword 'vb'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Mac Key Commands'

    entry do
      command 'CMD+P'
      command 'CTRL+P'
      name 'Open anything and begin searching for file'
    end
    entry do
      command 'CMD+N'
      name 'New tab'
    end
    entry do
      command 'CMD+SHIFT+N'
      name 'New window'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'Reopen last closed tab'
    end
    entry do
      command 'CMD+W'
      name 'Close active tab'
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
      command 'CMD+Enter'
      name 'Distraction free full screen mode (enter/exit)'
    end
    entry do
      command 'CMD+E'
      name 'File explorer (NerdTree)'
    end
    entry do
      command 'CMD+SHIFT+['
      command 'CTRL+Tab'
      command 'SHIFT+Space'
      command 'SHIFT+Tab'
      name 'Previous tab'
    end
    entry do
      command 'CMD+SHIFT+]'
      command 'CTRL+SHIFT+Tab'
      command 'Space'
      command 'Tab'
      name 'Next tab'
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
      name 'Toggle spell check'
    end
    entry do
      command 'CMD+/'
      name 'Toggle comments (line or selection)'
    end
    entry do
      command 'CMD+SHIFT+M'
      name 'Format & indent entire file, restore cursor'
    end
    entry do
      command 'CMD+R'
      name 'Toggle quickfix list'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'Toggle error list'
    end
    entry do
      command 'CTRL+1'
      name 'Back to Vim navigation mode (Mega Escape)'
    end
    entry do
      command 'Tab'
      command 'Enter'
      name 'Accept highlighted autocomplete entry'
      notes <<-'END'
        * Tab also triggers a snippet when applicable, and tab will allow "tabbing" through the snippet placeholders
        * Place custom snippets in ~/.vim/myUltiSnippets/
        * `CTRL+Enter` / `SHIFT+Enter` to insert newline when autocomplete window is open
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
      command 'Enter'
      name 'Open a file in new tab or jump to existing window if already open'
    end

    entry do
      command 's'
      name 'Open a file in vertical split or jump to existing window if already open'
    end

    entry do
      command 'h'
      name 'Open a file in horizontal split or jump to existing window if already open'
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
      name 'Set file explorer directory to Vim `cwd`'
    end

    entry do
      command 'cd'
      name 'Set Vim `cwd` to file explorer directory'
    end

    entry do
      command 'm'
      name 'Show menu of possible commands'
    end

  end

  category do
    id 'Command-P'

    entry do
      command 'Enter'
      name 'While searching, opens the top hit in new tab or jumps to existing window if already open'
    end

    entry do
      command 'c-s'
      name 'While searching, opens the top hit in a vertical split or jumps to existing window if already open'
    end

    entry do
      command 'c-h'
      name 'While searching, opens the top hit in a horizontal split or jumps to existing window if already open'
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
      name 'Install or update configured plugin'
    end
    entry do
    	command ':PlugClean[!]'
      name 'Remove unused directories, `[!]` clean without prompt'
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
  
  notes '* Created by Robert M. Münch, Saphirion AG, Switzerland, based on [https://github.com/jordwalke/vimbox](https://github.com/jordwalke/vimbox).'
end
