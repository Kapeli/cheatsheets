cheatsheet do
    title 'IntelliJ IDEA CheatSheet'               # Will be displayed by Dash in the docset list
    docset_file_name 'intellij_idea_cheatsheet'    # Used for the filename of the docset
    keyword 'idea intellij cheatsheet mac keymap default'             # Used as the initial search keyword (listed in Preferences > Docsets)
    # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

    introduction 'AN IDEA DEFAULT KEY MAP CHEAT SHEET'  # Optional, can contain Markdown or HTML

    # A cheat sheet must consist of categories
    category do
        id 'Remember these Shortcuts'  # Must be unique and is used as title of the category

        entry do
            command 'CMD+W'
            name 'Close window'
        end

        entry do
            command 'CTRL+SHIFT+SPACE'         # Optional
            name 'Smart code completion'    # A short name, can contain Markdown or HTML
        end
        entry do
            command 'SHIFT x2'
            name 'Search everywhere'
        end
        entry do
            command 'CMD + ENTER'
            name 'Show intention actions and quick-fixes'
        end
        entry do
            command 'CMD + N'
            command 'CTRL + ENTER'
            name 'Generate code'
        end
        entry do
            command 'CMD + P'
            name 'Parameter info'
        end
        entry do
            command 'OPT + CMD + UP'
            name 'Extend selection'
        end
        entry do
            command 'OPT + CMD + DOWN'
            name 'Shrink selection'
        end
        entry do
            command 'CMD + E'
            name 'Recent files popup'
        end
        entry do
            command 'SHIFT + F6'
            name 'Rename'
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
