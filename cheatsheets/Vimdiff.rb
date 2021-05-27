cheatsheet do
  title 'Vimdiff'
  docset_file_name 'Vimdiff'
  keyword 'vimdiff'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Navigating'

    entry do
      command ']c'
      name 'Next difference'
    end
    entry do
      command '[c'
      name 'Previous difference'
    end
  end

  category do
    id 'Splits'
    entry do
      command 'CTRL-W='
      name 'Make splits equal size'
    end
    entry do
      command 'CTRL-W CTRL-W'
      name 'Cycle to the next split'
    end
  end

  category do
    id 'Editing'
    entry do
      command 'do'
      name 'Diff obtain'
      notes 'Pull the changes to the current file.'
    end
    entry do
      command 'dp'
      name 'Diff put'
      notes 'Push the changes to the other file.'
    end
    entry do
      command ':diffupdate'
      name 'diffupdate'
      notes 'Re-scan the files for differences.'
    end
    entry do
      command 'ZQ'
      name 'Quit'
      notes 'Quit without checking changes.'
    end
  end

  category do
    id 'Folds'
    entry do
      command 'zo/zO'
      name 'Open'
    end
    entry do
      command 'zc/zC'
      name 'Close'
    end
    entry do
      command 'za/zA'
      name 'Toggle'
    end
    entry do
      command 'zv'
      name 'Open folds for this line'
    end
    entry do
      command 'zM'
      name 'Close all'
    end
    entry do
      command 'zR'
      name 'Open all'
    end
    entry do
      command 'zm'
      name 'Fold more (`foldlevel += 1`)'
    end
    entry do
      command 'zr'
      name 'Fold less (`foldlevel -= 1`)'
    end
    entry do
      command 'zx'
      name 'Update folds'
    end
  end
end
