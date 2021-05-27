cheatsheet do
  title 'vimdiff'               # Will be displayed by Dash in the docset list
  docset_file_name 'vimdiff'    # Used for the filename of the docset
  keyword 'vimdiff'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Vimdiff cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Navigating'  # Must be unique and is used as title of the category

    entry do
      command ']c'         # Optional
      #command ''   # Multiple commands are supported
      name 'Next difference'    # A short name, can contain Markdown or HTML
      #notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
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
      name 'Fold more (foldlevel += 1)'
    end
    entry do
      command 'zr'
      name 'Fold less (foldlevel -= 1)'
    end
    entry do
      command 'zx'
      name 'Update folds'
    end
  end
end
