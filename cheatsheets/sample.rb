cheatsheet do
  title 'Sample'               # Will be displayed by Dash in the docset list
  docset_file_name 'Sample'    # Used for the filename of the docset
  keyword 'sample'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'My *awesome* cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Windows'  # Must be unique and is used as title of the category

    entry do
      command 'CMD+N'         # Optional
      command 'CMD+SHIFT+N'   # Multiple commands are supported
      name 'Create window'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'CMD+W'
      name 'Close window'
    end
  end

  category do
    id 'Code'
    entry do
      name 'Code sample'
      notes <<-'END'
        ```ruby
        sample = "You can include code snippets as well"
        ```
        Or anything else **Markdown** or HTML.
      END
    end
  end

  notes 'Some notes at the end of the cheat sheet'
end
