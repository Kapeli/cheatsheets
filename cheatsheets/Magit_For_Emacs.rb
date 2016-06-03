cheatsheet do
  title 'Emacs Magit'               # Will be displayed by Dash in the docset list
  docset_file_name 'Magit'    # Used for the filename of the docset
  keyword 'magit'             # Used as the initial search keyword (listed in Preferences > Docsets)

  introduction 'Cheat sheet for Emacs Magit mode'  # Optional, can contain Markdown or HTML

  category do
    id 'Section Movement'

    entry do
      command 'p'
      name 'Previous section'
    end

    entry do
      command 'n'
      name 'Next section'
    end

    entry do
      command 'P'
      name 'Previous sibling section'
    end

    entry do
      command 'N'
      name 'Next sibling section'
    end

    entry do
      command '^'
      name 'Parent section'
    end
  end

  category do
    id 'Section Visibility'

    entry do
      command 'TAB'
      name 'Toggle visibility of current section'
    end

    entry do
      command 'C-TAB'
      name 'Cycle visiblity of section and children'
    end

    entry do
      command 'M-TAB'
      name 'Cycle visibilty of diff-related sections'
    end

    entry do
      command 'S-TAB'
      name 'Cycle visibility of all sections in buffer'
    end
  end

  category do
    id 'Staging'

    entry do
      command ''
      name ''
    end
  end

  category do
    id 'Status/Diff/Log Buffer'

    entry do
      command ''
      name ''
    end
  end

  notes 'Some notes at the end of the cheat sheet'
end
