cheatsheet do
    title 'Origami for Sublime Text'
    docset_file_name 'Origami_for_Sublime_Text'
    keyword 'origami'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Panes'

        entry do
            name 'Travel focus to adjacent pane'
            command 'CMD+K Arrow'
        end

        entry do
            name 'Carry current file to adjacent pane'
            command 'CMD+K SHIFT-Arrow '
        end

        entry do
            name 'Clone current file to adjacent pane'
            command 'CMD+K ALT-Arrow'
        end

        entry do
            name 'Create an adjacent pane'
            command 'CMD+K CMD-Arrow'
        end

        entry do
            name 'Destroy an adjacent pane'
            command 'CMD+K CMD-SHIFT-Arrow'
        end
    end

    category do
        id 'Zoom / Unzoom'

        entry do
            name 'Zoom on current pane'
            command 'CMD+K CMD+Z'
        end

        entry do
            name 'Unzoom and equally space all panes'
            command 'CMD+K CMD+SHIFT+Z'
        end

    end


  notes <<-'END'
    * Cheatsheet created by [Jacob Reiff](https://github.com/jaacob). [Origami for Sublime Text](https://github.com/SublimeText/Origami) is available via [Package Control](https://sublime.wbond.net/).
  END
end
